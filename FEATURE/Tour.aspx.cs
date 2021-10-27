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
            Response.Redirect("TimKiem_Tour.aspx?TenTour=" + txtNameOfTour.Text);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgSuccess()", true);
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "msgError()", true);
        }
    }
}