using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
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

            //Verify User id is already exists
            sql = "select * from tbl_user where user_id=@user_id";
            SqlCommand cmd2= new SqlCommand(sql, con);
            cmd2.Parameters.AddWithValue("@user_id", txtuname.Text);
            SqlDataReader dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Response.Write("<script>alert('User Id already exists');</script>");
                return;
            }

            dr.Close();
            

            //Parameterized sql statement
            sql = "insert into tbl_user values(@user_id,@password,@name,@email,@mobile)";

            //Create SqlCommand
            SqlCommand cmd = new SqlCommand(sql, con);

            //pass values to sql parameters
            cmd.Parameters.AddWithValue("@user_id", txtuname.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);

            //execute sql command
            int cnt = cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
               Response.Write("<script>alert('Registration process completed Successfully');</script>");
               txtuname.Text = "";
               txtname.Text = "";
               txtemail.Text = "";
               txtmobile.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Registration process failed');</script>");
            }

            con.Close();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}