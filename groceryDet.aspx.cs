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
        if (!IsPostBack)
        {
            lblMsg.Text = "";
        }
        if (Session["UserLogger"] == null)
        {
            Response.Redirect("~/Landingpg.aspx");

        }
    }

    protected void lbtAdd_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "addgrocer";
        DateTime dt = DateTime.Now;
       
        
        try
        {

            con.Open();
            cmd.Parameters.AddWithValue("@dt", dt.ToString("ddd,dd-MMMM-yyyy"));
            cmd.Parameters.AddWithValue("@item", groItem.Text);
         cmd.Parameters.AddWithValue("@amount",Convert.ToDecimal(groAmt.Text));
        cmd.Parameters.AddWithValue("@quantity",groQty.Text);  
          
            int affected = cmd.ExecuteNonQuery();
            if (affected > 0)
                lblMsg.Text = "Successfully added";
    }
        catch(Exception)
        {
            con.Close();
            lblMsg.Text = "Error. Try Again!!";
            Response.Redirect("~/groceryDet.aspx");
        }
        con.Close();
    
}
    protected void lbtHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}
