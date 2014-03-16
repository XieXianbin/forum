<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../style/css.css" rel="stylesheet" type="text/css" />
    <link href="../style/other.css" rel="stylesheet" type="text/css" />
    <meta name="keywords" content="考研日记点滴记录您奋斗过的每一天,考研最新动态,考研日记网,有关考研的最新动态,大学生考研日记,双乐科技考研日记,,共享科技乐享生活,双乐科技专注做大学生最需要的网站" />
    <meta name="description" content="考研日记点滴记录您奋斗过的每一天,考研最新动态,考研日记网,有关考研的最新动态,大学生考研日记,双乐科技考研日记,,共享科技乐享生活,双乐科技专注做大学生最需要的网站" />
    <link rel="shortcut icon" href="../image/favicon.ico" />
    <title>日记|大学生考研日记|大学生相互鼓励共同奋斗的平台|双乐科技考研日记|考研日记点滴记录您奋斗过的每一天|共享科技乐享生活</title>
</head>
<body>
    <form id="Form1" runat="server">
    <div id="header">
        <div id="top">
            <span></span>
            <div class="rtop">
                <div class="login" id="getIn">
                    <ul>
                        <li class="laber">用户名：</li>
                        <li class="inpu">
                            <input name="username" type="text" id="username" runat="server" accesskey="l" tabindex="1"
                                size="12" /></li>
                        <li class="laber">密码：</li>
                        <li class="inpu">
                            <input name="secret" type="password" id="secret" size="12" runat='server' /></li>
                        <li class="button">
                            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Unnamed1_Click" /></li>
                        <li><a href="registered.aspx">注册!</a></li>
                        <li><a href="getback.aspx">找回？</a></li>
                    </ul>
                </div>
                <div class="login" id="getedIn">
                    <ul>
                        <li class="laber">用户名：</li>
                        <li class="inpu" id="aa"><a href="user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a> </li>
                        <li class="inpu"><a href="../personal/user.aspx?id=<%= Session["userName"].ToString() %>">
                            <%= Session["userName"].ToString() %></a></li>
                        <li class="inpu"><a href="user.aspx?id=<%= Session["userName"].ToString() %>">个人中心</a></li>
                        <li>
                            <asp:LinkButton ID="LinkButton_logout" runat="server" OnCommand="LinkButton_logout_Command">退出</asp:LinkButton></li>
                    </ul>
                </div>
                <div class="word">
                    <marquee scrollamount="2">这里写的不是一个故事，而是我和某一群人已经失去的时间!</marquee>
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
                <li><a href="../index.aspx">首页</a><span></span></li>
                <li><a href="../diary/newdiary.aspx">最新日记</a><span></span></li>
                <li><a href="../diary/motdiary.aspx">励志日记</a><span></span></li>
                <li><a href="../diary/feeldiary.aspx">感情日记</a><span></span></li>
                <li><a href="../diary/playup.aspx">奋斗日记</a><span></span></li>
                <li><a href="../news/sugreading.aspx">推荐阅读</a><span></span></li>
                <li><a href="personal.aspx">个人中心</a></li>
            </ul>
        </div>
    </div>
    <!--头部结束-->
    <div id="banner">
    </div>
    <!--banner结束-->
    <div class="main">
        <div class="mainl">
            <dl class="rjdl">
                <dt class="lx">
                    <ul>
                        <li><a href="../index.aspx">本站首页>></a></li>
                        <li>个人资料</li>
                    </ul>
                </dt>
                <dd>
                    <table width="600" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="171">
                                &nbsp;
                            </td>
                            <td width="429">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td width="171">
                                <div align="right">
                                    用户名：</div>
                            </td>
                            <td width="429">
                                <%=ds_user["u_name"].ToString() %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    注册时间：</div>
                            </td>
                            <td>
                                <%=ds_user["u_regedit_time"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    真实姓名：</div>
                            </td>
                            <td>
                                <%=ds_user["u_r_name"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    年龄：</div>
                            </td>
                            <td>
                                <%=ds_user["u_age"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    性别：</div>
                            </td>
                            <td>
                                <%=ds_user["u_sex"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    在读学校：</div>
                            </td>
                            <td>
                                <%=ds_user["u_school"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    QQ：</div>
                            </td>
                            <td>
                                <%=ds_user["u_qq"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    E_mail：</div>
                            </td>
                            <td>
                                <%=ds_user["u_email"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    地址：</div>
                            </td>
                            <td>
                                <%=ds_user["u_address"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right">
                                    个人简介：</div>
                            </td>
                            <td>
                                <%=ds_user["u_personal"].ToString()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </dd>
            </dl>
        </div>
        <div class="mainr">
            <dl class="rjdl">
                <dt class="lx"><span>联系我们</span><a href="#">更多>></a></dt>
                <dd>
                    QQ: 10972072</dd>
            </dl>
        </div>
    </div>
    <!--main结束-->
    <div id="bottom">
        <div class="bq">
            <ul>
                <li>&copy;2013&nbsp;</li>
                <li><a href="http://www.shuangle.net" target="_blank">&nbsp;双乐科技.</a></li>
                <li class="">&nbsp;&nbsp;All rights reserved. &nbsp; </li>
            </ul>
            <ul>
                <li><a href="http://www.miibeian.gov.cn/" target="_blank">豫 ICP 备 13006843 号-2</a></li>
                <li><a href="http://shuangle.net/Responsibility/about_kyrj_Responsibility.html" target="_blank">
                    &nbsp;免责声明&nbsp;&nbsp;&nbsp;</a></li>
                <li>版权所有&nbsp;&nbsp;违版必究</li></ul>
            <ul>
                <li>联系我们：service@shuangle.net&nbsp;&nbsp;</li>
                <li><a href="tencent://message/?uin=10972072&amp;Site=谢先斌&amp;Menu=yes">QQ：10972072</a></li></ul>
        </div>
    </div>
    </form>
</body>
</html>
