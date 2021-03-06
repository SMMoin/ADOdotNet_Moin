using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPDotNet_Moin.ContentPages
{
    public partial class ClassInfo : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        private void CleanAllControl()
        {
            txtClassName.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Insert Into Class(ClassName) Values (@name)", con);
                cmd.Parameters.AddWithValue("@name", txtClassName.Text);
                cmd.ExecuteNonQuery();
                //ShowAlert("Data Inserted Successfuly!!!");
                con.Close();
                
                CleanAllControl();
            }
        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
    }
}