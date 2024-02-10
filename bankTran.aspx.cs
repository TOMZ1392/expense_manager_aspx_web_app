using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            msgLbl.Text = "";
        }
        if (Session["UserLogger"] == null)
        {
            Response.Redirect("~/Landingpg.aspx");

        }
    }
    protected void submitbtran_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "ADDTRANSACTIONS01";
        DateTime dt = DateTime.Now;
        cmd.Parameters.AddWithValue("@DT", dt.ToString("ddd,dd-MMMM-yyyy"));
        cmd.Parameters.AddWithValue("@BANK_N", accTypedrp.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@TRAN_TYPE", tranTypdrp.SelectedItem.ToString());
        try
        {
            cmd.Parameters.AddWithValue("@AMOUNT", Convert.ToDecimal(bankTran.Text));
            cmd.Parameters.AddWithValue("@DESC", Convert.ToString(trandesc.Text));
            con.Open();
            int affected = cmd.ExecuteNonQuery();
            if (affected > 0)
                msgLbl.Text = "Successfully added";
        }
        catch (Exception)
        {
            con.Close();
            Response.Redirect("~/bankTran.aspx");
        }

        con.Close();
    }
    protected void gobkHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}