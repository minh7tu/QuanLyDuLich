using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class FEATURE_TK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlLoaiNH.SelectedIndex = 0;
        }
      
    }
    protected void btnDatNH_Click(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        myconn.Open();
        string ds = "";
        for (int i = 0; i < ddlLoaiNH.Items.Count; i++)
        {
            if(ddlLoaiNH.Items[i].Selected)
             ds = ddlLoaiNH.SelectedValue;
        }
        //string sql = "insert into NHAHANG values('"+txtMaNH.Text+"',N'" + txtTenNH.Text + "','" + txtTGBD.Text + "','" + txtTGKT.Text + "',N'" +txtDiaDiem.Text+ "',N'"+txtSoNguoi.Text + "','"+txtSdt.Text+"',N'" + ds + "')";
        //khai báo đối tượng command
        SqlCommand cmd = new SqlCommand("DatNH",myconn);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@MaNH", txtMaNH.Text);
        cmd.Parameters.AddWithValue("@TenNH", txtTenNH.Text);
        cmd.Parameters.AddWithValue("@TGBD", txtTGBD.Text);
        cmd.Parameters.AddWithValue("@TGKT", txtTGKT.Text);
        cmd.Parameters.AddWithValue("@DiaDiem", txtDiaDiem.Text);
        cmd.Parameters.AddWithValue("@SoNguoi", txtSoNguoi.Text);
        cmd.Parameters.AddWithValue("@Sdt", txtSdt.Text);
        cmd.Parameters.AddWithValue("@LoaiNH", ds); 
        try
        {
            cmd.ExecuteNonQuery();
            txtMaNH.Text = "";
            txtTenNH.Text = "";
            txtSdt.Text = "";
            txtSoNguoi.Text = "";
            txtTGBD.Text = "";
            txtTGKT.Text = "";
            txtSoBan.Text = "";
            ddlLoaiNH.SelectedIndex = 0;
            txtDiaDiem.Text = "";
            Response.Write("Bạn đặt được nhà hàng thành công");
        }
        catch(Exception)
        {
            Response.Write("Bạn Không đặt được nhà hàng");
            txtMaNH.Text = "";
            txtTenNH.Text = "";
            txtSdt.Text = "";
            txtSoNguoi.Text = "";
            txtTGBD.Text = "";
            txtTGKT.Text = "";
            txtSoBan.Text = "";
            ddlLoaiNH.SelectedIndex = 0;
            txtDiaDiem.Text = "";
        }
        myconn.Close();
    }
}