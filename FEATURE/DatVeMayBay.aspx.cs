using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FEATURE_DatVeMayBay : System.Web.UI.Page
{
    static int count = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_soluong.Text = count.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        count++;
        txt_soluong.Text = count.ToString();
        if (txt_soluong.Text == "1")
        {
            btn_tru.Enabled = false;
            btn_tru.Attributes.Add("onclick", "document.body.style.cursor = 'wait';");
        }
        else
        {
            btn_tru.Enabled = true;
            btn_tru.Attributes.Add("onclick", "document.body.style.cursor = 'pointer';");
        }
    }
    protected void btn_tru_Click(object sender, EventArgs e)
    {
        count--;
        txt_soluong.Text = count.ToString();
        if (txt_soluong.Text == "0")
        {
            btn_tru.Enabled = false;
            btn_tru.OnClientClick = "Curen(); return:true;";
        }
        else
        {
            btn_tru.Enabled = true;
            btn_tru.OnClientClick = "Curen(); return:true;";
        }
    }
}