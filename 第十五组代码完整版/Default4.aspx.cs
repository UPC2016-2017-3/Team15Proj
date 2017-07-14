using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    }
         protected void Button1_Click1(object sender, EventArgs e)
         {
              
        string yhm2 = yhm1.Text;
        string mm = mm1.Text;

        string sex = RadioButton1.Checked ? "男" : "女";

        //定义SQL语句
        string sql2 = "insert into student values('" + yhm2 + "','" + mm + "','" + null
                    + "','" + sex + "')";
        //获得配置文件中的连接字符串
       
        SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
        SqlCommand cmd = new SqlCommand(sql2, conn);
        try
        {
            conn.Open();
            int row=cmd.ExecuteNonQuery();

          
            //添加记录成功
            if (row == 1)
            {
                
                Response.Write("<script>alert('注册成功！');</script>");
            }
            else {
                Response.Write("<script>alart('用户名已经存在');</script>");
            }
        }

        finally
        {
            conn.Close();
        }
      
    }
         protected void Button2_Click1(object sender, EventArgs e)
         {
             Response.Redirect("denglu.aspx");
         }
}

