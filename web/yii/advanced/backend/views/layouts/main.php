<?php
use yii\helpers\Html;
use yii\widgets\Menu;
$this->beginPage()
?>
<!DOCTYPE html>
<html lang="zh-CN"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">

    <title>OneNian - BOSS</title>

    <!-- Bootstrap core CSS -->
    <link href="css/mainpage/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mainpage/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/mainpage/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<?php $this->beginBody() ?>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">OneNian BOSS</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Doc</a></li>
                <li><a href="#">Account</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="<?= \yii\helpers\Url::to(['user/index']);?>">用户面板 <span class="sr-only">(current)</span></a></li>
            <li><a href="#">用户分析</a></li>
            <li><a href="#">用户统计</a></li>
            <li><a href="#">用户营销</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="<?= \yii\helpers\Url::to(['nian/index']);?>">念头面板</a></li>
            <li><a href="">念头分析</a></li>
            <li><a href="">念头统计</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">系统配置</a></li>
            <li><a href="">系统消息</a></li>
          </ul>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div id="page-wrapper">
                <?= $content ?>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/mainpage/jquery.js"></script>
<script src="js/mainpage/bootstrap.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="js/mainpage/holder.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/mainpage/ie10-viewport-bug-workaround.js"></script>


<svg style="visibility: hidden; position: absolute; top: -100%; left: -100%;" preserveAspectRatio="none" viewBox="0 0 200 200" height="200" width="200"><defs></defs><text style="font-weight:bold;font-size:10pt;font-family:Arial, Helvetica, Open Sans, sans-serif;dominant-baseline:middle" y="10" x="0">200x200</text></svg></body></html>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>