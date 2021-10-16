using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class FEATURE_QuanLiNH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlGia.SelectedIndex = 0;
        }
    }
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        myconn.Open();
        string ds = "";
        for (int i = 0; i < ddlGia.Items.Count; i++)
        {
             ds = ddlGia.SelectedValue;
        }
        string monan = "";
        if (ckbMon1.Checked && ckbMonAn.Checked)
        {
            monan = ckbMon1.Checked.ToString();
            monan = ckbMonAn.Checked.ToString();
        }
        SqlCommand cmd = new SqlCommand("TimKiem", myconn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ThucDon",txtThucDon.Text);
        cmd.Parameters.AddWithValue("@Gia",ds);
        cmd.Parameters.AddWithValue("@MonAn", monan);
        try {
            cmd.ExecuteNonQuery();
            Response.Write("KetQuaTK.aspx");
        }
        catch (Exception)
        {
            Response.Write("Không tìm thấy yêu cầu");
        }
    }
}