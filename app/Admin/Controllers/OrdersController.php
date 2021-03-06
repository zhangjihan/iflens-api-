<?php

namespace App\Admin\Controllers;

use App\Models\Order;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use App\Exceptions\InvalidRequestException;
use App\Http\Controllers\Controller;
use App\Exceptions\InternalException;

class OrdersController extends Controller
{
    use HasResourceActions;
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Order';

    public function index(Content $content)
    {
        return $content
            ->header('订单列表')
            ->body($this->grid());
    }

    public function show($id, Content $content)
    {
        return $content
            ->header('查看订单')
            // body 方法可以接受 Laravel 的视图作为参数
            ->body(view('admin.orders.show', ['order' => Order::find($id)]));
    }



    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Order());
        // 只展示已支付的订单，并且默认按支付时间倒序排序
        $grid->model()->whereNotNull('paid_at')->orderBy('paid_at', 'desc');
        $grid->column('id', __('Id'));
        $grid->column('no', __('流水号'));
        // 展示关联关系的字段时，使用 column 方法
        $grid->column('user.name', '买家');
        $grid->column('user_id', __('用户 id'));

        $grid->column('product','订单产品')
            ->display(function (){
                //dd($this->items->product);
                $string =  "";
                foreach ($this->items as $val){
                    $string .="<span class='label label-success'> {$val->product['title']}</span>\n";
                }
                return $string ;
            });

        $grid->total_amount('总金额')->sortable();
        $grid->order_status('状态')->display(function($value) {
                $status = Order::$orderStatusMap[$value];
                return  "<span class='label label-warning'> {$status} </span>";
        });
        $grid->paid_at('支付时间')->sortable();
        $grid->ship_status('物流状态')->display(function($value) {
            $ship = Order::$shipStatusMap[$value];
            return "<span class='label label-warning'> {$ship} </span>";;
        });

        $grid->column('payment_no', __('支付单号'));
        $grid->refund_status('退款状态')->display(function($value) {
            return Order::$refundStatusMap[$value];
        });
        $grid->column('refund_no', __('退款单号'));

        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        // 禁用创建按钮，后台不需要创建订单
        $grid->disableCreateButton();
        $grid->actions(function ($actions) {
            // 禁用删除和编辑按钮
            $actions->disableDelete();
            $actions->disableEdit();
        });
        $grid->tools(function ($tools) {
            // 禁用批量删除按钮
            $tools->batch(function ($batch) {
                $batch->disableDelete();
            });
        });

        return $grid;
    }

    public function ship(Order $order, Request $request)
    {
        // 判断当前订单是否已支付
        if (!$order->paid_at) {
            throw new InvalidRequestException('该订单未付款');
        }
        // 判断当前订单发货状态是否为未发货
        if ($order->ship_status !== Order::SHIP_STATUS_PENDING) {
            throw new InvalidRequestException('该订单已发货');
        }
        // Laravel 5.5 之后 validate 方法可以返回校验过的值
        $data = $this->validate($request, [
            'express_company' => ['required'],
            'express_no'      => ['required'],
        ], [], [
            'express_company' => '物流公司',
            'express_no'      => '物流单号',
        ]);
        // 将订单发货状态改为已发货，并存入物流信息
        $order->update([
            'ship_status' => Order::SHIP_STATUS_DELIVERED,
            // 我们在 Order 模型的 $casts 属性里指明了 ship_data 是一个数组
            // 因此这里可以直接把数组传过去
            'ship_data'   => $data,
        ]);

        // 返回上一页
        return redirect()->back();
    }


    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('no', __('No'));
        $show->field('user_id', __('User id'));
        $show->field('order_status', __('Order status'));
        $show->field('address', __('Address'));
        $show->field('price', __('Total amount'));
        $show->field('paid_at', __('Paid at'));
        $show->field('payment_no', __('Payment no'));
        $show->field('refund_status', __('Refund status'));
        $show->field('refund_no', __('Refund no'));
        $show->field('ship_data', __('Ship_data'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Order());

        $form->text('no', __('No'));
        $form->number('user_id', __('User id'));
        $form->text('order_status', __('Order status'))->default('pending');
        $form->textarea('address', __('Address'));
        $form->decimal('price', __('Total amount'));
        $form->datetime('paid_at', __('Paid at'))->default(date('Y-m-d H:i:s'));
        $form->text('payment_no', __('Payment no'));
        $form->text('refund_status', __('Refund status'))->default('pending');
        $form->text('refund_no', __('Refund no'));
        $form->textarea('ship_data', 'Ship data');

        return $form;
    }
}
