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
            <b>ลงชื่อเข้าใช้</b><br /><br />
            <form action="Login" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>ชื่อผู้ใช้</td>
                            <td><input type="text" name="username" value="${param.username}" /></td>
                        </tr>
                        <tr>
                            <td>รหัสผ่าน</td>
                            <td><input type="password" name="password" value="${param.password}" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit" value="เข้าใช้" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <c:if test="${not empty loginIncorrect}">
                <font color="#FF0000">${loginIncorrect}</font>
            </c:if>
        </div>
        </div>
    </body>
</html>