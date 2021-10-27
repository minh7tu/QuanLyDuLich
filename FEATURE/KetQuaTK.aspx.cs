using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class FEATURE_KetQuaTK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();
        SqlDataAdapter da;
        string monan = Request.QueryString["MonAn"];
        if (Request.QueryString["MonAn"] == null)
        {
            da = new SqlDataAdapter("select * from NHAHANG", conn);
        }
        else
        {
            da = new SqlDataAdapter("select * from NHAHANG where MonAn LIKE N'" + monan + "'", conn);
        }
        DataSet ds = new DataSet();
        da.Fill(ds, "NHAHANG");
        DataList1.DataSource = ds.Tables["NHAHANG"];
        DataList1.DataSourceID = string.Empty; 
        DataList1.DataBind();
    }
}