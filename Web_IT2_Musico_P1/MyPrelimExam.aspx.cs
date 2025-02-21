using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_IT2_Musico_P1
{
    public partial class PrelimExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string sex;
            if (rbtnMale.Checked)
            {
                sex = "Mr. ";
            }
            else if (rbtnFemale.Checked) 
            {
                sex = "Ms. ";
            }
            else
            {
                sex = "";
            }
            lblOutput.Text = "Good Day, " + sex + txtStudentName.Text + ". Today is " + DateTime.Now.ToLongDateString() +
                ". Your student number is " + txtStudentNum.Text + ". You are enrolled in the " + ddlCourse.SelectedValue +
                " program and currently a " + ddlYearLevel.SelectedValue + "-year student.";
        }
    }
}