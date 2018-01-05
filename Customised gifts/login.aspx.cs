using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Net;
using System.Net.Mail;

public partial class login : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*)from register where email='" + lemail.Text + "' and pass='" + lpass.Text + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("invalid username or password");
            }
        }
        catch (Exception ex)
        {
            Response.Write("ex.Message");
        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("resetlink.aspx");
    }
}