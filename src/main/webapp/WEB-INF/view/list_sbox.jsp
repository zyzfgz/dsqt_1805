<%--
  Created by IntelliJ IDEA.
  User: py
  Date: 2018/11/6
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/jquery-1.7.2.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="Sbox">
        <c:forEach items="${skuList}" var="sku">
            <div class="list">
                <div class="img"><img src="images/img_4.jpg" alt=""></div>
                <div class="price">${sku.jg}</div>
                <div class="title">
                    <a target="_blank" href="toItemPage.do?skuId=${sku.id}&spuId=${sku.shpId}">${sku.skuMch}</a>
                </div>
            </div>
        </c:forEach>
    </div>

</body>
</html>
