<%-- 
    Document   : error
    Created on : Mar 8, 2020, 2:24:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="/J3.L.P0017/css/error.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="main">
                    <div class="main-left">
                        <h2>Error</h2>
                    </div>
                    <div class="main-right">
                        <jsp:include page="content-right.jsp"></jsp:include>
                    </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
