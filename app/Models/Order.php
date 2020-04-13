<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $with="items";
    //订单状态
    const ORDER_STATUS_PENDING = 'pending';
    const ORDER_STATUS_APPLIED = 'applied';
    const ORDER_STATUS_PROCESSING = 'processing';
    const ORDER_STATUS_FINISH = 'finish';
    const ORDER_STATUS_CANCELLED = 'cancelled';

    //物流状态
    const SHIP_STATUS_PENDING = 'pending';
    const SHIP_STATUS_DELIVERED = 'delivered';
    const SHIP_STATUS_RECEIVED = 'received';

    //退款状态
    const REFUND_STATUS_PENDING = 'pending';
    const REFUND_STATUS_APPLIED = 'applied';
    const REFUND_STATUS_PROCESSING = 'processing';
    const REFUND_STATUS_SUCCESS = 'success';
    const REFUND_STATUS_FAILED = 'failed';

    public static $orderStatusMap = [
        self::ORDER_STATUS_PENDING => '等待接单',
        self::ORDER_STATUS_APPLIED => '商户接单',
        self::ORDER_STATUS_PROCESSING => '加工中',
        self::ORDER_STATUS_FINISH => '交易完成',
        self::ORDER_STATUS_CANCELLED => '已取消'
    ];

    public static $refundStatusMap = [


        self::REFUND_STATUS_PENDING => '无',

        self::REFUND_STATUS_APPLIED => '已申请退款',
        self::REFUND_STATUS_PROCESSING => '退款中',
        self::REFUND_STATUS_SUCCESS => '退款成功',
        self::REFUND_STATUS_FAILED => '退款失败',
    ];

    public static $shipStatusMap = [
        self::SHIP_STATUS_PENDING => '未发货',
        self::SHIP_STATUS_DELIVERED => '已发货',
        self::SHIP_STATUS_RECEIVED => '已收货',
    ];

    protected $fillable = [
        'no',
        'order_status',
        'address',
        'total_amount',

        'paid_at',

        'payment_no',
        'refund_status',
        'refund_no',
        'closed',


        'ship_status',
        'ship_data',

    ];

    protected $casts = [
        'closed' => 'boolean',

        'ship_data' => 'json',

    ];


    protected $dates = [
        'paid_at',
    ];

    protected static function boot()
    {
        parent::boot();
        // 监听模型创建事件，在写入数据库之前触发
        static::creating(function ($model) {
            // 如果模型的 no 字段为空
            if (!$model->no) {
                // 调用 findAvailableNo 生成订单流水号
                $model->no = static::findAvailableNo();
                // 如果生成失败，则终止创建订单
                if (!$model->no) {
                    return false;
                }
            }
            return true;
        });
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function items()
    {
        return $this->hasMany(OrderItem::class);
    }


    public static function findAvailableNo()
    {
        // 订单流水号前缀
        $prefix = date('YmdHis');
        for ($i = 0; $i < 10; $i++) {
            // 随机生成 6 位的数字
            $no = $prefix . str_pad(random_int(0, 999999), 6, '0', STR_PAD_LEFT);
            // 判断是否已经存在
            if (!static::query()->where('no', $no)->exists()) {
                return $no;
            }
        }
        \Log::warning('find order no failed');

        return false;
    }


    public static function getAvailableRefundNo()
    {
        do {
            // Uuid类可以用来生成大概率不重复的字符串
            $no = Uuid::uuid4()->getHex();
            // 为了避免重复我们在生成之后在数据库中查询看看是否已经存在相同的退款订单号
        } while (self::query()->where('refund_no', $no)->exists());

        return $no;
    }

}
