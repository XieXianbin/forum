<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alter_per.aspx.cs" Inherits="alter_per" %>

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
</head>
<body>
    <form id="login" method="post" action="" runat="server">
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
        <div class="pmainr">
            <dl class="rjdl">
                <dt class="lx">
                    <ul>
                        <li><a href="../index.aspx">��վ��ҳ>></a></li>
                        <li><a href="personal.aspx">��������>></a></li>
                        <li><a href="alter_per.aspx">�޸�����</a></li>
                    </ul>
                </dt>
                <dd>
                    <table width="600" border="0">
                        <tr>
                            <td width="149">
                                <div align="right">
                                    �û�����</div>
                            </td>
                            <td width="297">
                                <% =Session["userName"] %>
                            </td>
                            <td width="170">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td width="149">
                                <div align="right">
                                    �������ڣ�</div>
                            </td>
                            <td width="297">
                                <% =ds_alter["u_regedit_time"].ToString() %>
                            </td>
                            <td width="170">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    ��ʵ������</div>
                            </td>
                            <td>
                                <input id="r_name" type="text" size="20" runat="server" />
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    �Ա�</div>
                            </td>
                            <td>
                                <input id="rb_man" name="radiobutton" type="radio" value="radiobutton" runat="server" />
                                ��
                                <input id="rb_wom" type="radio" name="radiobutton" value="radiobutton" runat="server" />
                                Ů
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    ���䣺</div>
                            </td>
                            <td>
                                <asp:TextBox ID="age" runat="server" size="20"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    �ڶ�ѧУ��</div>
                            </td>
                            <td>
                                <asp:TextBox ID="school" size="20" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    QQ��</div>
                            </td>
                            <td>
                                <asp:TextBox ID="qq" size="20" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    E-mail��</div>
                            </td>
                            <td>
                                <asp:TextBox ID="email" size="20" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    ��ַ��</div>
                            </td>
                            <td>
                                <asp:TextBox ID="address" size="20" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    ͷ��</div>
                            </td>
                            <td>
                                <input name="headimage" type="file" id="headimage" size="20" runat="server" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right" style="vertical-align: text-top">
                                    ���˼�飺</div>
                            </td>
                            <td>
                                <textarea id="personal" cols="40" rows="5" runat="server">ds_alter.Rows[0]["u_personal"].ToString()</textarea>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                </div>
                            </td>
                            <td>
                                <dd>
                                    <li>
                                        <asp:Button ID="submit" runat="server" Text="�޸�" OnClick="submit_Click" /></li>
                                    <li>
                                        <asp:Button ID="Button1" runat="server" Text="����" /></li>
                                </dd>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </dd>
            </dl>
        </div>
        <div class="pmainl">
            <dl class="rjdl">
                <dt class="lx"><span>��������</span></dt>
                <dd>
                    <ul>
                        <p>
                            <a href="write.aspx">д�ռ�</a></p>
                        <p>
                            <a href="manage_diary.aspx">�ռǹ���</a></p>
                        <p>
                            <a href="alter_per.aspx">�޸�����</a></p>
                        <p>
                            <a href="alter_secret.aspx">�޸�����</a></p>
                        <p>
                            <a href="logout.aspx">
                                <asp:LinkButton ID="LinkButton1_logout" runat="server" OnCommand="LinkButton1_logout_Command">�˳���¼</asp:LinkButton></a></p>
                    </ul>
                </dd>
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
