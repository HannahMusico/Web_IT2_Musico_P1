using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_IT2_Musico_P1
{
    public partial class MyPageMusico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblUsername.Text = txtUsername.Text;
        }
        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (rbtnMale.Checked)
            {
                lblSex.Text = "Your sex is " + rbtnMale.Text;
            }
            else
            {
                lblSex.Text = "Your sex is " + rbtnFemale.Text;
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblDate.Text = "You selected: " + Calendar1.SelectedDate.ToString("D");
        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            var msg = "";
            
            if (chkYL1.Checked)
            {
                msg = "Year Level Selected: " + chkYL1.Text;
            }
            if (chkYL2.Checked)
            {
                msg = "Year Level Selected: " + chkYL2.Text;
            }
            if (chkYL3.Checked)
            {
                msg = "Year Level Selected: " + chkYL3.Text;
            }
            if (chkYL4.Checked)
            {
                msg = "Year Level Selected: " + chkYL4.Text;
            }

            lblYearLevel.Text = msg;
        }
    }
}