<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/6
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="width:900px; margin:0px auto;">
<div style="width:900px; text-align:center">
    <h2>员工信息列表</h2>
</div>
<div style="width:880px; text-align:right; padding-right:20px; line-height:25px; height:25px;"><a href="#">添加员工信息</a>
</div>
<div style="width:900px; text-align:center">
    <form action="" method="post">
        部门名称：
        <select name="depid" id="depid">
            <option value="-1">-请选择部门名称--</option>
        </select>
        家庭地址：
        <input name="address" type="text" id="address" size="10"/>
        基本工资：
        <input name="min_bsaralry" type="text" id="min_bsaralry" size="10"/>
        到
        <input name="max_bsaralry" type="text" id="max_bsaralry" size="10"/>
        <input type="submit" name="btnSearch" id="btnSearch" value="查询员工"/>
    </form>
</div>
<div style="width:900px; text-align:center">
    <table width="900" border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td>工号</td>
            <td>姓名</td>
            <td>基本工资</td>
            <td>入职日期</td>
            <td>家庭地址</td>
            <td>所属部门</td>
            <td>详细</td>
            <td>删除</td>
            <td>修改</td>
        </tr>

        <c:if test="${requestScope.empList!=null}">
            <c:forEach items="${requestScope.empList}" var="emp">
                <tr>
                    <td>${emp.empid}</td>
                    <td>${emp.empname}</td>
                    <td>${emp.bsaralry}</td>
                    <td><fmt:formatDate value="${emp.hiredate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                    <td>${emp.address}</td>
                    <td>${emp.depid}</td>
                    <td><a href="#">详细</a></td>
                    <td><a href="#">删除</a></td>
                    <td><a href="#">修改</a></td>
                </tr>
            </c:forEach>
        </c:if>
        <tr>
            <td colspan="9" align="center" valign="middle"><a href="#">首页</a>上一页下一页<a href="#">末页</a></td>
        </tr>
    </table>
</div>
</body>
</html>
