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
    //Hàm truyền vào biến kết nối để mở kết nối
    public void OpenConn(SqlConnection connec)
    {
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString; 
        connec = new SqlConnection(conn);
        connec.Open();
    }
    //Hàm truyền vào biến kết nối để đóng kết nối
    public void CloseConn(SqlConnection connec)
    {
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString;
        connec = new SqlConnection(conn);
        connec.Close();
    }
}