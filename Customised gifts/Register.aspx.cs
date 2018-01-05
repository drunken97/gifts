using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

 
public partial class Register : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into register(name,email,pass,phone) values('" + name.Text + "','" + email.Text + "','" + pass.Text + "','" + phone.Text + "')";
        String mycon = "Data Source=HP; Initial Catalog=Customised gifts zone; Integrated Security=true";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        name.Text = "";
        email.Text = "";
        pass.Text = "";
        phone.Text = "";
        Response.Redirect("index.aspx");
        con.Close();
    }

}