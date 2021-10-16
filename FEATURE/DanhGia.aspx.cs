using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class FEATURE_DanhGia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string chuoiketnoi = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        SqlConnection myconn = new SqlConnection(chuoiketnoi);
        myconn.Open();
        string monan="";
        if (CheckBox1.Checked)
            monan = CheckBox1.Text;
        if (CheckBox2.Checked)
            monan = CheckBox2.Text;
        if (CheckBox3.Checked)
            monan = CheckBox3.Text;
        string phucvu = "";
        if (RadioButton1.Checked)
            phucvu = "Hài Lòng";
        else 
            if (RadioButton2.Checked)
               phucvu = "Tạm chấp nhận được";
             else
                if (RadioButton3.Checked)
                    phucvu = "Không hài lòng";
        string antoan = "";
        if (CheckBox4.Checked)
            antoan = CheckBox4.Text;
        if (CheckBox5.Checked)
            antoan = CheckBox5.Text;
        string nhanvien = "";
        if (CheckBox6.Checked)
            nhanvien = CheckBox6.Text;
        if (CheckBox7.Checked)
            nhanvien = CheckBox7.Text;
        string sql = "insert  into NHAHANG(DanhGia) values('" +monan+"','"+phucvu+"','"+antoan+"','"+nhanvien+"')";
        //khai báo đối tượng command
        SqlCommand cmd = new SqlCommand(sql, myconn);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Quý khách đánh giá thành công");
        }
        catch (Exception)
        {
            Response.Write("Đánh giá chưa thành công");
        }
    }
}