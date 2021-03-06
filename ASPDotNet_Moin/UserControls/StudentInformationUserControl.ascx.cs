using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPDotNet_Moin.UserControls
{
    public partial class StudentInformationUserControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        public void CleanAllControl()
        {
            txtDate.Text = DateTime.Today.Date.ToString();
            txtEmail.Text = "";
            txtName.Text = "";
            txtAddress.Text = "";
            txtPassword.Text = "";
            txtConfirmpass.Text = "";
            CheckBoxAgree.Checked = false;
            ddlClass.Text = ddlClass.Items[0].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (CheckBoxAgree.Checked && txtName.Text != "" && txtDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Student(StuName, EmailAddress, Class, DOB, Address, Password) Values (@name, @email, @class, @dob, @address, @password)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@class", ddlClass.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDate.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Info!!!";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (CheckBoxAgree.Checked && txtName.Text != "" && txtDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Student Set StuName=@name, EmailAddress= @email, Class=@class, DOB=@dob, Address=@address, Password=@password Where StudentID=@studentID", con);
                    cmd.Parameters.AddWithValue("@studentID", lblTid.Text);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@class", ddlClass.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDate.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Info!!!";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Student Where  StudentID=@studentID", con);
                cmd.Parameters.AddWithValue("@studentID", lblTid.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();

                CleanAllControl();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[3].Text;
            ddlClass.Text = GridView1.SelectedRow.Cells[4].Text;
            txtDate.Text = GridView1.SelectedRow.Cells[5].Text;
            txtAddress.Text = GridView1.SelectedRow.Cells[6].Text;
            txtPassword.Text = GridView1.SelectedRow.Cells[7].Text;

            lblTid.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}