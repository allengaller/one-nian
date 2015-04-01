<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Nian */

$this->title = Yii::t('backend', 'Create Nian');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Nians'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nian-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
