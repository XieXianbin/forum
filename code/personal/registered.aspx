<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registered.aspx.cs" Inherits="registered" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/css.css" rel="stylesheet" type="text/css" />
    <link href="../style/other.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <meta name="description" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <link rel="shortcut icon" href="../image/favicon.ico" />
    <title>�ռ�|��ѧ�������ռ�|��ѧ���໥������ͬ�ܶ���ƽ̨|˫�ֿƼ������ռ�|�����ռǵ�μ�¼���ܶ�����ÿһ��|����Ƽ���������</title>
    <style type="text/css">
        .style1
        {
            width: 332px;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div id="header">
        <div id="top">
            <span></span>
            <div class="rtop">
                <div class="login" id="getIn">
                    <ul>
                        <li class="laber">�û�����</li>
                        <li class="inpu">
                            <input name="username" type="text" id="username" runat="server" accesskey="l" tabindex="1"
                                size="12" /></li>
                        <li class="laber">���룺</li>
                        <li class="inpu">
                            <input name="secret" type="password" id="secret" size="12" runat='server' /></li>
                        <li class="button">
                            <asp:Button ID="Button2" runat="server" Text="��¼" OnClick="Unnamed1_Click" /></li>
                        <li><a href="registered.aspx">ע��!</a></li>
                        <li><a href="getback.aspx">�һأ�</a></li>
                    </ul>
                </div>
                <div class="login" id="getedIn">
                    <ul>
                        <li class="laber">�û�����</li>
                        <li class="inpu" id="aa"><a href="user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a> </li>
                        <li class="inpu"><a href="../personal/user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a></li>
                        <li class="inpu"><a href="user.aspx?id=<%= Session["userName"].ToString() %>">��������</a></li>
                        <li>
                            <asp:LinkButton ID="LinkButton_logout" runat="server" OnCommand="LinkButton_logout_Command">�˳�</asp:LinkButton></li>
                    </ul>
                </div>
                <div class="word">
                    <marquee scrollamount="2">����д�Ĳ���һ�����£������Һ�ĳһȺ���Ѿ�ʧȥ��ʱ��!</marquee>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function test1() {
                var class1 = document.getElementById('aa');
                class1.style.position = "absolute";
                class1.style.left = "-1000px";
                class1.style.width = "0px";
                class1.style.height = "0px";


                if (class1.innerHTML == '<A href="user.aspx?id="></A>') {


                    class1 = document.getElementById('getedIn');
                    class1.style.position = "absolute";
                    class1.style.left = "-1000px";
                    class1.style.top = "-1000px";
                    class1.style.height = "40px";
                }
                else {
                    class1 = document.getElementById('getIn');
                    class1.style.position = "absolute";
                    class1.style.left = "-1000px";
                    class1.style.width = "0px";
                    class1.style.height = "0px";
                    class1.style.top = "-1000px";
                }
            }
            test1();
    
        </script>
        <div id="nav">
            <ul>
                <li><a href="../index.aspx">��ҳ</a><span></span></li>
                <li><a href="../diary/newdiary.aspx">�����ռ�</a><span></span></li>
                <li><a href="../diary/motdiary.aspx">��־�ռ�</a><span></span></li>
                <li><a href="../diary/feeldiary.aspx">�����ռ�</a><span></span></li>
                <li><a href="../diary/playup.aspx">�ܶ��ռ�</a><span></span></li>
                <li><a href="../news/sugreading.aspx">�Ƽ��Ķ�</a><span></span></li>
                <li><a href="personal.aspx">��������</a></li>
            </ul>
        </div>
    </div>
    <!--ͷ������-->
    <div id="banner">
    </div>
    <!--banner����-->
    <div class="main">
        <div class="mainl">
            <dl class="rjdl">
                <dt class="lx">
                    <ul>
                        <li><a href="../index.aspx">��վ��ҳ>></a></li>
                        <li><a href="registered.aspx">ע���˺�</a></li>
                    </ul>
                </dt>
                <dd>
                    <table width="600" border="0">
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    �û�����</div>
                            </td>
                            <td width="297">
                                <label>
                                    <input id="name" type="text" size="20" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
                                        ErrorMessage="*�������û���" Width="125px">*</asp:RequiredFieldValidator>
                                </label>
                            </td>
                            <td width="170">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ���룺</div>
                            </td>
                            <td>
                                <label>
                                    <%--<input id="secret" type="password" size="22" runat="server" />--%>
                                    <asp:TextBox ID="secret1" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="secret1"
                                        ErrorMessage="*����������" Width="99px" Display="Dynamic">*</asp:RequiredFieldValidator>
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ȷ�����룺</div>
                            </td>
                            <td>
                                <label>
                                    <%--<input name="rsecret" type="password" id="rsecret" size="22" runat="server" />--%>
                                    <asp:TextBox ID="rsecret" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*���벻һ��"
                                        Width="104px" ControlToCompare="secret1" ControlToValidate="rsecret" Display="Dynamic">*</asp:CompareValidator>
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    �Ա�</div>
                            </td>
                            <td>
                                <label>
                                    <input id="radiobutton1" type="radio" value="radiobutton" runat="server" name="aa" />
                                    ��
                                    <input type="radio" id="radiobutton2" value="radiobutton" runat="server" name="aa" />
                                    Ů</label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ��ʵ������</div>
                            </td>
                            <td>
                                <label>
                                    <input id="r_name" type="text" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ���䣺</div>
                            </td>
                            <td>
                                <label>
                                    <input id="age" type="text" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    �ڶ�ѧУ��</div>
                            </td>
                            <td>
                                <label>
                                    <input type="text" id="school" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    QQ��</div>
                            </td>
                            <td>
                                <label>
                                    <input type="text" id="qq" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    E-mail��</div>
                            </td>
                            <td>
                                <label>
                                    <input type="text" id="email" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ��ַ��</div>
                            </td>
                            <td>
                                <input id="address" type="text" size="40" runat="server" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ͷ��</div>
                            </td>
                            <td>
                                <label>
                                    <input type="file" id="headimage" size="20" runat="server" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                    ���˼�飺</div>
                            </td>
                            <td>
                                <label>
                                    <textarea id="personal" cols="40" rows="5" runat="server"></textarea>
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <div align="right">
                                </div>
                            </td>
                            <td>
                                <label>
                                    <asp:Button ID="Button1" runat="server" Text="ע��" OnClick="Button1_Click" />
                                    <input type="submit" name="Submit3" value="����" />
                                </label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </dd>
                <dd class="explain">
                    ע��˵���������ڱ���վע���˺ţ�Ĭ�ϳ�������ʹ������˵������淶ʹ���˺ţ���
                </dd>
            </dl>
        </div>
        <div class="mainr">
            <dl class="rjdl">
                <dt class="lx"><span>��ϵ����</span><a href="#">����>></a></dt>
                <dd>
                    QQ: 10972072</dd>
            </dl>
        </div>
    </div>
    <!--main����-->
    <div id="bottom">
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
    </div>
    </form>
</body>
</html>
