<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ProductsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('Id'))->sortable();
        $grid->column('title', __('商品名称'));
        $grid->column('description', __('描述'));

        $grid->column('on_sale', __('已上架'))
            ->display(function ($value)
            {
                return $value ? '是' : '否';
            });
        //$grid->column('rating', __('评级'));
        $grid->column('price', __('价格'))
            ->display(function ($price) {
        return "<span style='color:blue'>$price</span>";
    });
        $grid->column('productable_id',__('对应产品id'));
        $grid->column('productable_type',__('类型'));
        //$grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

        $grid->actions(function ($actions) {
            $actions->disableView();
            //禁用删除
            //$actions->disableDelete();
        });
        $grid->tools(function ($tools) {
            // 禁用批量删除按钮
            $tools->batch(function ($batch) {
                $batch->disableDelete();
            });
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));
        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('image', __('Image'));
        $show->field('on_sale', __('On sale'));
        $show->field('rating', __('Rating'));
        $show->field('price', __('Price'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    public function create(Content $content)
    {
        return $content
            ->header('创建商品')
            ->body($this->form());
    }

    public function edit($id, Content $content)
    {
        return $content
            ->header('编辑商品')
            ->body($this->form()->edit($id));
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Product());
        // 创建一个输入框，第一个参数 title 是模型的字段名，第二个参数是该字段描述
        $form->text('title', __('商品名称'))
            ->rules('required');
        $form->decimal('productable_id',__('对应产品id'));
        $form->select ('productable_type',__('产品类型'))
            ->options([
                'App\Models\Lens'=>'镜片',
                'App\Models\Frame'=>'镜架'
            ]);
        // 创建文本编辑器
        $form->textarea('description', __('商品描述'))
            ->rules('required');

        // 创建一个图片选择框
        $form->multipleImage('image', '图片')->removable()->sortable();


        // 创建一组单选框
        $form->switch('on_sale', __('上架'))
            ->options(['1' => '是', '0'=> '否'])
            ->default('0');

        // 直接添加一对多的关联模型
        $form->hasMany('sku', 'SKU 列表', function (Form\NestedForm $form) {
            $form->text('title', 'SKU 名称')->rules('required');
            $form->text('description', 'SKU 描述')->rules('required');
            $form->text('price', '单价')->rules('required|numeric|min:0.01');
        });

        // 定义事件回调，当模型即将保存时会触发这个回调
        $form->saving(function (Form $form) {
            $form->model()->price = collect($form->input('sku'))
                ->where(Form::REMOVE_FLAG_NAME, 0)
                ->min('price') ?: 0;
        });
        //$form->decimal('rating', __('Rating'))->default(5.00);
        return $form;
    }


}
