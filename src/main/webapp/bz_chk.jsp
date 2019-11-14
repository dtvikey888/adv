<%@ page import="com.adv.util.AdvTool" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    int id  =  new Integer(request.getParameter("id"));
    int bz  =  new Integer(request.getParameter("bz"));


    AdvTool.confirm(id,bz);

    out.print("<script type=\"text/javascript\">document.location.href='list.jsp';</script>");
//out.print("<script type=\"text/javascript\">alert('现在进入作品上传!');document.location.href='UP.jsp?openid="+openid+"';</script>");

%>
