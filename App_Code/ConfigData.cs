using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

public class ConfigData
{
	public ConfigData()
	{
		
	}
    //Hàm để mở kết nối
    public void Open(SqlConnection connec)
    {
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString; 
        connec = new SqlConnection(conn);
        connec.Open();
    }
    //Hàm để đóng kết nối
    public void Close(SqlConnection connec)
    {
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connec = new SqlConnection(conn);
        connec.Close();
    }
}