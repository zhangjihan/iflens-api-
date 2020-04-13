<?php

namespace App\Admin\Controllers;

use App\Models\Frame;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class FrameController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Frame';

    public function index(Content $content)
    {
        return $content
            ->header('镜架列表')
            ->body($this->grid());
    }
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Frame());

        $grid->column('id', __('Id'));
        $grid->column('title', __('镜架名称'));
        $grid->column('brand', __('品牌'));
        $grid->column('type', __('分类'));
        $grid->column('texture', __('材质'));
        $grid->column('rim', __('边框'));
        $grid->column('nosePads', __('鼻托'));
        $grid->column('dimension', __('尺寸'));
        $grid->column('weight', __('重量'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        $grid->tools(function ($tools) {
            // 禁用批量删除按钮
            $tools->batch(function ($batch) {
                $batch->disableDelete();
            });
        });
        return $grid;
    }

    public function create(Content $content)
    {
        return $content
            ->header('创建镜架')
            ->body($this->form());
    }


    public function edit($id, Content $content)
    {
        return $content
            ->header('编辑镜架')
            ->body($this->form()->edit($id));
    }
    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Frame::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('brand', __('Brand'));
        $show->field('type', __('Type'));
        $show->field('texture', __('Texture'));
        $show->field('rim', __('Rim'));
        $show->field('nosePads', __('NosePads'));
        $show->field('dimension', __('Dimension'));
        $show->field('weight', __('Weight'));
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
        $form = new Form(new Frame());

        $form->text('title', __('标题'));
        $form->select('brand', __('品牌'))
        ->options([
            '0'=>'蔡司',
            '1'=>'依视路',
            '2'=>'李维斯',
            '3'=>'夏蒙',
            '4'=>'宝岛',
            '5'=>'暴龙',
            '6'=>'九十木'
        ]);

        $form->select('type', __('分类'))
            ->options([
                '1'=>'近视镜',
                '2'=>'远视镜' ,
                '3'=>'防蓝光',
                '4'=>'泳镜',
            ]);
        $form->select('texture', __('材质'))
            ->options(['0'=>'合金','1'=>'塑料','2'=>'板材'])
            ->default('1');
        $form->select('rim', __('Rim'))
            ->options([
                '0'=>'圆形全框',
                '1'=>'圆形半框',
                '2'=>'方形全框',
                '3'=>'方形半框',
                '4'=>'眉线框',
            ]);
        $form->switch('nosePads', __('鼻托'))
            ->options(['0'=>'无鼻托','1'=>'有鼻托'])
            ->default('1');
        $form->text('dimension', __('三维'));
        $form->decimal('weight', __('重量'));

        return $form;
    }
}
