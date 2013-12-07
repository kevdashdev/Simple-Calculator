using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
        myScriptResDef.Path = "~/js/jquery.js";
        myScriptResDef.DebugPath = "~/js/jquery.js";
        myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
        myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid && TextBox1.Text != "" && TextBox2.Text != "")
        {
            TextBox3.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox2.Text));
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (IsValid && TextBox1.Text != "" && TextBox2.Text != "")
        {
            TextBox3.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) - Convert.ToDouble(TextBox2.Text));
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (IsValid && TextBox1.Text != "" && TextBox2.Text != "")
        {
            TextBox3.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) / Convert.ToDouble(TextBox2.Text));
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (IsValid && TextBox1.Text != "" && TextBox2.Text != "")
        {
            TextBox3.Text = Convert.ToString(Convert.ToDouble(TextBox1.Text) * Convert.ToDouble(TextBox2.Text));
        }
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }


}