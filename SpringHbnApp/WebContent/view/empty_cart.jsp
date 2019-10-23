<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <!-- add the page title here -->
        <title>${initParam.shopName} - ตะกร้าสินค้า</title>
        <link rel="stylesheet" href="../css/view.css" type="text/css" /> 
    </head>
    <body>

        <div id="content">
            <!-- add your content here -->
            <b>ตะกร้าสินค้า ว่างเปล่า</b><br /><br />
            
            <a href="SearchResult?keyword=${keyword}&page_no=${pageNo}">กลับไปที่ผลการค้นหา</a>
        </div>
 
    </body>
</html>