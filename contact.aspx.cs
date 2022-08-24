using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            //Parameterized sql statement
            string sql = "insert into tbl_contact values(@name,@email,@subject,@message)";

            //Create SqlCommand
            SqlCommand cmd = new SqlCommand(sql,con);

            //pass values to sql parameters
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@subject", txtsubject.Text);
            cmd.Parameters.AddWithValue("@message", txtmessage.Text);

            //execute sql command
            int cnt=cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                lblmsg.Text = "Thanks for contacting Us";
            }
            else
            {
                lblmsg.Text = "Sorry Contact Failed";
            }
            
            con.Close();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }
}