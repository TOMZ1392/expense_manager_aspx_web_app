using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserLogger"] == null)
        {
            Response.Redirect("~/Landingpg.aspx ");

        }

        decimal[] arry = getTotal();// for fetching from totals table into totals gridview
        writetotal(arry);


    }
    protected void expenseBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/expEntry.aspx");
    }
    protected void transactBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/bankTran.aspx");
    }
    
  /********* function to store totals in an array n return it************************/
  
    decimal[] getTotal()
    {
        //decimal btot = 0, lntot = 0, sntot = 0, dntot = 0, phtot = 0, mtot = 0, trtot = 0, tot = 0;
        decimal[] ar = new decimal[9];
        ar[0] = 0;
        ar[1] = 0;
        ar[2] = 0;
        ar[3] = 0;
        ar[4] = 0;
        ar[5] = 0;
        ar[6] = 0;
        ar[7] = 0;
        ar[8] = 0;
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "VIEWDAT";
        try
        {
          
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //btot += Convert.ToDecimal(dr["BF_A"]);
                //lntot += Convert.ToDecimal(dr["LN_A"]);
                //sntot += Convert.ToDecimal(dr["SN_A"]);
                //dntot += Convert.ToDecimal(dr["DN_A"]);
                //phtot += Convert.ToDecimal(dr["PH_A"]);
                //mtot += Convert.ToDecimal(dr["MISC_A"]);
                //trtot += Convert.ToDecimal(dr["TR_A"]);
                //tot += Convert.ToDecimal(dr["TOTAL"]);

                ar[0] += Convert.ToDecimal(dr["BF_A"]);
                ar[1] += Convert.ToDecimal(dr["LN_A"]);
                ar[2] += Convert.ToDecimal(dr["SN_A"]);
                ar[3] += Convert.ToDecimal(dr["DN_A"]);
                ar[4] += Convert.ToDecimal(dr["PH_A"]);
                ar[5] += Convert.ToDecimal(dr["TR_A"]);
                ar[6] += Convert.ToDecimal(dr["MISC_A"]);
                ar[7] += Convert.ToDecimal(dr["TOTAL"]);
                 
            }
            con.Close();
            con.Open();
            SqlConnection con2 = new SqlConnection(constr);
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con2;
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.CommandText = "viewgroc";
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();

            adp2.Fill(ds2);
            foreach (DataRow dr in ds2.Tables[0].Rows)
            {
                ar[8] += Convert.ToDecimal(dr["amount"]);
            }
            
            return ar;
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            con.Close();
        }
    }

    /********* function to put totals array into database************************/

    void writetotal(decimal[] arry)
    {
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "[sp_totalview]";
        try
        {
            cmd.Parameters.AddWithValue("@btot", arry[0]);
            cmd.Parameters.AddWithValue("@lntot", arry[1]);
            cmd.Parameters.AddWithValue("@sntot", arry[2]);
            cmd.Parameters.AddWithValue("@dntot", arry[3]);
            cmd.Parameters.AddWithValue("@phtot", arry[4]);
            cmd.Parameters.AddWithValue("@trtot", arry[5]);
            cmd.Parameters.AddWithValue("@mtot", arry[6]);
            cmd.Parameters.AddWithValue("@tot", arry[7]);
            cmd.Parameters.AddWithValue("@grocerytot", arry[8]);
            con.Open();
            int affectedRows = cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            con.Close();
        }
    }
    
}