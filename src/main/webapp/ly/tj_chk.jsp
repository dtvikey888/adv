<%@ page import="com.adv.util.AdvTool" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String memo =  request.getParameter("memo");
    String tel  =  request.getParameter("tel");
    int type =1;


    AdvTool.wszl2(memo,tel,type);

    out.print("<script type=\"text/javascript\">alert('提交成功，请等待审核！');document.location.href='index.jsp';</script>");
//out.print("<script type=\"text/javascript\">alert('现在进入作品上传!');document.location.href='UP.jsp?openid="+openid+"';</script>");

%>
