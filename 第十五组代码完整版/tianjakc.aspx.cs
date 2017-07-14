using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class tianjakc : System.Web.UI.Page
{
    
    SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
   
        
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
           
                string savePath = Server.MapPath("~/kctp/");//指定上传文件在服务器上的保存路径
                //检查服务器上是否存在这个物理路径，如果不存在则创建
                if (!System.IO.Directory.Exists(savePath))
                {   
                
                    System.IO.Directory.CreateDirectory(savePath);
                }
                
                string sql = "insert into kctp(kctpname,kctptitle)values('" + FileUpload1.FileName + "','" + TextBox1.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, conn);
               
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                
                conn.Close();
               
                if (i > 0)
                {
                    savePath = savePath + "\\" + FileUpload1.FileName;
                    FileUpload1.SaveAs(savePath);
                    Response.Write("图片添加成功");
                }
               
            }
        if (1 == 1)
        {
            string e1 = TextBox1.Text;
            string sqlStr = "create table ";
            sqlStr += e1 + "( ";
            sqlStr += "spname varchar(50),";
            //col0为列名，同样可以改为通过从textbox中获取
            //identity(1,1)是标记递增种子
            //primary key定义主键

           
            sqlStr += "sptitle varchar(50),";

           
            sqlStr += " )";
            conn.Open();
            SqlCommand sqlCommand = conn.CreateCommand();
            string sql = string.Format(sqlStr);//创建表内容
            sqlCommand.CommandText = sql;
            sqlCommand.ExecuteNonQuery();
            conn.Close();
        }
       
        
        }
    }
