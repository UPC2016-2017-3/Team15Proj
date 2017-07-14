using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
public partial class 视频播放 : System.Web.UI.Page
{   SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
private object _DataItem;
public object DataItem
{
    get {
        return _DataItem;    
    }
}
    protected void Page_Load(object sender, EventArgs e)
{
    
    string s = Application["we"].ToString();
    string w = Request.QueryString["id"].ToString();
    Label1.Text = s;
    Label2.Text = w;
    string sql = "select * from " + s + " where sptitle='" + w + "'";
    conn.Open();
    SqlCommand cmd = new SqlCommand(sql, conn);


    SqlDataReader dr = cmd.ExecuteReader();
    if (dr.Read()) 
    {
      _DataItem =new{  t = dr["spname"].ToString()};
        this.DataBind();
    }
    conn.Close();
    
}
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
