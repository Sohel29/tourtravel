using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tour_id = Request.QueryString["tour_id"];

        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            string sql = "";


            //Parameterized sql statement
            sql = "select * from tbl_tour where tour_id=@tour_id";
            SqlCommand cmd = new SqlCommand(sql, con);

            //pass values to sql parameters
            cmd.Parameters.AddWithValue("@tour_id", tour_id);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lbltourdate.Text = dr["tour_date"].ToString();
                lbltourid.Text = dr["tour_id"].ToString();
                lbluname.Text = dr["user_id"].ToString();
                lblfortname.Text = dr["fort_name"].ToString();
                lblbustime.Text = dr["bus_time"].ToString();
                lblhotelservice.Text = dr["hotel_service"].ToString();
                lblticket.Text = dr["no_ticket"].ToString();
                lblbuscharges.Text = dr["bus_charges"].ToString();
                lblentryfees.Text = dr["entry_fees"].ToString();
                lbltotalcharges.Text = dr["total_charges"].ToString();
            }
            
            con.Close();
        }
        catch (Exception ex)
        {
            lbltourid.Text = ex.Message.ToString();
        }
    }
}