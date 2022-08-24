using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            string sql = "";

            //Validate User by user id & password
            sql = "select * from tbl_user where user_id=@user_id and password=@password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@user_id", txtuname.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {      
                //Create session
                Session["user_id"]= txtuname.Text;
                Response.Write("<script>alert('WELCOME');window.location='index.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('LOGIN FAIL');</script>");
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}