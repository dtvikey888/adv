<%@ page import="com.adv.util.AdvTool" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String memo =  request.getParameter("memo");
    String xm   =  request.getParameter("xm");
    String tel  =  request.getParameter("tel");

//    out.println(xm);
//    out.println(memo);
//    out.close();
    String msgtel="13706776231";
    //String msgtel="13588963940";

    AdvTool.wszl(memo,xm,tel,msgtel);

    out.print("<script type=\"text/javascript\">alert('您的需求提交成功了，请等待审核！');document.location.href='index.jsp';</script>");
//out.print("<script type=\"text/javascript\">alert('现在进入作品上传!');document.location.href='UP.jsp?openid="+openid+"';</script>");

%>
