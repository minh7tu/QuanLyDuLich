using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class FEATURE_TimKiemNH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        myconn.Open();
        string kv = "";
        for (int i = 0; i < ddlKhuVuc.Items.Count; i++)
        {
            kv = ddlKhuVuc.SelectedValue;
        }
        string ds = "";
        for (int i = 0; i < ddlLoaiNH.Items.Count; i++)
        {
             ds = ddlLoaiNH.SelectedValue;
        }
        string sql = "";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        SqlDataReader data = cmd.ExecuteReader();
        if (data.Read())
        {
            txtMaNH.Text = data[0].ToString();
            txtTenNH.Text = data[1].ToString();
            txtMonAn.Text = data[11].ToString();
            txtGia.Text = data[6].ToString();
        }
        else
        {
            txtMaNH.Text = "";
            txtTenNH.Text = "";
            txtMonAn.Text = "";
            txtGia.Text = "";
            Response.Write("Không tìm được trong nhà hàng");
        }
        myconn.Close();

    }
}