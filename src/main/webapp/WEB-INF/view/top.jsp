<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/11/5
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.7.2.min.js"></script>
    <script>
       $(function () {
               var yhMch= getCookieByKey("yhMch");
               $("#yhMch_span").html("zs");
       })
        function getCookieByKey(key){
           var val="";
          var ck= document.cookie;
             ck= ck.replace("" ,"");
             var ckarr=ck.split(";");
             for(var i=0;i<ckarr.length;i++){
                var arr= ckarr[i].split("=");
                if(arr[0]==key){
                    val=arr[1];
                }
             }
             return val;
        }
    </script>
</head>
<body>
    <div class="top">
        <div class="top_text">
            <c:if test="${empty user}">
                <a href="/toLogin.do">用户登录:<span id="yhMch_span"></span></a>
                <a href="">用户注册</a>
            </c:if>
           <c:if test="${!empty user}">
               <a href="/toLogin.do">用户名：${user.yhMch}</a>
               <a href="/loginOut.do">注销</a>
           </c:if>

        </div>
    </div>
    <div class="top_img">
        <img src="./images/top_img.jpg" alt="">
    </div>
</body>
</html>
