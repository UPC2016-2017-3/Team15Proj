using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class tjkc : System.Web.UI.Page
{  
    SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
        

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.FileName != null)
        {

            string savePath = Server.MapPath("~/sp/");//指定上传文件在服务器上的保存路径
            //检查服务器上是否存在这个物理路径，如果不存在则创建
            if (!System.IO.Directory.Exists(savePath))
            {

                System.IO.Directory.CreateDirectory(savePath);
            }
            string t = TextBox2.Text.ToString();

            string sql = "insert into "+t+"(spname,sptitle)values('" + FileUpload1.FileName + "','" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();
            int i = cmd.ExecuteNonQuery();

            conn.Close();

            if (i > 0)
            {
                savePath = savePath + "\\" + FileUpload1.FileName;
                FileUpload1.SaveAs(savePath);
                Response.Write("添加成功");
            }

        }
    }
}