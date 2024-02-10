using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogger"] == null)
        {
            Response.Redirect("~/Landingpg.aspx");

        }
        if (!IsPostBack)
        {
            resultLbl.Text = "";

            brn.Text = "";
            breakfast.Text = "";
            lnn.Text = "";
            lunch.Text = "";
            snn.Text = "";
            snacks.Text = "";
            dnn.Text = "";
            dinner.Text = "";
            phn.Text = "";
            phone.Text = "";
            trn.Text = "";
            transportation.Text = "";
            miscn.Text = "";
            misc.Text = "";
        
        }
    }

    protected void submitDE_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "ADDEXPENSE01";
        DateTime dt=DateTime.Now;
        try
        {
            decimal total = Convert.ToDecimal(breakfast.Text) + Convert.ToDecimal(lunch.Text) + Convert.ToDecimal(snacks.Text) + Convert.ToDecimal(dinner.Text) + Convert.ToDecimal(phone.Text) + Convert.ToDecimal(transportation.Text) + Convert.ToDecimal(misc.Text);
            cmd.Parameters.AddWithValue("@DT", dt.ToString("ddd,dd-MMMM-yyyy"));
            cmd.Parameters.AddWithValue("@BF_N", brn.Text);
            cmd.Parameters.AddWithValue("@BF_A", Convert.ToDecimal(breakfast.Text));
            cmd.Parameters.AddWithValue("@LN_N", lnn.Text);
            cmd.Parameters.AddWithValue("@LN_A", Convert.ToDecimal(lunch.Text));
            cmd.Parameters.AddWithValue("@SN_N", snn.Text);
            cmd.Parameters.AddWithValue("@SN_A", Convert.ToDecimal(snacks.Text));
            cmd.Parameters.AddWithValue("@DN_N", dnn.Text);
            cmd.Parameters.AddWithValue("@DN_A", Convert.ToDecimal(dinner.Text));
            cmd.Parameters.AddWithValue("@TR_N", trn.Text);
            cmd.Parameters.AddWithValue("@TR_A", Convert.ToDecimal(transportation.Text));
            cmd.Parameters.AddWithValue("@PH_N", phn.Text);
            cmd.Parameters.AddWithValue("@PH_A", Convert.ToDecimal(phone.Text));
            cmd.Parameters.AddWithValue("@MISC_N", miscn.Text);
            cmd.Parameters.AddWithValue("@MISC_A", Convert.ToDecimal(misc.Text));
            cmd.Parameters.AddWithValue("@TOTAL", total);
        }
        catch (Exception)
        {
            
            
            Response.Redirect("~/expEntry.aspx");
        }
      
        try
        {
            con.Open();
            int affectedRows = cmd.ExecuteNonQuery();
            if (affectedRows > 0)
            {
                resultLbl.Text = "Successfully added to DB";
            }
        }
        catch (Exception)
        {

            Response.Redirect("~/expEntry.aspx");
        }
        finally
        {
            con.Close();
        }

    }
    protected void clearDE_Click(object sender, EventArgs e)
    {
        resultLbl.Text = "";

        brn.Text = "";
        breakfast.Text = "";
        lnn.Text = "";
        lunch.Text = "";
        snn.Text = "";
        snacks.Text = "";
        dnn.Text = "";
        dinner.Text = "";
        phn.Text = "";
        phone.Text = "";
        trn.Text = "";
        transportation.Text = "";
        miscn.Text = "";
        misc.Text = "";
    }
    protected void goHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}