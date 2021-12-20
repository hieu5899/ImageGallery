<%-- 
    Document   : gallery
    Created on : Mar 5, 2020, 10:49:29 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="/J3.L.P0017/css/style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gallery</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="main">
                    <div class="main-left">
                        <div class="slide-show">
                            <div id="mySlides" class="mySlides">
                            <c:forEach items="${requestScope.listPicture}" var="i">
                                <img class="imgList" src="/J3.L.P0017/image/${i.imgLink}" alt=""/>
                            </c:forEach>
                        </div>
                            <div id="PlayBtn">
                                <button id="Play">Play</button>
                            </div>
                    </div>
                    <div class="gallery">
                        <c:forEach items="${requestScope.listPicture}" var="i">
                            <div class="gallery-2">
                                <img class="imgList2" src="/J3.L.P0017/image/${i.imgLink}" alt=""/>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="main-right">
                    <jsp:include page="content-right.jsp"></jsp:include>
                    </div>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
    <script src="/J3.L.P0017/js/index.js" type="text/javascript"></script>
</html>
