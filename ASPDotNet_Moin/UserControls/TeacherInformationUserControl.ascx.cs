using ASPDotNet_Moin.ContentPages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPDotNet_Moin.UserControls
{
    public partial class TeacherInformationUserControl : System.Web.UI.UserControl
    {
        TeacherInformationDataContext ctx;
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

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

        public void ClearData()
        {
            txtName.Text = "";
            txtFather.Text = "";
            txtAddress.Text = "";
            txtMobile.Text = "";
            txtNID.Text = "";
            txtPosition.Text = "";
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (ctx = new TeacherInformationDataContext())
            {
                Teacher teacher = new Teacher
                {
                    TeacName = txtName.Text,
                    Teacfather = txtFather.Text,
                    Address = txtAddress.Text,
                    MobileNo = txtMobile.Text ,
                    NID = txtNID.Text,
                    Position= txtPosition.Text
                };

                ctx.Teachers.InsertOnSubmit(teacher);
                ctx.SubmitChanges();
            }

            ShowAlert("Data Inserted Successfuly!!!");
            this.DataLoad();

            ClearData();
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblTID.Text = GridView1.SelectedRow.Cells[0].Text;
            txtName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtFather.Text = GridView1.SelectedRow.Cells[2].Text;
            txtAddress.Text = GridView1.SelectedRow.Cells[3].Text;
            txtMobile.Text = GridView1.SelectedRow.Cells[4].Text;
            txtNID.Text = GridView1.SelectedRow.Cells[5].Text;

            txtPosition.Text = GridView1.SelectedRow.Cells[7].Text;
        }
    }
}