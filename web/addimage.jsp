<%-- 
    Document   : addimage
    Created on : Jun 6, 2024, 9:25:25 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add image detail!</h1>
        
        <form action="addimg" method="post" enctype="multipart/form-data">
            Select Image: <input type="file" name="image">
            <button type="submit">Add</button>
        </form>
        
        <%
        //String img = "img\\dulich.jpg";
        String img = session.getAttribute("displayFileName")+"";
        if(img.equals("null")) img = "";
        %>
        <p>img = <%=img%></p>
        <img src="<%=img%>" alt="alt"/>
    </body>
</html>
