using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class jsdl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void Button1_Click(object sender, EventArgs e)
     {
         //实现注册
         Label1.Text = "welcome to 教师端'"+TextBox1.Text+"'" ;
        
            SqlConnection Con = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
       
       
         Con.Open();
         String s = "insert into 教师(教师编码,教师密码,教师姓名,性别,教授课程) values ('"+TextBox1.Text + "','" + TextBox2.Text + "','aimi' ,'nv','lpl')";
         SqlCommand cmd = new SqlCommand(s, Con);
         cmd.ExecuteNonQuery();
         Con.Close();
     }

     protected void Button2_Click(object sender, EventArgs e)
     {
         //实现登录验证   SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
        
         string strCo = "Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True";
         SqlConnection conn = new SqlConnection(strCo);
         string strsql = "select * from 教师 where 教师编码=@username and 教师密码=@pwd";
         SqlCommand cmd = new SqlCommand(strsql, conn);
         cmd.Parameters.AddWithValue("@username", TextBox1.Text);
         cmd.Parameters.AddWithValue("pwd", TextBox2.Text);
         conn.Open();
         SqlDataAdapter dt = new SqlDataAdapter(cmd);
         DataTable da = new DataTable();
         dt.Fill(da);
           
         if (da.Rows.Count>0)
         {
            
                
                 Label2.Text = "登陆成功!";
                 Response.Redirect("tianjakc.aspx");
                
            
         }
         else
         {
             Label2.Text = "登陆失败，请检测输入!";
         }
         conn.Close();
         
     }

     protected void Button3_Click(object sender, EventArgs e)
     {
         
         HttpCookie objCookie = new HttpCookie("myCookie", TextBox1.Text);
         Response.Cookies.Add(objCookie);
         Response.Redirect("jsxx.aspx");
     }

    
    }


