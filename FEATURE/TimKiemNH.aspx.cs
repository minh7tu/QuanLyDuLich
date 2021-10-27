using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;



public partial class FEATURE_QuanLiNH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();
        SqlDataAdapter da;
        da = new SqlDataAdapter("select * from NHAHANG", conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "NHAHANG");
        DataList1.DataSource = ds.Tables["NhaHang"];
        DataList1.DataSourceID = string.Empty;
        DataList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtMonAn.Text.Equals("MonAn"))
        {
            Response.Write("<script>alert('hãy chọn món ăn');</script>");
        }
        else
        {
            Response.Redirect("KetQuaTK.aspx?MonAn=" + txtMonAn.Text);
        }
    }
}