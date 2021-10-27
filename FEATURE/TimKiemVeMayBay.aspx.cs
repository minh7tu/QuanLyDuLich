using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
public partial class FEATURE_TimKiemVeMayBay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Nap_trang();
    }
    public void Nap_trang() {
        //kết nối csdl
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();
        string diemden = Request.QueryString["diemden"];
        SqlDataAdapter da = new SqlDataAdapter("VMB_Diemden", conn);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.Add("@DiemDen", SqlDbType.NVarChar).Value = diemden;
    
        DataSet ds = new DataSet();
        //đổ dữ liệu của adaptẻ cho datáet
        da.Fill(ds, "VEMAYBAY");
        //Trong đó:
        //DataList1 là tên của DataList
        //DataList1.DataSource = ds.Tables["VEMAYBAY"]; 
        //Dùng để gán dữ liệu của bảng Products vào DataList1
        DataList1.DataSource = ds.Tables["VEMAYBAY"];
        DataList1.DataBind();
        connect.Close();
    
    
    
    
    }
    
    protected void btnDatVeMayBay_Click1(object sender, EventArgs e)
    {
        Response.Redirect("VeMayBay.aspx");
    }
}
