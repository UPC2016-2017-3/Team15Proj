using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class xx : System.Web.UI.Page
{   SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {
        string e2 = Request.QueryString["id"].ToString();
        Label1.Text = e2;
        Application["we"] = e2;
        string sql = "select *from "+e2+"";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.SelectCommand.CommandType = CommandType.Text;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        
    }
}