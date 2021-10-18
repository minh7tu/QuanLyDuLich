using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class FEATURE_KhachSan : System.Web.UI.Page
{
    static int count = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_dem.Text = count.ToString();
        if (txt_dem.Text == "0")
        {
            btn_tru.Enabled = false;
        }
        else
        {
            btn_tru.Enabled = true;
        }
    }

    protected void btn_timkiem_Click(object sender, EventArgs e)
    {
       
       
         if(DropDownList1.SelectedValue.Equals("Điểm Đến") && cb_all.Checked == false)
        {
            Response.Write("<script>alert('hãy chọn nơi bạn muốn tìm');</script>");
        }
        else if (cb_all.Checked)
        {
            Response.Redirect("timkiemkhachsan2.aspx");
        }
        else
        {
            Response.Redirect("timkiemkhachsan2.aspx?DiemDen=" + DropDownList1.SelectedValue);
        }

        
    }
   
    protected void cb_all_CheckedChanged(object sender, EventArgs e)
    {
        if (cb_all.Checked)
        {
            DropDownList1.Enabled = false;
        }
        else
        {
            DropDownList1.Enabled = true;
        }
    }
    protected void bnt_cong_Click(object sender, EventArgs e)
    {
        count++;
        txt_dem.Text = count.ToString();
        if (txt_dem.Text == "1")
        {
            btn_tru.Enabled = false;
        }
        else
        {
            btn_tru.Enabled = true;
        }
    }
    protected void btn_tru_Click(object sender, EventArgs e)
    {
        count--;
        txt_dem.Text = count.ToString();
        if (txt_dem.Text == "0")
        {
            btn_tru.Enabled = false;
        }
        else
        {
            btn_tru.Enabled = true;
        }
    }
}