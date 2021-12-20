<%-- 
    Document   : home
    Created on : Feb 19, 2020, 11:38:06 PM
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
        <title>Home</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="main">
                    <div class="main-left">
                        <div class="main-img">
                            <img src="/J3.L.P0017/image/${intro.imgLink}" alt=""/>
                            <p>${intro.title}</p>
                        </div>
                        <div class="main-view">
                            <c:forEach items="${list}" var="i">
                            <div class="view">
                                <div class="view-img">
                                    <img src="/J3.L.P0017/image/${i.imgLink}" alt=""/> 
                                </div>
                                <a href="gallery?id=${i.id}">View Gallery ${i.id}</a>
                                <p>${i.description}</p>                    
                            </div>
                        </c:forEach>
                        </div>
                        <div class="main-about">
                            <h2>About me</h2>
                            <p>${intro.about}</p>
                        </div>
                    </div>
                    <div class="main-right">
                        <jsp:include page="content-right.jsp"></jsp:include>
                    </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
