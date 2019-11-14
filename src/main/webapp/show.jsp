<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.adv.util.MysqlDB" %>
<%@ page import="java.sql.ResultSet" %>
<%
int id = new Integer(request.getParameter("id"));
    String xm,tel,memo,create_time,bz2;
    int bz=0;
    xm="";
    tel="";
    memo="";
    create_time="";
    bz2="";

    try {
        MysqlDB db = new MysqlDB();
        String sql="select xm,tel,memo,create_time,bz from adv where id="+id;
        ResultSet rs = db.executeQuery(sql);

        if (rs.next()){
            xm=rs.getString(1);
            tel=rs.getString(2);
            memo=rs.getString(3);
            create_time=rs.getString(4);
            bz = rs.getInt(5);
            if (bz==1){
                bz2="<font color=red>通过</font>";
            }else{
                bz2="待审";
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
                    <span style="background: #af7f54;padding:8px 20px;"><a href="price.jsp">价目表</a></span>

                    <span style="background: #af7f54;padding:8px 20px;">遗失样版</span>
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
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900" > <a
                                href="index.jsp"><img src="IMG/ico_01.png" /></a></div></td>
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
                <td width="26%" height="35" align="right" valign="middle">登报人姓名：</td>
                <td width="74%" height="35" ><%=xm%></td>
            </tr>
            <tr>
                <td width="26%" height="35" align="right" valign="middle">联系方式：</td>
                <td height="35"><%=tel%></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">登报内容：</td>
                <td height="35"><%=memo%></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">提交时间：</td>
                <td height="35"><%=create_time%></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">标志：</td>
                <td height="35"><%=bz2%></td>
            </tr>
            </table>
        </td>
    </tr>


</table>
</form>
</body>
</html>