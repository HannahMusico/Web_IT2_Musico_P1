﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_IT2_Musico_P1
{
    public partial class CollegePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsView2.Visible = false;
            GridView1.Visible = true;


        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
        //Click Edit, show details view and hide gridview
        protected void lbtnEditDV_Click(object sender, EventArgs e)
        {
            DetailsView2.DefaultMode = DetailsViewMode.Edit;
            DetailsView2.Visible = true;
            GridView1.Visible = false;
        }
        //Refresh
        protected void DetailsView2_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            //Response.Write("<script>alert('Record updated.'</script>");
            Response.Redirect(Request.RawUrl);
        }
        //Add
        protected void btnAddNewRecord_Click(object sender, EventArgs e)
        {
            DetailsView2.DefaultMode = DetailsViewMode.Insert;
            DetailsView2.Visible = true;
            GridView1.Visible = false;
        }
        //Check
        protected void btnCheckAll_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gRow in GridView1.Rows)
            {
                CheckBox ckRowSel = (CheckBox)gRow.FindControl("CheckBox1");
                ckRowSel.Checked = true;
            }
        }
        //Uncheck
        protected void btnUncheckAll_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gRow in GridView1.Rows)
            {
                CheckBox ckRowSel = (CheckBox)gRow.FindControl("CheckBox1");
                ckRowSel.Checked = false;
            }
        }
        //Delete
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int count = 0;

            foreach (GridViewRow gRow in GridView1.Rows)
            {
                CheckBox ckRowSel = (CheckBox)gRow.FindControl("CheckBox1");

                if (ckRowSel.Checked == true)
                {
                    int id = Convert.ToInt32(GridView1.DataKeys[gRow.RowIndex].Values[0]);

                    //delete in DB

                    SqlDSCollegeGV.DeleteParameters.Clear();
                    SqlDSCollegeGV.DeleteParameters.Add("collegeID", TypeCode.Int32, id.ToString());
                    SqlDSCollegeGV.Delete();
                    SqlDSCollegeGV.DataBind();

                    //Response.Write("<script>alert('" + id + "'</script>");
                    count++;
                }
            }

            Response.Write("<script>alert('" + count + "'</script>");
        }
    }
}