using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.DynamicData;

namespace UniserWeb
{
    public partial class _Default : Page
    {
        protected void Buttoncat_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("data source=DESKTOP-GIMUK1I\\SQLEXPRESS;database=Uniser;integrated security=SSPI;"))
            {
                SqlDataAdapter sde = new SqlDataAdapter("Select * from Products where CategoryId="+category.Value, con);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                DataGrid1.DataSource = ds;
                DataGrid1.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("data source=DESKTOP-GIMUK1I\\SQLEXPRESS;database=Uniser;integrated security=SSPI;"))
            {
                SqlDataAdapter sde = new SqlDataAdapter("Select * from Products", con);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                Turbo_Product.DataSource = ds;
                Turbo_Product.DataBind();
                DataGrid1.DataSource = ds;
                DataGrid1.DataBind();
            }
            
           
        }
       
    }
}