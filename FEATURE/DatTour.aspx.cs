using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class FEATURE_DatTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSoTK.Enabled = false;
        ddlCard.Enabled = false;

        if (ddlLoaiHinh.SelectedValue == "Thanh toán bằng thẻ")
        {
            ddlCard.Enabled = true;
            txtSoTK.Enabled = true;
        }
    }
    protected void btnOrder_Click(object sender, EventArgs e)
    {
        MQTT.Connect();//Mở kết nối

        SqlCommand scd = new SqlCommand("Dat_Tour",MQTT.connect);
        scd.CommandType = System.Data.CommandType.StoredProcedure;

        scd.Parameters.AddWithValue("@Hodem", txtFirstName.Text);
        scd.Parameters.AddWithValue("@Ten", txtLastName.Text);
        scd.Parameters.AddWithValue("@SDT", txtNumberPhone.Text);
        scd.Parameters.AddWithValue("@DiaChi", txtAddr.Text);
        scd.Parameters.AddWithValue("@Email", txtEmail.Text);
        scd.Parameters.AddWithValue("@TenThe", ddlCard.Text);
        scd.Parameters.AddWithValue("@SoTK", txtSoTK.Text);

        try
        {
            scd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgSuccess()", true);
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgError()", true);
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddr.Text = "";
            txtEmail.Text = "";
            txtNumberPhone.Text = "";
            txtSoTK.Text = "";
            Page_Load(sender, e);
        }
        Response.Redirect("Tour.aspx");
        MQTT.Disconnec();//Đóng kết nối

    }
}