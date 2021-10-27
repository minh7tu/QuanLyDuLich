using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TimKiem_Tour : System.Web.UI.Page
{
    static PagedDataSource t = new PagedDataSource();

    protected void Page_Load(object sender, EventArgs e)
    {
        HienThi();
    }
   
    protected void btnOrder_Click1(object sender, EventArgs e)
    {
        Response.Redirect("DatTour.aspx");
    }

    protected void HienThi()
    {
        MQTT.Connect();

        string diemden = Request.QueryString["TenTour"];
        string th = "select * from TOUR where TenT=N'" + diemden + "'";

        SqlDataAdapter da = new SqlDataAdapter("HienThi_Tour", MQTT.connect);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.Add("@TenT", SqlDbType.NVarChar).Value = diemden;

        DataSet ds = new DataSet();
        da.Fill(ds, "TOUR");
        t.DataSource = ds.Tables["TOUR"].DefaultView;


        lblResult.Text = t.Count.ToString();//Đưa ra kết quả tìm kiếm
        lblNameOfTour.Text = diemden;//Hiển thị tên tìm kiếm

        dlTour.DataSource = t;
        dlTour.DataBind();

        MQTT.Disconnec();
    }

}