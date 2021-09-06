using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace PizzaStore_WebApp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["PetDb"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(conString))
            {
                    SqlCommand cmd = new SqlCommand("spAddNewCustomer",conn);
                //SqlDataAdapter da = new SqlDataAdapter();
                //DataTable dt = new DataTable();
                //DataRow dr = dt.NewRow();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", tbName.Text);
                    cmd.Parameters.AddWithValue("@Zipcode", tbZipcode.Text);
                    cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
                    cmd.Parameters.AddWithValue("@Username", tbUsername.Text);
                    cmd.Parameters.AddWithValue("@Password", tbPassword.Text);
                cmd.Connection = conn;
                conn.Open();
                int record = cmd.ExecuteNonQuery();
                if (record != 0)
                {
                    MessageBox.Show("Data Inserted");
                }
                conn.Close();
                tbName.Text = "";
                tbZipcode.Text = "";
                tbEmail.Text = "";
                tbUsername.Text = "";
                tbPassword.Text = "";

            }
        }
    }
}