using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

public class MQTT
{
    public static SqlConnection connect;

	public MQTT()
	{
		
	}
    //Hàm để mở kết nối
    public static void Connect()
    {
        string conn = WebConfigurationManager.ConnectionStrings["QuanLyDuLich"].ConnectionString; 
        connect = new SqlConnection(conn);
        connect.Open();
    }
    //Hàm để đóng kết nối
    public static void Disconnec()
    {
        //Kiểm tra nếu trạng thái là mở thì đón kết nối
        if(connect.State == System.Data.ConnectionState.Open)
        {
            connect.Close();
            connect.Dispose();//Giải phóng tài nguyên
            connect = null;
        }
    }
}