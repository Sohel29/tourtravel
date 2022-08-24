using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtuname.Text == "admin" && txtpassword.Text == "pass123")
            {
                Session["admin_id"] = txtuname.Text;
                Response.Write("<script>alert('WELCOME ADMIN');window.location='report.aspx';</script>");

            }
            else {
                Response.Write("<script>alert('ADMIN LOGIN FAIL');</script>");
            }
            /*
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=desktop-sj9r2ua\sqlserver;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            string sql = "";

            //Validate User by user id & password
            sql = "select * from tbl_admin where admin_id=@admin_id and admin_pass=@admin_pass";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@admin_id", txtuname.Text);
            cmd.Parameters.AddWithValue("@admin_pass", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Create session
                Session["admin_id"] = txtuname.Text;
                Response.Write("<script>alert('WELCOME ADMIN');window.location='report.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('ADMIN LOGIN FAIL');</script>");
            }
            dr.Close();
            con.Close();*/
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}