using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Project : System.Web.UI.Page
{
   private static bool Load = true;
    SqlConnection con = new SqlConnection(@"Data Source = localhost\SQLEXPRESS; Initial Catalog = ProjectManagement; Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {
       


        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        disp_data();
        Aname.AutoPostBack = true;
        if (!IsPostBack)
        {
            //if (Load)
            {
                string str = "select * from Data where catid='2'";

                using (SqlCommand cmnd = new SqlCommand(str, con))
                {
                    using (var reader = cmnd.ExecuteReader())
                    {
                        //Iterate through the rows and add it to the list items
                        while (reader.Read())
                        {

                            Aname.Items.Add(reader["Name"].ToString());
                        }
                    }
                }
                //Load = false;
            }
        }
    }

    protected void Add_Click(object sender, EventArgs e)
    {
        int Advisorid;
        string Advisor = "";
        Advisor = Aname.Text;
        string strr = "select id From Data where Name='" + Advisor + "'";
        SqlCommand cmndd = new SqlCommand(strr, con);
        Advisorid = (Int32)cmndd.ExecuteScalar();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Insert into  Project(ProjectName,AdvisorName,Description,id) Values('" + pname.Text + "','" + Aname.Text + "','" + description.Text + "','" + Advisorid + "')";
        cmd.ExecuteNonQuery();
        pname.Text = "";
        description.Text = "";
        disp_data();


    }
    public void disp_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Project";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}