using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;

public partial class report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_contact", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_contact");

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport.rpt"));
            rd.SetDataSource(ds);

            CrystalReportViewer1.ReportSource = rd;
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_user", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_user");

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport2.rpt"));
            rd.SetDataSource(ds);

            CrystalReportViewer1.ReportSource = rd;
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_tour", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_tour");

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport3.rpt"));
            rd.SetDataSource(ds);

            CrystalReportViewer1.ReportSource = rd;
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_tour", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_tour");

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport4.rpt"));
            rd.SetDataSource(ds);

            CrystalReportViewer1.ReportSource = rd;
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Create SqlConnection object to establish connection with database
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=DESKTOP-QDOI5GN\SQLEXPRESS;Initial Catalog=FortsToursAndTravels;Integrated Security=True";
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_contact", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_contact");

            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport.rpt"));
            rd.SetDataSource(ds);

            CrystalReportViewer1.ReportSource = rd;
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}