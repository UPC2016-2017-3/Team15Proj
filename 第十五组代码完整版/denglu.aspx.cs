using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class denglu : System.Web.UI.Page
{
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string yhm = yhm2.Text.Trim();
        string yy = yhm2.Text;
        string mm = mm2.Text;
      

           SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
 

        try
        {
            string sql = "select * from  student where student.YHM=@username and student.MM=@pwd";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@username", yhm2.Text);
            cmd.Parameters.AddWithValue("@pwd", mm2.Text);

            conn.Open();
            //cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
               Response.Write("登录成功！");
               Response.Redirect("Default2.aspx?id="+yhm2.Text);
             
            }  
            else
            {
               Response.Write("用户名或密码不正确");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            conn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhuce.aspx");
    }
}