using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Landingpg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loginmsgLbl.Text = "";
            usntb.Text = "";
            pswtb.Text = "";
        
        }

    }

    protected void Login_Click(object sender, EventArgs e)
    {

       
        string constr = "Data Source=TZPC;Initial Catalog=universal_handler;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "USERLOGIN";
        cmd.Parameters.AddWithValue("@USN", usntb.Text);
        cmd.Parameters.AddWithValue("@PWD", pswtb.Text);
       
            con.Open();
         
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
            
         adp.Fill(ds);

          
            if (ds.Tables[0].Rows.Count>0)
            {
                Session["UserLogger"] = usntb.Text;
                Response.Redirect("~/Home.aspx");    
            }
            else
            {
                loginmsgLbl.Text = "Wrong credentials!!";
            }
           
            
        
      
    }
}