<%@ page import="com.adv.util.AdvTool" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    String memo =  request.getParameter("memo");
    String xm   =  request.getParameter("xm");
    String tel  =  request.getParameter("tel");

    AdvTool.wszl(memo,xm,tel);

    out.print("<script type=\"text/javascript\">document.location.href='index.jsp';</script>");
//out.print("<script type=\"text/javascript\">alert('现在进入作品上传!');document.location.href='UP.jsp?openid="+openid+"';</script>");

%>
