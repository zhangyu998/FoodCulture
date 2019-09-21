<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>佛山消费数据分析系统</title>
    <!-- Bootstrap -->
    <link href="js/bootstrap.min.js" rel="stylesheet">
    <style>
        body {
            padding-top: 50px
        }

        .carousel {
            height: 500px;
            background-color: black;
        }

        .carousel .item {
            height: 500px;
            background-color: black;
        }

        .carousel .item img {
            height: 500px;
            width: 100%;
        }

        .carousel-caption p {
            margin-bottom: 20px;
            line-height: 1.8;
            font-size: 14px;

        }
    </style>

</head>

<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">佛山消费数据分析系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">综述 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">简述</a></li>
                <li><a href="#">关于</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">特点 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Chrome</a></li>
                        <li><a href="#">FireFox</a></li>
                        <li><a href="#">Opera</a></li>
                        <li><a href="#">IE</a></li>
                        <li><a href="#">Safari</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="image/coc1.jpg" alt="千灯湖">
            <div class="carousel-caption">
                <h1>千灯湖</h1>
                <p>
                    千灯湖位于广东省佛山市南海区桂城街道，其美景吸引了大批地市民前来观赏，为南海区地标城市景观建设赢得赞誉。
                </p>
            </div>
        </div>
        <div class="item">
            <img src="image/coc2.jpg" alt="世纪莲">
            <div class="carousel-caption">
                <h1>世纪莲</h1>
                <p>佛山世纪莲体育中心是中国广东省佛山市的一个体育场馆。当年它曾作为广东省第十二届运动会的配套设施兴建，也是佛山东平新城的地标建筑。</p>
            </div>
        </div>
        <div class="item">
            <img src="image/coc3.jpg" alt="西樵山">
            <div class="carousel-caption">
                <h1>西樵山</h1>
                <p>西樵山，是一座具有四五千万年历史的死火山，其总面积14平方公里，共有72峰，主峰346米。位于中国广东省佛山市南海区的西南部，是国家重点风景名胜区、国家森林公园和国家地质公园。
                </p>
            </div>
        </div>
        <div class="item">
            <img src="image/coc1.jpg" alt="佛山索菲特">
            <div class="carousel-caption">
                <h1>佛山索菲特</h1>
                <p>佛山罗浮宫索菲特酒店位于顺德，提供健身中心、花园、免费WiFi以及带露台的客房。
                    这家酒店提供豪华而现代的客房,每日供应自助早餐。客人可在酒店内的餐厅用餐，供应丰盛的亚洲美食。
                </p>

            </div>
        </div>
        ...
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">上一页</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">下一页</span>
    </a>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="jquery-3.4.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap.min.js"></script>
</body>

</html>
