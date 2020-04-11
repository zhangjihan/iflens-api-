<?php

namespace App\Admin\Controllers;

use App\Models\Lens;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class LensController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Models\Lens';


    public function index(Content $content)
    {
        return $content
            ->header('镜片列表')
            ->body($this->grid());
    }
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Lens());

        $grid->column('id', __('Id'));
        $grid->column('title', __('镜片名称'));
        $grid->column('price', __('指导价'));
        $grid->column('brand', __('品牌'));
        $grid->column('type', __('分类'));
        $grid->column('description', __('描述'));
        $grid->column('abbe', __('阿贝数'));
        $grid->column('transmittance', __('透光率'));
        $grid->column('refraction', __('折射率'));
        $grid->column('weight', __('重量'));
        $grid->column('membrane', __('膜层'));
        $grid->column('spherical', __('球面/非球面'));
        $grid->column('texture', __('材质'));
        $grid->column('country', __('产地'));
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
            ->header('创建镜片')
            ->body($this->form());
    }


    public function edit($id, Content $content)
    {
        return $content
            ->header('编辑镜片')
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
        $show = new Show(Lens::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('price', __('Price'));
        $show->field('brand', __('Brand'));
        $show->field('type', __('Type'));
        $show->field('description', __('Description'));
        $show->field('abbe', __('Abbe'));
        $show->field('transmittance', __('Transmittance'));
        $show->field('refraction', __('Refraction'));
        $show->field('weight', __('Weight'));
        $show->field('membrane', __('Membrane'));
        $show->field('spherical', __('Spherical'));
        $show->field('texture', __('Texture'));
        $show->field('country', __('Country'));
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
        $form = new Form(new Lens());

        $form->text('title', __('标题'));
        $form->decimal('price', __('Price'));
        $form->select('brand', __('品牌'))
            ->options(['zeiss'=>'蔡司','essilor'=>'依视路']);

        $form->textarea('description', __('Description'));
        $form->decimal('abbe', __('阿贝数'));
        $form->decimal('transmittance', __('透光率'));
        $form->decimal('refraction', __('折射率'));
        $form->decimal('weight', __('Weight'));
        $form->text('membrane', __('膜层'));

        $form->select('type', __('分类'))
            ->options(['0'=>'近视','1'=>'远视',])
            ->default('0');

        $form->radio('spherical', __('Spherical'))
            ->options(['0'=>'非球面','1'=>'球面'])
            ->default('0');

        $form->radio('texture', __('材质'))
            ->options(['0'=>'树脂','1'=>'玻璃'])
            ->default('0');

        $form->select('country', __('产地'))
            ->options(['0'=>'中国','1'=>'德国','2'=>'日本','3'=>'美国'])
            ->default('0');

        return $form;
    }
}
