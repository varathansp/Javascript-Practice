using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace JavaScripFunctions
{
    public partial class Home : System.Web.UI.Page
    {
        string strConnection = ConfigurationManager.ConnectionStrings["AccessConnectionString"].ToString();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnConnectionCheck_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection(strConnection);
            connection.Open();
            Label1.Text = "Connection Success";
            connection.Close();
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection(strConnection);
            connection.Open();
            OleDbCommand cmd=new OleDbCommand("insert into Posts ([stories]) values ('"+txtPost.Text+"')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

       
    }
}