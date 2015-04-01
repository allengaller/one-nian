<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property integer $status
 * @property string $grade
 * @property string $level
 * @property integer $created_at
 * @property integer $updated_at
 */
class User extends \backend\components\base\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {
            if($insert){
                $this->password_hash = $this->ganeratePassword($this->password_hash);
            }
            return true;
        } else {
            return false;
        }
    }

    public function ganeratePassword($password)
    {
        return md5($password);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password_hash', 'email'], 'required'],
            [['status', 'created_at', 'updated_at'], 'integer'],
            [['username', 'password_hash', 'password_reset_token', 'email'], 'string', 'max' => 255],
            [['auth_key'], 'string', 'max' => 32],
            [['grade', 'level'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'username' => Yii::t('backend', 'Username'),
            'auth_key' => Yii::t('backend', 'Auth Key'),
            'password_hash' => Yii::t('backend', 'Password Hash'),
            'password_reset_token' => Yii::t('backend', 'Password Reset Token'),
            'email' => Yii::t('backend', 'Email'),
            'status' => Yii::t('backend', '状态: 0 注销 1 注册 2 拉黑'),
            'grade' => Yii::t('backend', '组别: 0 标准版 1 高级版'),
            'level' => Yii::t('backend', '级别: 1 2 3 4 5 6 7 8 9 10'),
            'created_at' => Yii::t('backend', 'Created At'),
            'updated_at' => Yii::t('backend', 'Updated At'),
        ];
    }
}
