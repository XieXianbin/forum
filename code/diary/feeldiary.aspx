<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feeldiary.aspx.cs" Inherits="feeldiary" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/other.css" rel="stylesheet" type="text/css" />
    <link href="../style/css.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <meta name="description" content="�����ռǵ�μ�¼���ܶ�����ÿһ��,�������¶�̬,�����ռ���,�йؿ��е����¶�̬,��ѧ�������ռ�,˫�ֿƼ������ռ�,,����Ƽ���������,˫�ֿƼ�רע����ѧ������Ҫ����վ" />
    <link rel="shortcut icon" href="../image/favicon.ico" />
    <title>�ռ�|��ѧ�������ռ�|��ѧ���໥������ͬ�ܶ���ƽ̨|˫�ֿƼ������ռ�|�����ռǵ�μ�¼���ܶ�����ÿһ��|����Ƽ���������</title>
</head>
<body>
    <form id="form1" runat="server">
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
                            <asp:Button ID="Button1" runat="server" Text="��¼" OnClick="Unnamed1_Click" /></li>
                        <li><a href="../personal/registered.aspx">ע��!</a></li>
                        <li><a href="../personal/getback.aspx">�һأ�</a></li>
                    </ul>
                </div>
                <div class="login" id="getedIn">
                    <ul>
                        <li class="laber">�û�����</li>
                        <li class="inpu" id="aa"><a href="../personal/user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a> </li>
                        <li class="inpu"><a href="../personal/user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a></li>
                        <li class="inpu"><a href="../personal/user.aspx?id=<%= Session["userName"].ToString() %>">
                            ��������</a></li>
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


                if (class1.innerHTML == '<A href="../personal/user.aspx?id="></A>') {


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
                <li><a href="newdiary.aspx">�����ռ�</a><span></span></li>
                <li><a href="motdiary.aspx">��־�ռ�</a><span></span></li>
                <li><a href="feeldiary.aspx">�����ռ�</a><span></span></li>
                <li><a href="playup.aspx">�ܶ��ռ�</a><span></span></li>
                <li><a href="../news/sugreading.aspx">�Ƽ��Ķ�</a><span></span></li>
                <li><a href="../personal/personal.aspx">��������</a></li>
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
                        <li><a href="feeldiary.aspx">�����ռ�</a></li>
                    </ul>
                </dt>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <dd class="bigdd">
                            <li class="image"></li>
                            <li class="author"><a href='../personal/user.aspx?id=<%#Eval("u_name") %>'>
                                <%#Eval("u_name")%></a></li>
                            <li class="title"><a href='../diary/diary_view_p.aspx?id=<%#Eval("d_id") %>'>
                                <%#Eval("d_title")%></a></li>
                            <li class="time">
                                <%#Eval("d_time")%></li>
                        </dd>
                        <dd class="text">
                            <%#  SqlHelper.SubString(Eval("d_text").ToString(),100) %>
                        </dd>
                        <dd class="lastList">
                            <ul>
                                <li>
                                    <asp:LinkButton ID="LinkButton1" CommandName="id" CommandArgument='<%# Eval("d_id") %>'
                                        runat="server" OnCommand="LinkButton1_Command">��(<%# Eval("d_good") %>) </asp:LinkButton></li>
                                <li><a href='diary_view_p.aspx?id=<%# Eval("d_id") %>'>����(<%# Eval("com_number") %>)</a></li>
                                <li class="count">���(<%# Eval("read_number")%>)</li>
                            </ul>
                        </dd>
                    </ItemTemplate>
                </asp:Repeater>
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="10" AlwaysShow="true"
                    CssClass="sxy" FirstPageText="��ҳ" PrevPageText="��һҳ" NextPageText="��һҳ" LastPageText="βҳ"
                    OnPageChanged="AspNetPager1_PageChanged" CurrentPageButtonPosition="Center" PagingButtonLayoutType="Span">
                </webdiyer:AspNetPager>
            </dl>
        </div>
        <div class="mainr">
            <dl class="rjdl">
                <dt class="lx"><span>�����</span></dt>
                <%for (int i = 0; i < ds_feel_recommend.Rows.Count; i++)
                  { %>
                <dd class="lhotdiary">
                    <li class="title"><a href="<%=ds_feel_recommend.Rows[i]["c_url"].ToString()%>">
                        <%=ds_feel_recommend.Rows[i]["c_title"].ToString()%></a></li>
                </dd>
                <%} %>
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
