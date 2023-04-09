using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniserWeb
{
    public partial class Create1 : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("data source=DESKTOP-GIMUK1I\\SQLEXPRESS;database=Uniser;integrated security=SSPI;"))
            {
                if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
                {
                    string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string SaveLocation = Server.MapPath("~/img/product") + "\\" + fn;
                    try
                    {
                        FileUpload1.PostedFile.SaveAs(SaveLocation);
                        FileUploadStatus.Text = "The file has been uploaded.";
                    }
                    catch (Exception ex)
                    {
                        FileUploadStatus.Text = "Error: " + ex.Message;
                    }
                }
                else
                {
                    FileUploadStatus.Text = "Please select a file to upload.";
                }
                SqlCommand cmd = new SqlCommand("INSERTINTO TEST (name,fathername) VALUES('" + UserName.Text + "','" + SubName.Text + "','"+Price.Text+ "','"+ FileUpload1.PostedFile.FileName + "' )", con);

                con.Open();

                cmd.ExecuteNonQuery();

                con.Close();
            }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}