using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Groups : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = localhost\SQLEXPRESS; Initial Catalog = ProjectManagement; Integrated Security = True");
    static bool Load = true;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //Students.se == false;
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        disp_data();
        Students.AutoPostBack = true;
        if (!IsPostBack)
        {
            //{
            //if (Load)
            {
                string id = "1";
                string str = "select * from Data where CatId='" + id + "' ";
                SqlCommand cmnd = new SqlCommand(str, con);
                SqlDataReader reader = cmnd.ExecuteReader();

                while (reader.Read())
                {

                    Students.Items.Add(reader["Name"].ToString());
                }
                reader.Close();
                string query = "select * from Project";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader readerr = cmd.ExecuteReader();

                while (readerr.Read())
                {

                    projects.Items.Add(readerr["ProjectName"].ToString());
                }
                readerr.Close();
                //Load = false;
            }
        }
       


    }

    protected void Group_Click(object sender, EventArgs e)
    {

    }

    protected void Students_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Students_SelectedIndexChanged1(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int Projectid;
        string projectName = "";
        projectName = projects.Text;
        string strr = "select ProjectId From Project where ProjectName='" + projectName + "'";
        SqlCommand cmndd = new SqlCommand(strr, con);
        Projectid = (Int32)cmndd.ExecuteScalar();
        con.Close();
        con.Open();
        for (int i = 0; i < Students.Items.Count; i++)
        {
             if (Students.Items[i].Selected == true)

            {
                 string str = "Insert into  Groups(GroupNo,Students,Project,ProjectId) Values('" + gNo.Text + "','" + Students.Items[i].ToString() + "','" + projects.Text + "','" + Projectid + "')";
                SqlCommand com = new SqlCommand(str, con);
                com.ExecuteNonQuery();
            }

        }
        gNo.Text = "";
        disp_data();
    }

    public void disp_data()
    {
        //con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Groups";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}