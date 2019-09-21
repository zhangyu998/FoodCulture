<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>美食网</title>
    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style>
      .div1{
        box-shadow: darkgrey 0px 1px 10px 1px ;//边框阴影
      }
      .mid{height: 3000px;width:80%;margin: auto;margin-top: -20px}
      /*.icon{padding-left: 5px;margin-top:5px;padding-right: 5px}*/
      .mid-top{height:400px;width:100%;background-color: #2b542c}
      .mid-left{ height: 400px;width:277px;background-color: #1b6d85;float: left}
      .mid-lunbo{height: 400px;width:660px;float: left}
      .mid-right{height: 400px;width:278px;background-color: #1b6d85}


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

      .text{height: 50px;width: 100%;margin-top: 10px;}
      .text-left-1{width: 10%;height: 50px;float: left}
      .text-left-1-1{width: auto;height: auto;margin-left: 8px}

      .flaotframe{width: 100%;height: 700px;}


      .mid-line1-text p{
        margin-bottom: 20px;
        line-height:50px;
        font-size: 14px;
        text-align: center;
      }
      .mid-line img{cursor: pointer;transition: all 0.6s;}
      .mid-line img:hover{transform: scale(1.1);}
     /* hr{
        border: 0;

        height: 1px;

        background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
      }*/
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
              <li><a href="shequ.jsp">社区</a></li>
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
            <form class="navbar-form navbar-left">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="搜索">
              </div>
              <button type="submit" class="btn btn-default">搜索</button>
            </form>
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

 <div class="mid">
     <%--轮播图--%>
   <div id="carousel-example-generic" class="carousel slide div1" data-ride="carousel">
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
         <img src="image/lunbo/hsr.jpg" alt="红烧肉">
         <div class="carousel-caption">
           <h1>红烧肉</h1>
           <p>
             红烧肉是一道著名的大众菜肴，属于鲁菜。其以五花肉为制作主料，最好选用肥瘦相间的三层肉（五花肉）来做，做法多达二三十种。
           </p>
         </div>
       </div>
       <div class="item">
         <img src="image/lunbo/bj.jpg" alt="北京烤鸭">
         <div class="carousel-caption">
           <h1>北京烤鸭</h1>
           <p>
             烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。
             用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，
             而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。
           </p>
         </div>
       </div>
       <div class="item">
         <a href="#"> <img src="image/lunbo/hg.jpg" alt="重庆火锅"></a>
         <div class="carousel-caption">
           <h1>重庆火锅</h1>
           <p>
             重庆火锅，又称为毛肚火锅或麻辣火锅，是中国传统饮食方式，起源于明末清初的重庆嘉陵江畔、
             朝天门等码头船工纤夫的粗放餐饮方式，原料主要是牛毛肚、猪黄喉、鸭肠、牛血旺等。
           </p>
         </div>
       </div>
       <div class="item">
         <img src="image/lunbo/bqj.jpg" alt="白切鸡">
         <div class="carousel-caption">
           <h1>白切鸡</h1>
           <p>白切鸡又叫白斩鸡，是中国八大菜之一粤菜系鸡肴中的一种，始于清代的民间酒店。
             白切鸡通常选用细骨农家鸡与沙姜、蒜茸等食材，慢火煮浸后，晾干切块。
             成菜后，色洁白带油黄，皮爽肉滑骨香，清淡鲜美。
           </p>

         </div>
       </div>
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
       <hr>
         <div class="text">
             <div class="text-left-1 ">
               <div class="text-left-1-1">
                <a href="hotfood.jsp" target="main"><button type="button" class="btn btn-default">热门菜系</button></a>
               </div>
             </div>

           <div class="text-left-1 ">
             <div class="text-left-1-1">
               <a href="guesslike.jsp" target="main"><button type="button" class="btn btn-default">猜您喜欢</button></a>
             </div>
           </div>

           <div class="text-left-1 ">
             <div class="text-left-1-1">
               <a href="new.jsp" target="main"><button type="button" class="btn btn-default">最近上新</button></a>
             </div>
           </div>
         </div>
        <div class="flaotframe">
          <iframe src="hotfood.jsp" name="main" width="100%" height="700" scrolling="no" frameborder="0"></iframe>
        </div>
        <hr>
 </div>
  </body>
</html>
