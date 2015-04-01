<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "nian".
 *
 * @property integer $id
 * @property integer $uid
 * @property string $name
 * @property integer $star
 * @property integer $grade
 * @property integer $status
 * @property integer $duration
 * @property integer $created
 * @property integer $modified
 */
class Nian extends \backend\components\base\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'nian';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'uid', 'name', 'created', 'modified'], 'required'],
            [['id', 'uid', 'star', 'grade', 'status', 'duration', 'created', 'modified'], 'integer'],
            [['name'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', '念头ID'),
            'uid' => Yii::t('backend', '用户ID'),
            'name' => Yii::t('backend', '念头名称'),
            'star' => Yii::t('backend', '关注念　0 否　1 是'),
            'grade' => Yii::t('backend', '级别: 0 标准版　1 高级版'),
            'status' => Yii::t('backend', '状态:  0 已删除 1 关闭 2 列队待办 3 进行中 4 已完成 5 拖延'),
            'duration' => Yii::t('backend', '念头时长'),
            'created' => Yii::t('backend', 'Created'),
            'modified' => Yii::t('backend', 'Modified'),
        ];
    }
}
