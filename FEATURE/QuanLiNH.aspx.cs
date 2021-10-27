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
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        try
        {
            myconn.Open();
            string strSQL = "Select MaNH,TenNH,DiaDiem,SDT,XepHang from NHAHANG";
            SqlCommand cmd = new SqlCommand(strSQL, myconn);
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                int cells = 5;
                TableRow r = new TableRow();
                for (int j = 0; j < cells; j++)
                {
                    TableCell c = new TableCell();
                    c.Text = data[j].ToString();
                    r.Cells.Add(c);
                }
                Table1.Rows.Add(r);
            }
            myconn.Close();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Không xem được thông tin nhà hàng');</script>");
        }
    }
}