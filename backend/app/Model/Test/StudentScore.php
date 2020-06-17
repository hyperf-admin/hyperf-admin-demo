<?php
declare(strict_types = 1);
namespace App\Model\Test;

use HyperfAdmin\BaseUtils\Model\BaseModel;

/**
 * @property int $id
 * @property int $grade 年级
 * @property int $class 班级
 * @property int $subject 学科
 * @property int $score 分数
 * @property string $name 学生名称
 * @property int $sex 性别, 0女生, 1难受
 * @property \Carbon\Carbon $create_at 创建时间
 * @property \Carbon\Carbon $update_at 更新时间
 */
class StudentScore extends BaseModel
{
    protected $connection = 'local';
    protected $table = 'student_score';
    protected $database = 'test';
    protected $fillable = ['id', 'grade', 'class', 'subject', 'score', 'name', 'sex'];

    protected $casts = [
        'grade' => 'int',
        'class' => 'int',
        'subject' => 'int',
        'score' => 'int',
        'name' => 'string',
        'sex' => 'int',
    ];
}
