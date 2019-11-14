<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.adv.util.MysqlDB" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>《乐清日报》广告在线洽谈中心</title>
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
                <td height="25" align="center" valign="middle"><img src="IMG/Logo_yqrb.png" width="141" height="36" /></td>
            </tr>
            <tr>
                <td align="center" valign="middle"><h1>广告在线洽谈中心</h1></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="35" align="center" valign="bottom" bgcolor="#990000" ><table width="90%" height="30" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="37%" align="center" bgcolor="#DAD0A7">登报流程</td>
                <td width="63%" align="right">
                    <span style="background: #DAD0A7;padding:8px 20px;"><a href="price.jsp">价目表</a></span>

                    <span style="background: #DAD0A7;padding:8px 20px;">遗失样版</span>
                </td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="15" align="center" valign="middle" bgcolor="#dad0a7" ></td>
    </tr>
    <tr>
        <td align="center" valign="middle" bgcolor="#dad0a7" ><table width="95%" cellspacing="5" cellpadding="0">
            <tr>
                <td align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"><div onclick="window.open('index.jsp','_self')" style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900" ><img src="IMG/ico_01.png" /></div></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="center">我要<br />
                                    登报</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td align="center" valign="middle">→</td>
                <td align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900"> <img src="IMG/ico_02.png" /></div></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="center">填写<br />
                                    需求</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td align="center" valign="middle">→</td>
                <td align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900"> <img src="IMG/ico_03.png" /></div></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="center">专人<br />
                                    洽谈</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td align="center" valign="middle">→</td>
                <td align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900"> <img src="IMG/ico_04.png" /></div></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="center">审核<br />
                                    通过</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
                <td align="center" valign="middle">→</td>
                <td align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900"> <img src="IMG/ico_05.png" /></div></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="center">登报</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>


    <tr>
        <td height="1" align="center" valign="top" >
            <table width="100%" cellspacing="10" cellpadding="0">
            <tr>
                <td width="26%" height="35" valign="middle">姓名</td>
                <td width="26%" height="35" valign="middle">日期</td>
                <td width="26%" height="35" valign="middle">状态</td>
                <td width="26%" height="35" valign="middle">操作</td>
            </tr>
            </table>
        </td>
    </tr>
    <%
        try{
            MysqlDB db = new MysqlDB();
            String sql="select id,xm,tel,create_time,bz from adv";
            ResultSet rs= db.executeQuery(sql);
            String bz2="";
            while (rs.next()){
                int id=rs.getInt(1);
                String xm=rs.getString(2);
                String tel=rs.getString(3);
                String create_time=rs.getString(4);
                int bz = rs.getInt(5);
                if (bz==1){
                    bz2="<font color=red>通过</font>";
                }else{
                    bz2="待审";
                }
    %>
    <tr>
        <td height="1" align="center" valign="top" >
            <table width="100%" cellspacing="10" cellpadding="0">
                <tr>
                    <td width="25%" height="35" valign="middle"><a href="show.jsp?id=<%=id%>"><%=xm%></a></td>
                    <td width="25%" height="35" valign="middle"><a href="show.jsp?id=<%=id%>"><%=create_time%></a></td>
                    <td width="10%" height="35" valign="middle"><%=bz2%></td>
                    <td width="40%" height="35" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="bz_chk.jsp?id=<%=id%>&bz=<%=bz%>"><img src="IMG/ico_ve.png"  width="50px" height="50px"   alt="审核"></a>&nbsp;&nbsp;&nbsp;
                        <a href="tel:<%=tel%>"><img src="IMG/ico_tel.png" width="50px" height="50px"   alt="打电话"></a>

                    </td>
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