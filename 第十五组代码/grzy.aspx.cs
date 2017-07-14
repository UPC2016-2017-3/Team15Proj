using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class grzy : System.Web.UI.Page
{   SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
       
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Application["sum"];
        string sql = "select count(*) from student where YHM='" + Label1.Text + "'";
      
        SqlCommand cmd = new SqlCommand(sql, conn);
        try
        {
            conn.Open();
            int cnt = (int)cmd.ExecuteScalar();
            //如果有学生记录存在
            if (cnt != 0)
            {
                sql = "select * from student where YHM='" + Label1.Text + "'";
                cmd = new SqlCommand(sql, conn);
                //获得记录行
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
               
               Label2.Text = sdr[2].ToString();

               Image1.ImageUrl ="./tx\\"+sdr[3].ToString();
                
            }
        }
        finally
        {
            conn.Close();
        }

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string savePath = Server.MapPath("~/tx/");//指定上传文件在服务器上的保存路径
            //检查服务器上是否存在这个物理路径，如果不存在则创建
            if (!System.IO.Directory.Exists(savePath))
            {

                System.IO.Directory.CreateDirectory(savePath);
            }

            string sql = "update student set TX='" + FileUpload1.FileName + "'where YHM='" + Label1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            try
            {
                conn.Open();
                int rows = cmd.ExecuteNonQuery();
                //修改成功
                if (rows == 1)
                {
                    Response.Write("<script>alert('修改信息成功！');</script>");
                    savePath = savePath + "\\" + FileUpload1.FileName;
                    FileUpload1.SaveAs(savePath);
                }
            }
            finally
            {
                conn.Close();
            }





        }
    }
}