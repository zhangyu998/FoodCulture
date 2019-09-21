<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

    <style>
        .global{width:80%;height:3000px;margin:-20px auto;background-color: #faf2cc;}
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid navbar navbar-inverse navbar-fixed-top div1" >
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a<%-- class="icon"--%> class="navbar-brand" href="#"><img src="image/logo/coc1.jpg" width="25" height="25"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <%--
                          <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                --%>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">友情链接<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://www.ttmeishi.com">天天美食网</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="https://www.meishichina.com">美食天下</a></li>
                    </ul>
                </li>
                <li><a href="index.jsp">首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">精选菜系 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">中华菜谱</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">西餐</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><c:if test="${user.name!=null}">${user.name},欢迎您</c:if><%--${user.name},欢迎您--%></a></li>
                <li><a href="${pageContext.request.contextPath}/findUserByUsernameServlet?username=${user.username}">个人中心</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录/注册 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp">登录</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="regist.jsp">注册</a></li>

                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
<div class="global"></div>
</body>
</html>
