using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class FEATURE_ThanhToan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ddlLoaiThe.SelectedIndex = 0;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        myconn.Open();
        string gt = "";
        if (RadioButton1.Checked)
        {
            gt = RadioButton1.Text;
            txtSoTK.Visible = false;
            ddlLoaiThe.Visible = true;
            txtMK.Visible = false;
        }
        else
            gt = RadioButton2.Text;
            txtSoTK.Visible = true;
            ddlLoaiThe.Visible = true;
            txtMK.Visible = true;
        string lt = "";
        for (int i = 0; i < ddlLoaiThe.Items.Count; i++)
        {
            if (ddlLoaiThe.Items[i].Selected)
                lt = ddlLoaiThe.SelectedValue;
        }
        SqlCommand sqlc = new SqlCommand("ThanhToan", myconn);
        sqlc.CommandType = System.Data.CommandType.StoredProcedure;
        sqlc.Parameters.AddWithValue("@MaNH", txtMaNH.Text);
        sqlc.Parameters.AddWithValue("@SDT", txtSdt.Text);
        sqlc.Parameters.AddWithValue("@TenKH", txtTenKH.Text);
        sqlc.Parameters.AddWithValue("@NgayThanhToan", txtNgayTT.Text);
        sqlc.Parameters.AddWithValue("@SoTaiKhoan", txtSoTK.Text);
        sqlc.Parameters.AddWithValue("@HinhThucTT", gt);
        sqlc.Parameters.AddWithValue("@LoaiThe",lt);
        SqlCommand sqlc1 = new SqlCommand("TongTien", myconn);
        sqlc1.CommandType = System.Data.CommandType.StoredProcedure;
        try
        {
            sqlc.ExecuteNonQuery();
            txtMaNH.Text = "";
            txtSdt.Text = "";
            txtTenKH.Text = "";
            txtNgayTT.Text = "";
            gt = "";
            txtSoTK.Text = "";
            ddlLoaiThe.SelectedIndex = 0;
            Response.Write("Bạn thanh toán thành công");
        }
        catch (Exception)
        {
            Response.Write("Bạn Thanh Toán Chưa Thành Công.Vui Lòng Kiểm tra lại!!");
            txtMaNH.Text = "";
            txtSdt.Text = "";
            txtTenKH.Text = "";
            txtNgayTT.Text = "";
            gt = "";
            txtSoTK.Text = "";
            ddlLoaiThe.SelectedIndex = 0;
        }
        myconn.Close();
    }
}