﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class feeldiary : System.Web.UI.Page
{
    public DataTable ds_feeld;
    public DataTable ds_feel_recommend;
    public string SQL = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        AspNetPager1.RecordCount = SqlHelper.GetDataCount("select * from  diarylisting WHERE d_type='感情日记' and d_draft='no' and d_p_or_s='p'");
        SQL = "select * from diarylisting where d_type='感情日记' and d_draft='no' and d_p_or_s='p' order by d_time desc";

        if (!IsPostBack)
        {
            AspNetPager1.CurrentPageIndex = 1;
            ds_feeld = SqlHelper.ExecuteDataTable(SQL, AspNetPager1);
            this.Repeater1.DataSource = ds_feeld;
            this.Repeater1.DataBind();
        }
        ds_feel_recommend = ShowPage_feel_recommend();
    }

    public DataTable ShowPage()
    {
        string sql = "select * from diarylisting where d_type='感情日记' and d_draft='no' and d_p_or_s='p' order by d_time desc";
        return SqlHelper.ExecuteDataSetsql(sql).Tables[0];
    }
    public DataTable ShowPage_feel_recommend()
    {
        string sql = "select * from recommend where c_type = 'feel'";
        return SqlHelper.ExecuteDataSetsql(sql).Tables[0];
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        if (this.username.Value == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入用户名!');</script>");
        }
        else if (this.secret.Value == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请输入密码!');</script>");
        }
        else
        {
            if (SqlHelper.Login(this.username.Value, this.secret.Value))
            {
                Session["userName"] = this.username.Value;
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录成功!');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('用户名或密码错误!');</script>");
            }
        }
    }

    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        int id = int.Parse(e.CommandArgument.ToString());

        string sql = "update diarylisting set d_good=d_good+1 where d_id='" + id + "'";
        if (SqlHelper.ExecuteNonQuery(sql) > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('成功!');</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('失败!');</script>");
        }
    }


    protected void LinkButton_logout_Command(object sender, CommandEventArgs e)
    {
        Session["userName"] = "";
    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        ds_feeld = SqlHelper.ExecuteDataTable(SQL, AspNetPager1);
    }
}
