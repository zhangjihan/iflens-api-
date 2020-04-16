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

        $grid->column('id', __('Id'))->sortable();;
        $grid->column('title', __('镜片名称'));
        $grid->column('price', __('指导价'))
            ->sortable()
            ->display(function ($price) {
                return "<span style='color:blue'>$price</span>";
            });
        $grid->column('brand', __('品牌'))
            ->replace([
            'ZEISS'=> '蔡司',
            'Essilor'=> '依视路',
            'HOYA'=> '豪雅',
            'Rodenstock'=> '罗敦司得',
            'Seiko' =>'精工',
            'Shamir'=> '沙米尔',
            'Chemilens'=>'凯米',
            'Younger'=>'雅歌',
            'Transitions'=>'全视线',
            'Kodak'=> '柯达',
            'Nikon'=> '尼康',
            'Asahi'=> '朝日',
            'TOKAI' => '东海',
            'WX'=> '万新',
            'Conant'=>'康耐特',
            'Mingyue'=>'明月',
            'Norville'=>'诺威尔',
            'ITOH'=>'伊藤',
            'Nidek'=>'尼德克',
        ]);
        $grid->column('type', __('分类'))
            ->replace([
            '0'=>'单光镜片',
            '1'=>'渐进镜片',
            '2'=>'防蓝光镜片',
            '3'=>'太阳镜片',
            '4'=>'偏光镜片',
            '5'=>'运动镜片',
            '6'=>'变色镜片',
            '7'=>'染色镜片',
            '8'=>'定制镜片',
                '9'=>'成长乐镜片',
                '10'=>'驾驶型镜片',
                '11'=>'数码型镜片',
                '12'=>'菁悦活力镜片'
        ]);
        $grid->column('description', __('描述'));
        $grid->column('abbe', __('阿贝数'))->sortable();
        $grid->column('transmittance', __('透光率'))->sortable();;
        $grid->column('refraction', __('折射率'))->sortable();;
        $grid->column('weight', __('重量'));
        $grid->column('membrane', __('膜层'));
        $grid->column('spherical', __('spherical'))
            ->replace(['0'=>'非球面','1'=>'球面']);
        $grid->column('texture', __('材质'))
            ->replace([
            '0'=>'树脂',
            '1'=>'玻璃',
            '2'=>'PC',
            '3'=>'Trilogy',
        ]);
        $grid->column('country', __('国家'))
            ->replace([
            '0'=>'中国',
            '1'=>'德国',
            '2'=>'日本',
            '3'=>'美国',
            '4'=>'以色列',
            '5'=>'法国',
            '6'=>'韩国',
            '7'=>'英国',
        ]);
        //$grid->column('created_at', __('Created at'));
        //$grid->column('updated_at', __('Updated at'));



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
            ->options([
                'ZEISS'=> '蔡司',
                'Essilor'=> '依视路',
                'HOYA'=> '豪雅',
                'Rodenstock'=> '罗敦司得',
                'Seiko' =>'精工',
                'Shamir'=> '沙米尔',
                'Chemilens'=>'凯米',
                'Younger'=>'雅歌',
                'Transitions'=>'全视线',
                'Kodak'=> '柯达',
                'Nikon'=> '尼康',
                'Asahi'=> '朝日',
                'TOKAI' => '东海',
                'WX'=> '万新',
                'Conant'=>'康耐特',
                'Mingyue'=>'明月',
                'Norville'=>'诺威尔',
                'ITOH'=>'伊藤',
                'Nidek'=>'尼德克',
                ]);

        $form->textarea('description', __('Description'));
        $form->decimal('abbe', __('阿贝数'));
        $form->decimal('transmittance', __('透光率'));
        $form->decimal('refraction', __('折射率'));
        $form->decimal('weight', __('Weight'));
        $form->text('membrane', __('膜层'));

        $form->select('type', __('分类'))
            ->options([
                '0'=>'单光镜片',
                '1'=>'渐进镜片',
                '2'=>'防蓝光镜片',
                '3'=>'太阳镜片',
                '4'=>'偏光镜片',
                '5'=>'运动镜片',
                '6'=>'变色镜片',
                '7'=>'染色镜片',
                '8'=>'定制镜片',
                '9'=>'成长乐镜片',
                '10'=>'驾驶型镜片',
                '11'=>'数码型镜片',
                '12'=>'菁悦活力镜片'
                ])
            ->default('0');

        $form->radio('spherical', __('Spherical'))
            ->options(['0'=>'非球面','1'=>'球面'])
            ->default('0');

        $form->radio('texture', __('材质'))
            ->options([
                '0'=>'树脂',
                '1'=>'玻璃',
                '2'=>'PC',
                '3'=>'Trilogy',
            ])
            ->default('0');

        $form->select('country', __('国家'))
            ->options([
                '0'=>'中国',
                '1'=>'德国',
                '2'=>'日本',
                '3'=>'美国',
                '4'=>'以色列',
                '5'=>'法国',
                '6'=>'韩国',
                '7'=>'英国',
            ])
            ->default('0');

        return $form;
    }
}
