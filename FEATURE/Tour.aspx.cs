using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class FEATURE_Tour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnFind_Click(object sender, EventArgs e)
    {
        try
        {
            //MQTT.Connect();
            Response.Redirect("TimKiem_Tour.aspx?DiemXP=" + ddlCaption.SelectedItem.Text + "?DiemDen=" + txtNameOfTour.Text + "?ThoiGian=" + txtDate.Text);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgSuccess()", true);
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgError()", true);
        }
        //string findTour = "select * from TOUR where DiemXP=N'" + ddlCaption.SelectedItem.Text + "',";
        //findTour += "DiemDen=N'" + txtNameOfTour.Text + "',ThoiGian='" + txtDate.Text + "'";

        //SqlCommand scd = new SqlCommand(findTour, MQTT.connect);

        //SqlDataReader data = scd.ExecuteReader();

        //if (data.Read())
        //{

        //}
        //else
        //{

        //}
    }
}