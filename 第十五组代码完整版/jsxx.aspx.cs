using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class jsxx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string myName1Value;
        myName1Value = Request.Cookies["myCookie"].Value;
        Label1.Text = "编码是'" + myName1Value + "'的个人信息";
        SqlConnection sqlCon = new SqlConnection();
        //实例化SqlConnection对象连接数据库的字符串
  
        sqlCon.ConnectionString = "Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True";
  
        //定义SQL语句
        string SqlStr = "SELECT 教师编码,教师姓名,教师密码,教授课程,性别 from 教师 where 教师编码= '" + myName1Value + "'";
        //实例化SqlDataAdapter对象
        SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
        //实例化数据集DataSet
        DataSet ds = new DataSet();
        da.Fill(ds, "Discussion");
        //绑定DataList控件
        GridView.DataSource = ds;//设置数据源，用于填充控件中的项的值列表
        GridView.DataBind();//将控件及其所有子控件绑定到指定的数据源
       
    }
}