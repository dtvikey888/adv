<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.adv.util.MysqlDB" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>留言管理</title>
    <style>
        body{font-size:14px;color:#4e4e4e; font-family:微软雅黑; background-color:#f0ede1; padding:0px;margin:0px; text-align:center; }
        a{text-decoration:none; color:#4e4e4e;}
        a:hover{text-decoration:none; color:#4e4e4e;}
        p{text-indent:2em;}
        h1{font-size:30px;}
        m{font-size:14px;line-height:20px; font-weight:bold; }
        c{font-family:Arial; color:#fd6a03;}
        d{color:#c3c3c3;}
        e{color:#ffffff;}
    </style>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="140" align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
            <tr>
                <td height="15" align="center" valign="middle">&nbsp;</td>
            </tr>
            <tr>
                <td height="25" align="center" valign="middle"><img src="IMG/logo.png" width="100%" height="160" /></td>
            </tr>
            <tr>
                <td align="center" valign="middle"><h1>留言中心管理</h1></td>
            </tr>
        </table></td>
    </tr>

    <tr>
        <td height="1" align="center" valign="top" >
            <table width="100%" cellspacing="10" cellpadding="0">
            <tr>
                <td width="25%" height="35" valign="middle">日期</td>
                <td width="25%" height="35" valign="middle">电话</td>
                <td width="25%" height="35" valign="middle">分类</td>
            </tr>
            </table>
        </td>
    </tr>
    <%
        try{
            MysqlDB db = new MysqlDB();
            String sql="select id,memo,tel,fbsj,type from ly order by fbsj desc";
            ResultSet rs= db.executeQuery(sql);
            String type2="";
            while (rs.next()){
                int id=rs.getInt(1);
                String memo=rs.getString(2);
                String tel=rs.getString(3);
                String fbsj=rs.getString(4);
                int type = rs.getInt(5);
                if (type==1){
                    type2="<font color=red>雁荡山</font>";
                }else{
                    type2="客运中心";
                }
    %>
    <tr>
        <td height="1" align="center" valign="top" >
            <table width="100%" cellspacing="10" cellpadding="0">
                <tr>
                    <td width="25%" height="35" valign="middle"><a href="show.jsp?id=<%=id%>"><%=fbsj%></a></td>
                    <td width="25%" height="35" valign="middle"><a href="show.jsp?id=<%=id%>"><%=tel%></a></td>
                    <td width="50%" height="35" valign="middle"><a href="show.jsp?id=<%=id%>"><%=type2%></a></td>
                </tr>
            </table>
        </td>
    </tr>
    <%
            }
            rs.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    %>
</table>

</body>
</html>