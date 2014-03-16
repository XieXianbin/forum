<%@ Page Language="C#" AutoEventWireup="true" CodeFile="diary_view_p.aspx.cs" Inherits="diary_view_p" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
                        <li><a href="#">�ռǲ鿴</a></li>
                    </ul>
                </dt>
                <dd class="bigdd">
                    <li class="image"></li>
                    <li class="author"><a href="../personal/user.aspx?id=<%=ds_view_p["u_name"].ToString() %>">
                        <%=ds_view_p["u_name"].ToString()%></a></li>
                    <li class="title">
                        <%=ds_view_p["d_title"].ToString() %></li>
                    <li class="time">
                        <%=ds_view_p["d_time"].ToString() %></li>
                </dd>
                <dd class="text">
                    <%=ds_view_p["d_text"].ToString() %>
                </dd>
                <dd class="lastList">
                    <ul>
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%=ds_view_p["d_id"].ToString() %>'
                                OnCommand="LinkButton1_Command">��(<%=ds_view_p["d_good"].ToString() %>)</asp:LinkButton></li>
                        <li>����(<%=ds_view_p["com_number"].ToString() %>)</li>
                        <li class="count">���(<%= ds_view_p["read_number"].ToString()%>)</li>
                    </ul>
                </dd>
                <dd>
                    �����б�</dd>
                <%for (int i = 0; i < ds_view_pCom.Rows.Count; i++)
                  {
                %>
                <dd class="bigdd">
                    <li class="author">
                        <%=ds_view_pCom.Rows[i]["u_name"].ToString()%></li>
                    <li class="zhanwei"></li>
                    <li class="title"></li>
                    <li class="time">
                        <%=ds_view_pCom.Rows[i]["c_time"].ToString()%></li>
                </dd>
                <dd class="text">
                    <%=ds_view_pCom.Rows[i]["c_text"].ToString()%>
                </dd>
                <%-- d--%>
                <%} %>
                <dd>
                    ���ۣ�</dd>
                <dd>
                    <td width="600">
                        <label>
                            <%--                            <textarea id="textfield2" rows="5" style="width: 600px" runat="server"></textarea>
                            --%>
                            <ckeditor:ckeditorcontrol id="CKEditor" runat="server" height="50px" width="600px"
                                basepath="../ckeditor"></ckeditor:ckeditorcontrol>
                        </label>
                        <label>
                            <ul>
                                <li>
                                    <asp:Button ID="btSave" runat="server" Text="��������" OnClick="btSave_Click" /></li>
                            </ul>
                        </label>
                        <p>
                            <br />
                        </p>
                    </td>
                </dd>
            </dl>
        </div>
        <div class="mainr">
            <dl class="rjdl">
                <dt class="lx"><span>�㲻����Ŷ</span></dt>
                <%for (int i = 0; i < ds_pv_recommend.Rows.Count; i++)
                  { %>
                <dd class="lhotdiary">
                    <li class="title"><a href="<%=ds_pv_recommend.Rows[i]["c_url"].ToString()%>">
                        <%=ds_pv_recommend.Rows[i]["c_title"].ToString()%></a></li>
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
