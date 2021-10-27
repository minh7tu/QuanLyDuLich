using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class NhanVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        try
        {
            myconn.Open();
            string strSQL = "Select MaNV,Hodem+Ten AS TenNV,GioiTinh,NgaySinh,ChucVu From NHANVIEN";
            SqlCommand cmd = new SqlCommand(strSQL, myconn);
            SqlDataReader data = cmd.ExecuteReader();
            Response.Write("<table class='bang' align='center'>");
            Response.Write("<tr>");
            Response.Write("<th>Mã Nhân Viên</th>");
            Response.Write("<th>Tên Nhân Viên</th>");
            Response.Write("<th>Giới Tính</th>");
            Response.Write("<th>Ngày Sinh</th>");
            Response.Write("<th>Chức Vụ</th>");
            Response.Write("</tr>");
            while (data.Read())
            {
                Response.Write("<tr>");
                Response.Write("<td>" + data[0].ToString() + "</td>");
                Response.Write("<td>" + data[1].ToString() + "</td>");
                Response.Write("<td>" + data[2].ToString() + "</td>");
                Response.Write("<td>" + data[3].ToString() + "</td>");
                Response.Write("<td>" + data[4].ToString() + "</td>");
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