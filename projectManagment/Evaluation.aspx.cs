using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Evaluation : System.Web.UI.Page
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
        List<int> id = new List<int>();
        int Groupid;
        string str = "select GroupId from Groups where GroupNo='" + gNo.Text + "' ";
        SqlCommand cmnd = new SqlCommand(str, con);
        SqlDataReader reader = cmnd.ExecuteReader();

        while (reader.Read())
        {
            Groupid=Convert.ToInt32( reader["GroupId"].ToString());
            id.Add(Groupid);
           
        }
        reader.Close();
        foreach(var v in id)
        {
            string query = "Insert into  Evaluation(GroupNo,TotalMarks,ObtainedMarks,Comments,GroupId) Values('" + gNo.Text + "','" + TM.Text + "','" + OM.Text + "','" + comments.Text + "','" + v + "')";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();
        }
        gNo.Text = "";
        TM.Text = "";
        OM.Text = "";
        comments.Text = "";
        disp_data();
    }
    public void disp_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Evaluation";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}