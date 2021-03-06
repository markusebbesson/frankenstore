<%-- 
    Document   : frankenlist
    Created on : 2014-maj-12, 11:05:20
    Author     : Ebbe
--%>

<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="beans.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FrankenStore: List of Frankens</title>
    </head>
    <body>
        <a href="store?action=logout">Logout</a>
        <c:if test="${profile.isAdmin()}">
            <a href="store?action=create_new_franken">Add new Franken</a>
        </c:if>
            
        <c:set var="frankenlist_xslt">
            <c:import url="frankenlist_xslt.xsl"/>
        </c:set>

        <x:transform xslt="${frankenlist_xslt}">
            ${frankenList.xml}
        </x:transform>
        <br><br>
        
        <c:set var="shoppingcart_xslt">
            <c:import url="shoppingcart_xslt.xsl"/>
        </c:set>

        <x:transform xslt="${shoppingcart_xslt}">
            ${shoppingCart.xml}
        </x:transform>
        
        <a href="store?action=checkout">Checkout</a>
        <a href="update_user.jsp">Update account details</a>
    </body>
</html>
