<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>监督建言-雁荡山景区</title>
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
        <td height="140" align="center" valign="top"><table width="100%" cellspacing="0" cellpadding="0">
            <tr>
                <td height="15" align="center" valign="middle">&nbsp;</td>
            </tr>
            <tr>
                <td height="25" align="center" valign="middle"><img src="IMG/logo.png" width="100%" height="160" /></td>
            </tr>
            <tr>
                <td align="center" valign="middle"><h1>监督建言-雁荡山景区</h1></td>
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
                        <td align="center"></td>
                    </tr>
                    <tr>
                        <td><table width="100%" cellspacing="5" cellpadding="0">
                            <tr>
                                <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最多跑一次”改革是习近平总书记以人民为中心的发展思想在浙江的生动实践，是新时代浙江推进“八八战略”再深化、改革开放再出发的牵动性举措，是高水平推进省域治理现代化的关键路径。2019年年初召开的浙江省委改革委第二次会议提出，要把人流密集的汽车站、火车站、景区等公共场所作为“最多跑一次”改革攻坚重点。雁荡山景区服务提升项目已向社会展示，欢迎大家批评监督，恳请大家继续为雁荡山景区服务大提升出好点子。</td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>

    <tr>11
        <td height="1" align="center" valign="top" ><table width="100%" cellspacing="10" cellpadding="0">

            <tr>
                <td height="35" align="right" valign="middle">留言区：</td>
                <td height="35"><input name="memo" type="text"  size="24"  style="width:90%; height:120px;"/></td>
            </tr>
            <tr>
                <td width="26%" height="35" align="right" valign="middle">联系方式：</td>
                <td height="35"><input name="tel" type="text"  size="24"  style="width:90%; height:30px;"/></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="5" align="center" valign="top">&nbsp;</td>
    </tr>
    <tr>
        <td height="10" align="center" valign="top"><table width="90%" height="50" cellspacing="0" cellpadding="0" style="border-radius: 10px; background: #900;">
            <tr>
                <td align="center" valign="middle" onClick="document.form1.action='tj_chk.jsp';if(DataLength(form1.memo.value)<2){alert('请填写留言');form1.memo.focus();return false};document.form1.submit();">
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