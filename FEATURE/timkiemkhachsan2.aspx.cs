using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
public partial class FEATURE_timkiemkhachsan2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();
        SqlDataAdapter da;
         string diemden = Request.QueryString["DiemDen"];
         if (Request.QueryString["DiemDen"] == null)
         {
             da = new SqlDataAdapter("select * from KHACHSAN", conn);
         }
         else
         {
            da = new SqlDataAdapter("select * from KHACHSAN where DiaDiem LIKE N'" + diemden + "'", conn);
         }
       
        
        DataSet ds = new DataSet();
        da.Fill(ds, "KHACHSAN");
        DataList1.DataSource = ds.Tables["KHACHSAN"];
        DataList1.DataSourceID = string.Empty;
        //Trong đó:
        //DataList1 là tên của DataList
        //DataList1.DataSource = ds.Tables["KHACHSAN"]; 
        //Dùng để gán dữ liệu của bảng Products vào DataList1 
        DataList1.DataBind();
        int count = DataList1.Items.Count;
        lb_dem.Text = count.ToString()+" Khách sạn";
        lb_diemden.Text = diemden;
       
    }
    protected void btn_dat_Click(object sender, EventArgs e)
    {
        Response.Redirect("datkhachsan.aspx");
        
    }
}