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
    static PagedDataSource p = new PagedDataSource();
    public static int STT;
    public static int trangthu = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Nap_Trang();
       
    }
    //sự kiện khi người dùng ấn vào nút đặt
    protected void btn_dat_Click(object sender, EventArgs e)
    {
        Response.Redirect("datkhachsan.aspx");
        
    }

    //sự kiện khi người dùng ấn vào nút để lùi 1 trang
    protected void btn_dau_Click(object sender, EventArgs e)
    {
        trangthu = 0;
        if (DropDownList2.SelectedValue != null && DropDownList2.SelectedValue == "tăng dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        //khi người dùng chọn xắp xếp giá
        if (DropDownList1.SelectedValue != null && DropDownList1.SelectedValue == "tăng dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
            else if(DropDownList1.SelectedValue == "giảm dần")
	    {
        XapXep_load(DropDownList1.SelectedValue);
	    }
        else
        {
            Nap_Trang();
        }
    }

    private void Nap_Trang()
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
        p.DataSource = ds.Tables["KHACHSAN"].DefaultView;
        //Trong đó:
        //DataList1 là tên của DataList
        //DataList1.DataSource = ds.Tables["KHACHSAN"]; 
        //Dùng để gán dữ liệu của bảng Products vào DataList1 

        
        lb_dem.Text = p.Count + " Khách sạn";
        lb_diemden.Text = diemden;
        p.PageSize = 5;
        p.CurrentPageIndex = trangthu;
        p.AllowPaging = true;
        btn_dau.Enabled = true; btn_truoc.Enabled = true; btn_sau.Enabled = true; btn_cuoi.Enabled = true;
        KT_PhanTrang(p);
        txt_trang.Text = (trangthu + 1) + "/" + p.Count;
        DataList1.DataSource = p;
        DataList1.DataBind();
        connect.Close();
        
    }
    protected void btn_truoc_Click(object sender, EventArgs e)
    {
        trangthu--;
        if (DropDownList2.SelectedValue != null && DropDownList2.SelectedValue == "tăng dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        if (DropDownList1.SelectedValue != null && DropDownList1.SelectedValue == "tăng dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else if (DropDownList1.SelectedValue == "giảm dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else
        {
            Nap_Trang();
        }
    }
    protected void btn_sau_Click(object sender, EventArgs e)
    {
        trangthu++;
        if (DropDownList2.SelectedValue != null && DropDownList2.SelectedValue == "tăng dần")
        {
           Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        if (DropDownList1.SelectedValue != null && DropDownList1.SelectedValue =="tăng dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else if (DropDownList1.SelectedValue == "giảm dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else
        {
            Nap_Trang();
        }
       
    }
    protected void btn_cuoi_Click(object sender, EventArgs e)
    {
        trangthu = p.PageCount - 1;
        if (DropDownList2.SelectedValue != null && DropDownList2.SelectedValue == "tăng dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        if (DropDownList1.SelectedValue != null && DropDownList1.SelectedValue == "tăng dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else if (DropDownList1.SelectedValue == "giảm dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else
        {
            Nap_Trang(); ;
        }
    }
    //sự kiện khi xắp xếp theo giá được lựa chọn
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "không xắp sếp")
        {
            DropDownList2.Enabled = true;
        }
        else
        {
            DropDownList2.Enabled = false;
        }
        if (DropDownList1.SelectedValue == "tăng dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else if (DropDownList1.SelectedValue == "giảm dần")
        {
            XapXep_load(DropDownList1.SelectedValue);
        }
        else
        {
            Nap_Trang();
        }
       
    }
    SqlDataAdapter da;
    //hàm xắp xếp theo giá
    public void XapXep_load(string txt) {
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();

       
        string diemden = Request.QueryString["DiemDen"];
        if (DropDownList1.SelectedValue == "tăng dần")
        {


            if (Request.QueryString["DiemDen"] == null)
            {
                da = new SqlDataAdapter("select * from KHACHSAN order by Gia ASC", conn);
            }
            else
            {
                da = new SqlDataAdapter("select * from KHACHSAN where DiaDiem LIKE N'" + diemden + "' Order by Gia ASC", conn);
            }
        }
        else if (DropDownList1.SelectedValue == "giảm dần")
        {
            if (Request.QueryString["DiemDen"] == null)
            {
                da = new SqlDataAdapter("select * from KHACHSAN order by Gia DESC", conn);
            }
            else
            {
                da = new SqlDataAdapter("select * from KHACHSAN where DiaDiem LIKE N'" + diemden + "' Order by Gia DESC", conn);
            }
        }
            lb_dem.Text = p.Count + " Khách sạn";
            lb_diemden.Text = diemden;
            p.PageSize = 5;
            p.CurrentPageIndex = trangthu;
            p.AllowPaging = true;
            btn_dau.Enabled = true; btn_truoc.Enabled = true; btn_sau.Enabled = true; btn_cuoi.Enabled = true;
            KT_PhanTrang(p);
            txt_trang.Text = (trangthu + 1) + "/" + p.Count;

            DataSet ds = new DataSet();
            da.Fill(ds, "KHACHSAN");
            p.DataSource = ds.Tables["KHACHSAN"].DefaultView;
            DataList1.DataSource = p;
            DataList1.DataBind();
    }
    //hàm xắp xếp theo sao
    public void Xapxep_sao_load(string txt) {
        SqlConnection connect = new SqlConnection();
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connect = new SqlConnection(conn);
        connect.Open();


        string diemden = Request.QueryString["DiemDen"];
        if (DropDownList2.SelectedValue == "tăng dần")
        {


            if (Request.QueryString["DiemDen"] == null)
            {
                da = new SqlDataAdapter("select * from KHACHSAN order by XepLoai ASC", conn);
            }
            else
            {
                da = new SqlDataAdapter("select * from KHACHSAN where DiaDiem LIKE N'" + diemden + "' Order by XepLoai ASC", conn);
            }
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
            if (Request.QueryString["DiemDen"] == null)
            {
                da = new SqlDataAdapter("select * from KHACHSAN order by XepLoai DESC", conn);
            }
            else
            {
                da = new SqlDataAdapter("select * from KHACHSAN where DiaDiem LIKE N'" + diemden + "' Order by XepLoai DESC", conn);
            }
        }
        lb_dem.Text = p.Count + " Khách sạn";
        lb_diemden.Text = diemden;
        p.PageSize = 5;
        p.CurrentPageIndex = trangthu;
        p.AllowPaging = true;
        btn_dau.Enabled = true; btn_truoc.Enabled = true; btn_sau.Enabled = true; btn_cuoi.Enabled = true;
        KT_PhanTrang(p);
        txt_trang.Text = (trangthu + 1) + "/" + p.Count;

        DataSet ds = new DataSet();
        da.Fill(ds, "KHACHSAN");
        p.DataSource = ds.Tables["KHACHSAN"].DefaultView;
        DataList1.DataSource = p;
        DataList1.DataBind();
    }
    //hàm kiểm tra phân trang
    public void KT_PhanTrang(PagedDataSource p) 
    {
        if (p.IsFirstPage == true || p.CurrentPageIndex >= 0) //nếu là đầu
        {
            btn_dau.Enabled = false; //nếu là đầu thì nút trang đầu mờ đi
            btn_truoc.Enabled = false;
            btn_sau.Enabled = true;
            btn_cuoi.Enabled = true;
        }
        if (p.IsLastPage == true)
        {

            btn_dau.Enabled = true; //ngược lại
            btn_truoc.Enabled = true;
            btn_sau.Enabled = false;
            btn_cuoi.Enabled = false;
        }
        //trường hợp ngoại lệ khi chỉ chỉ có 1 trang
        if (p.IsLastPage == true && p.IsFirstPage == true)
        {

            btn_dau.Enabled = false; //ngược lại
            btn_truoc.Enabled = false;
            btn_sau.Enabled = false;
            btn_cuoi.Enabled = false;
        }
    }
    //sự kiện được gọi khi chọn giá trị cho xắp xếp theo sao
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue == "không xắp xếp")
        {
            DropDownList1.Enabled = true;
        }
        else
        {
            DropDownList1.Enabled = false;
        }
        if (DropDownList2.SelectedValue == "tăng dần")
        {
            Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else if (DropDownList2.SelectedValue == "giảm dần")
        {
           Xapxep_sao_load(DropDownList2.SelectedValue);
        }
        else
        {
            Nap_Trang();
        }
    }
}