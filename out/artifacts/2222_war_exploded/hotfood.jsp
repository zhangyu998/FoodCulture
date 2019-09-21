    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>
    <head>
        <title>Title</title>
        <!-- 1. 导入CSS的全局样式 -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
        <script src="js/jquery-2.1.0.min.js"></script>
        <!-- 3. 导入bootstrap的js文件 -->
        <script src="js/bootstrap.min.js"></script>
        <style>
            .div1{width: 100%;height: 700px;margin: auto;}
            .div1-1{height: 350px;width:33%;float: left;}
            .div1-2{height: 350px;width:33%;float: left;margin-left:6px}
            .div1-3{height: 350px;width:33%;float: right}

            .div1-1-img{ margin:auto;width:300px;height: 300px}
            .div1-1-text{height: 100px;width: 100%}

            .div1 p{text-align: center;line-height: 50px;font-size: 25px;}
            .div1 img{
                cursor: pointer;transition: all 0.6s;
            }
            .div1 img:hover{
                transform: scale(1.1);
            }
        </style>
    </head>
    <body>
        <div class="div1">
            <div class="div1-1">
                <div class="div1-1-img">
                    <img class="img-rounded" src="image/hotfood/ksj.jpeg"height="300" width="300">
                </div>
                <div class="div1-1-text"><p>口水鸡</p></div>
            </div>
            <div class="div1-2">
                <div class="div1-1-img">
                    <img class="img-rounded" src="image/hotfood/nrs.jpg"height="300" width="300">
                </div>
                <div class="div1-1-text"><p>牛肉丝</p></div>
            </div>
            <div class="div1-3">
                    <div class="div1-1-img">
                        <img class="img-rounded" src="image/hotfood/pg.jpeg"height="300" width="300">
                    </div>
                <div class="div1-1-text"><p>酱香排骨</p></div>
            </div>
            <div class="div1-1">
                <div class="div1-1-img">
                    <img class="img-rounded" src="image/hotfood/gljr.jpg"height="300" width="300">
                </div>
                <div class="div1-1-text"><p>咖喱鸡肉</p></div>
            </div>
            <div class="div1-2">
                <div class="div1-1-img">
                    <img class="img-rounded" src="image/hotfood/dhs.jpg"height="300" width="300">
                </div>
                <div class="div1-1-text"><p>蛋黄酥</p></div>
            </div>
            <div class="div1-3">
                <div class="div1-1-img">
                    <img class="img-rounded" src="image/hotfood/ss.jpg"height="300" width="300">
                </div>
                <div class="div1-1-text"><p>寿司</p></div>

            </div>
        </div>
    </body>
    </html>
