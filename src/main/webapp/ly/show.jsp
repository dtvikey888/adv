<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.adv.util.MysqlDB" %>
<%@ page import="java.sql.ResultSet" %>
<%
int id = new Integer(request.getParameter("id"));
    String tel,memo,fbsj,bz2;
    int bz=0;
    tel="";
    memo="";
    fbsj="";
    bz2="";

    try {
        MysqlDB db = new MysqlDB();
        String sql="select tel,memo,fbsj,type from ly where id="+id;
        ResultSet rs = db.executeQuery(sql);

        if (rs.next()){

            tel=rs.getString(1);
            memo=rs.getString(2);
            fbsj=rs.getString(3);
            bz = rs.getInt(4);
            if (bz==1){
                bz2="<font color=red>雁荡山</font>";
            }else{
                bz2="客运中心";
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>留言中心</title>
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
        <td height="140" align="center" valign="top" style="background:url(IMG/IMG_TOP.jpg) no-repeat top center; "><table width="100%" cellspacing="0" cellpadding="0">
            <tr>
                <td height="15" align="center" valign="middle">&nbsp;</td>
            </tr>
            <tr>
                <td height="25" align="center" valign="middle"><img src="IMG/logo.png" width="100%" height="160" /></td>
            </tr>
            <tr>
                <td align="center" valign="middle"><h1><%=bz2%>-留言建言</h1></td>
            </tr>
        </table></td>
    </tr>


    <tr>
        <td height="1" align="center" valign="top" >
            <table width="100%" cellspacing="10" cellpadding="0">

            <tr>
                <td width="26%" height="35" align="right" valign="middle">联系方式：</td>
                <td height="35"><%=tel%></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">内容：</td>
                <td height="35"><%=memo%></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">提交时间：</td>
                <td height="35"><%=fbsj%></td>
            </tr>

            </table>
        </td>
    </tr>


</table>
</form>
</body>
</html>