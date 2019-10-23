<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
			<form action="BookSrvl?updateCart" method="post">
                <table class="table table-bordered">
                    <tr class="btn-success">
                        <th width="10">ลบ</th>
                        <th width="80">ลำดับที่</th>
                        <th>ชื่อหนังสือ</th>
                        <th width="80">ราคา</th>
                        <th width="80">จำนวน</th>
                        <th width="80">ราคารวม</th>
                    </tr>
                    
                    <c:forEach var="item" items="${cart.items}" varStatus="status">
                        <tr>
                            <td align="right">
                                <input type="checkbox" name="remove" value="${item.id}"
                                    <c:forEach var="isbn" items="${paramValues.remove}">
                                        <c:if test="${isbn == item.id}">
                                            checked="checked"
                                        </c:if>
                                    </c:forEach> 
                                />
                            </td>
                            <td align="center">
                                ${status.index + 1}
                            </td>
                            <td>
                                ${item.title}
                            </td>
                            <td align="right">
                                <fmt:formatNumber value="${item.price}" pattern="#,###.00" />
                            </td>
                            <td align="center">

                                <input type="hidden" name="isbn" value="${item.id}" />
                                
                                <c:choose>
                                    <c:when test="${not empty errors[item.id]}">
                                        <br /><font color="#FF0000">${errors[item.id]}</font>
                                    </c:when>
                                    <c:when test="${item.stock < item.amount}">
                                        <input type="text" name="amount" size="2" 
                                       value="${item.amount}" style="text-align: right" /><br />
                                        
                                        <font color="#FF0000">ไม่พอ สั่งได้ไม่เกิน ${item.stock}</font>
                                        <td align="right">
                                <fmt:formatNumber value="${item.price * item.amount}" pattern="#,###.00" />
                            </td>
                                    </c:when>
                                    <c:when test="${item.amount <= item.stock}">
                                        <input type="text" name="amount" size="2" 
                                       value="${item.amount}" style="text-align: right" /><br />
                                        <td align="right">
                                <fmt:formatNumber value="${item.price * item.amount}" pattern="#,###.00" />
                            </td>
                                    </c:when>
                                    <c:otherwise>
                                    	
                                    </c:otherwise>
                                </c:choose>
                            </td>
                           
                        </tr>
                    </c:forEach>
                    
                    
                    <tr>
                        <td colspan="5" align="right">
                           	 ราคารวมทั้งหมด
                        </td>
                        <td align="right">
                            <fmt:formatNumber value="${cart.totalPrice}" pattern="#,###.00" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="6">
                            <input type="button" value="กลับไปที่ผลการค้นหา" onclick="window.location='BookSrvl?showAllBook'" class="btn btn-primary"/>
                            <input type="submit" value="อัพเดทตะกร้า" class="btn btn-primary"/>
                            <input type="button" value="ดำเนินการสั่งซื้อ" onclick="window.location='BookSrvl?shipping';" class="btn btn-primary"/>
                        </td>
                    </tr>
                </table>
            </form>
		</div>
		</div>
	
            

    </body>
</html>