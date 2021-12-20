<%-- 
    Document   : contact
    Created on : Mar 5, 2020, 10:51:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="/J3.L.P0017/css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="main">
                    <div class="main-left">
                        <h2>Contact</h2>
                        <h2>PHOTOGRAPHER</h2>
                        <div class="info">
                            <div class="info-left">
                                <p>Address:</p>
                                <p>City:</p>
                                <p>Country:</p><br>
                                <p>Tel:</p>
                                <p>Email:</p>
                            </div>
                            <div class="info-right">
                                <p>${contact.address}</p>
                                <p>${contact.city}</p>
                                <p>${contact.country}</p><br>
                                <p>${contact.phone}</p>
                                <p>${contact.email}</p>
                            </div>
                        </div>
                        <div class="map">
                            <img src="/J3.L.P0017/image/${contact.imgLink}" alt=""/>
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
