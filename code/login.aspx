<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" type="text/css" href="style/css.css">
    <link rel="stylesheet" type="text/css" href="style/other.css">
    <meta name="keywords" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <meta name="description" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <link rel="shortcut icon" href="image/favicon.ico" />
    <title>�ռ�|��ѧ�������ռ�|��ѧ���໥������ͬ�ܶ���ƽ̨|˫�ֿƼ������ռ�|�����ռǵ�μ�¼���ܶ�����ÿһ��|����Ƽ���������</title>
    <style type="text/css">
        .style1
        {
            width: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="loginheader">
        <div class="t">
            <span><a href="index.aspx">�����ռ�</a></span>
        </div>
    </div>
    <!--ͷ������-->
    <div class="in">
        <dd class="mage">
        </dd>
        <dd class="log">
            <table width="450" border="0" cellspacing="8" cellpadding="0">
                <tr>
                    <td class="style1">
                        <div align="right">
                            �û�����</div>
                    </td>
                    <td width="146">
                        <label>
                            <input id="username" type="text" size="20" runat="server" />
                        </label>
                    </td>
                    <td width="147">
                        <a href="personal/registered.aspx">ע���˺ţ�</a>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <div align="right">
                            ���룺</div>
                    </td>
                    <td colspan="2">
                        <label>
                            <input id="secret" type="password" size="20" runat="server" />
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="��¼" OnClick="Unnamed1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="���" />
                    </td>
                </tr>
            </table>
            <dd>
    </div>
    <!--main����-->
    <div class="bq">
            <ul>
                <li>&copy;2013&nbsp;</li>
                <li><a href="http://www.shuangle.net" target="_blank">&nbsp;˫�ֿƼ�.</a></li>
                <li class="">&nbsp;&nbsp;All rights reserved. &nbsp; </li>
            </ul>
            <ul>
                <li><a href="http://www.miibeian.gov.cn/" target="_blank">ԥ ICP �� 13006843 ��-2</a></li>
                <li><a href="http://shuangle.net/Responsibility/about_kyrj_Responsibility.html" target="_blank">
                    &nbsp;��������&nbsp;&nbsp;&nbsp;</a></li>
                <li>��Ȩ����&nbsp;&nbsp;Υ��ؾ�</li></ul>
            <ul>
                <li>��ϵ���ǣ�service@shuangle.net&nbsp;&nbsp;</li>
                <li><a href="tencent://message/?uin=10972072&amp;Site=л�ȱ�&amp;Menu=yes">QQ��10972072</a></li></ul>
        </div>
    </form>
</body>
</html>
