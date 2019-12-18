using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = localhost\SQLEXPRESS; Initial Catalog = ProjectManagement; Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        disp_data();
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int catid;
        string Category = "";
        Category = category.Text;
        string str = "select catId From Category where Category='" + Category + "'";
        SqlCommand cmnd = new SqlCommand(str, con);
        catid= (Int32)cmnd.ExecuteScalar();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Insert into Data (Name,RegNum,Contact,Degree,Description,CatId) Values('" + Name.Text + "','" + regnum.Text + "','" + contact.Text + "','" + degree.Text + "','" + description.Text + "','" + catid + "')";
        cmd.ExecuteNonQuery();
        Name.Text = "";
        regnum.Text = "";
        contact.Text = "";
        degree.Text = "";
        description.Text = "";
        disp_data();
    }
    public void disp_data()
    {
        //con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Data where CatId='"+1+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}