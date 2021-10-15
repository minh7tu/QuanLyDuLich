using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class FEATURE_KetQuaTK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        try
        {
            myconn.Open();
            string strSQL = "Select MaNH,TenNH,DiaDiem,ChiPhi,XepHang,DanhGia,MonAn from NHAHANG";
            SqlCommand cmd = new SqlCommand(strSQL, myconn);
            SqlDataReader data = cmd.ExecuteReader();
            Response.Write("<table class='bang' align='center'>");
            Response.Write("<tr>");
            Response.Write("<th>Mã Nhà Hàng</th>");
            Response.Write("<th>Tên Nhà Hàng</th>");
            Response.Write("<th>Địa Điểm</th>");
            Response.Write("<th>Chi Phí</th>");
            Response.Write("<th>Xếp Hạng</th>");
            Response.Write("<th>Đánh Giá</th>");
            Response.Write("<th>Món Ăn</th>");
            Response.Write("</tr>");
            while (data.Read())
            {
                Response.Write("<tr>");
                Response.Write("<td>" + data[0].ToString() + "</td>");
                Response.Write("<td>" + data[1].ToString() + "</td>");
                Response.Write("<td>" + data[4].ToString() + "</td>");
                Response.Write("<td>" + data[6].ToString() + "</td>");
                Response.Write("<td>" + data[8].ToString() + "</td>");
                Response.Write("<td>" + data[9].ToString() + "</td>");
                Response.Write("<td>" + data[10].ToString() + "</td>");
                Response.Write("</tr>");
            }
            Response.Write("</table>");
            myconn.Close();
        }
        catch (Exception)
        {
            Response.Write("Không kết nối được đến  CSDL");
        }
    }
}