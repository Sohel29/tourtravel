using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class tour : System.Web.UI.Page
{
    static int ticket, distance, fee, charges, entryfee, total,tour_id;
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

            string sql = "";
                      

            //Parameterized sql statement
            sql = "insert into tbl_tour(user_id,fort_name,bus_time,hotel_service,no_ticket,bus_charges,entry_fees,total_charges,pay_mode,bank_name,card_no,expiry_date,card_holder_name,tour_date) values(@user_id,@fort_name,@bus_time,@hotel_service,@no_ticket,@bus_charges,@entry_fees,@total_charges,@pay_mode,@bank_name,@card_no,@expiry_date,@card_holder_name,@tour_date)";
            sql += " SELECT SCOPE_IDENTITY()";
            //Create SqlCommand
            SqlCommand cmd = new SqlCommand(sql, con);

            //pass values to sql parameters
            cmd.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
            cmd.Parameters.AddWithValue("@fort_name",Request.QueryString["fort"]);
            cmd.Parameters.AddWithValue("@bus_time", ddltime.Text);
            cmd.Parameters.AddWithValue("@hotel_service", ddlhotel.Text);
            cmd.Parameters.AddWithValue("@no_ticket", ticket);
            cmd.Parameters.AddWithValue("@bus_charges", charges);
            cmd.Parameters.AddWithValue("@entry_fees",fee);
            cmd.Parameters.AddWithValue("@total_charges", total);
            
             if (ddlpaymode.SelectedItem.Text == "CASH")
                    cmd.Parameters.AddWithValue("@pay_mode", "CASH");
             else
                 cmd.Parameters.AddWithValue("@pay_mode", "CARD");

            cmd.Parameters.AddWithValue("@bank_name", txtBankname.Text);
            cmd.Parameters.AddWithValue("@card_no", txtCardNo.Text);
            cmd.Parameters.AddWithValue("@expiry_date", txtExpiryDate.Text);
            cmd.Parameters.AddWithValue("@card_holder_name", txtCardHolder.Text);
            cmd.Parameters.AddWithValue("@tour_date", txtdate.Text);


            //execute sql command
           tour_id = cmd.ExecuteNonQuery();
            if (tour_id > 0)
            {
                Response.Write("<script>alert('Your Tour is booked successfully');</script>");                
            }
            else
            {
                Response.Write("<script>alert(Tour booking process failed');</script>");
            }

            con.Close();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    }

    protected void txtticket_TextChanged(object sender, EventArgs e)
    {
        ticket = Convert.ToInt32(txtticket.Text);
        distance=Convert.ToInt32(Request.QueryString["distance"]);
        fee = Convert.ToInt32(Request.QueryString["fee"]);

        charges = (distance * ticket)*2;
        txtcharges.Text = "Bus Charges : Rs: " + charges.ToString();

        entryfee = (fee * ticket) ;
        txtfee.Text = "Entry Fee : Rs: " + entryfee.ToString();

        total = charges+ entryfee;

        txttotal.Text = "Total Charges : Rs: " + total.ToString();

    }
    protected void ddlpaymode_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlpaymode.SelectedItem.Text == "CASH")
        {
            panel1.Visible = false;
        }
        else
        {
            panel1.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("print.aspx?tour_id=" + tour_id);
    }
}