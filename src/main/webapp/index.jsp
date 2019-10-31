<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <script>
        function DataLength(fData)
        {
            var intLength=0
            for (var i=0;i<fData.length;i++)
            {
                if ((fData.charCodeAt(i) < 0) || (fData.charCodeAt(i) > 255))
                    intLength=intLength+2
                else
                    intLength=intLength+1
            }
            return intLength
        }
    </script>
</head>

<body>
<form name="form1" action="tj_chk.jsp" method="post">
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
                <td width="63%" align="right"><e>价目表</e> <e>遗失样版</e></td>
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
                        <td align="center"><div style="width:50px; height:50px; float:center; border-radius: 50%; border: 0px solid #eee; overflow: hidden; background-color:#900" > <img src="IMG/ico_01.png" /></div></td>
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
        <td height="1" align="center" valign="top" ><table width="100%" cellspacing="10" cellpadding="0">
            <tr>
                <td width="26%" height="35" align="right" valign="middle">登报人姓名：</td>
                <td width="74%" height="35" ><input name="xm" type="text"  size="24"  style="width:90%; height:30px;"/></td>
            </tr>
            <tr>
                <td width="26%" height="35" align="right" valign="middle">联系方式：</td>
                <td height="35"><input name="tel" type="text"  size="24"  style="width:90%; height:30px;"/></td>
            </tr>
            <tr>
                <td height="35" align="right" valign="middle">登报内容：</td>
                <td height="35"><input name="memo" type="text"  size="24"  style="width:90%; height:100px;"/></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="5" align="center" valign="top">&nbsp;</td>
    </tr>
    <tr>
        <td height="10" align="center" valign="top"><table width="90%" height="50" cellspacing="0" cellpadding="0" style="border-radius: 10px; background: #900;">
            <tr>
                <td align="center" valign="middle" onClick="document.form1.action='tj_chk.jsp';if(DataLength(form1.xm.value)<2){alert('请填写姓名');form1.xm.focus();return false};if(DataLength(form1.tel.value)<11){alert('请填写正确的手机号码');form1.tel.focus();return false};if(DataLength(form1.memo.value)<2){alert('请填写登报内容');form1.memo.focus();return false};document.form1.submit();">
                    <m>

                    <e>提 交</e>

                    </m>
                </td>
            </tr>
        </table></td>
    </tr>
</table>
</form>
</body>
</html>