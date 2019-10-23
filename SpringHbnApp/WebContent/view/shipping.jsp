<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
    </head>
    <body>
    <div style="margin: 0 auto; width:100%">
		<div class="container">
            <!-- add your content here -->
            <b>สถานที่จัดส่ง</b><br /><br />
            <form action="ConfirmOrder" method="post">
                ที่อยู่<br />
                <textarea name="address" rows="4" cols="30"></textarea><br />
                <input type="submit" value="ยืนยันการสั่งซื้อ" />
            </form>
        </div>
        
        </div>
    </body>
</html>