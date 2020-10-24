<?php
declare(strict_types=1);
namespace App\Controller;

use App\Model\Test\StudentScore;
use HyperfAdmin\Admin\Controller\AdminAbstractController;

class StudentScoreController extends AdminAbstractController
{
    public $model_class = StudentScore::class;

    public function scaffoldOptions()
    {
        return [
            'filter' => [
                'grade',
                'class',
                'subject',
                'name%',
                'score|分数' => [
                    'type' => 'input-range',
                    'select_type' => 'between',
                ],
            ],
            'form' => [
                'id|#' => '',
                'grade|年级' => [
                    'type' => 'select',
                    'options' => [
                        1 => '一年级',
                        2 => '二年级',
                    ],
                ],
                'class|班级' => [
                    'type' => 'select',
                    'options' => [
                        1 => '一班',
                        2 => '二班',
                    ],
                ],
                'subject|学科' => [
                    'type' => 'select',
                    'options' => [
                        1 => '语文',
                        2 => '数学',
                    ],
                ],
                'score|分数' => [
                    'type' => 'number',
                ],
                'name|学生名称' => [
                    'rule' => 'required|max:10',
                ],
                'sex|性别' => [
                    'type' => 'select',
                    'options' => [
                        0 => '女',
                        1 => '男',
                    ],
                    'default' => 0,
                ],
            ],
            'table' => [
                'tabs' => [
                    [
                        'label' => '语文',
                        'value' => 1,
                        'icon' => 'el-icon-s-grid',
                    ],
                    [
                        'label' => '数学',
                        'value' => 2,
                        'icon' => 'el-icon-s-grid',
                    ],
                ],
                'columns' => [
                    ['field' => 'grade', 'enum' => ['info', 'primary',]],
                    ['field' => 'class', 'enum' => ['info', 'primary',]],
                    ['field' => 'subject', 'enum' => ['info', 'primary',]],
                    'score',
                    'name',
                    ['field' => 'sex', 'enum' => ['info', 'primary',]],
                ],
                'rowActions' => [
                    [
                        'type' => 'jump',
                        'target' => '/studentscore/{id}',
                        'text' => '编辑',
                    ],
                    [
                        'type' => 'api',
                        'target' => '/studentscore/delete',
                        'text' => '删除',
                        'props' => [
                            'type' => 'danger',
                        ],
                    ],
                ],
            ],
        ];
    }
}
