<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/11/5
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery-1.7.2.min.js"></script>
    <script>
        function findMiNiCart() {
            $.post("findMiNiCart.do",function(data){
                $("#MiNiCartDiv").html(data)
            })
            $("#MiNiCartDiv").show();
        }

        function outMiniCart(){
            $("#MiNiCartDiv").hide();
        }
    </script>
</head>
<body>
<div class="search">
    <div class="logo"><img src="./images/logo.jpg" alt=""></div>
    <div class="search_on">
        <div class="se">
            <input type="text" name="search" class="lf">
            <input type="submit" class="clik" value="搜索">
        </div>
        <div class="se">
            <a href="">取暖神奇</a>
            <a href="">1元秒杀</a>
            <a href="">吹风机</a>
            <a href="">玉兰油</a>
        </div>
    </div>
    <div class="card" onmouseover="findMiNiCart()" onmouseout="outMiniCart()">
        <a href="toCartListPage.do">购物车<div class="num">0</div></a>

        <!--购物车商品-->
        <div class="cart_pro" >
            <div id="MiNiCartDiv" style="display:none;"></div>
        </div>
    </div>
  </div>
</body>
</html>
