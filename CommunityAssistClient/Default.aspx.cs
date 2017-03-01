﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        CAServiceReference1.CAServiceClient cas = new CAServiceReference1.CAServiceClient();

        int key = cas.PersonLogin(UsernameTextBox.Text, PasswordTextBox.Text);
        if(key != 0)
        {
            Session["userkey"] = key;
            Response.Redirect("GrantPage.aspx");
        }
        else
        {
            ResultLabel.Text = "Login Failed";
        }
    }
}