using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            // 存在 id 参数 }

            s = Request.QueryString["id"].ToString();
            Label2.Text = s;
            Application["sum"] = this.Label2.Text;
        }
        else
        {
            s = (string)Application["sum"];
            Label2.Text = s;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=UP;Integrated Security=True");
        conn.Open();
        String h = "insert into 信息交流(信息,信息人) values ('" + TextBox1.Text + "','" + s + "')";
        SqlCommand cmd = new SqlCommand(h, conn);
        cmd.ExecuteNonQuery();
        
    
        String t = "select  *from 信息交流 where 条数 in (select max(条数) from 信息交流);";
        SqlCommand cd = new SqlCommand(t, conn);
        SqlDataReader dr = cd.ExecuteReader();

        while (dr.Read())
        {
            if (dr["信息"] != System.DBNull.Value)
            {
                this.TextBox2.Text += dr["信息人"].ToString() + ':';
                this.TextBox2.Text += dr["信息"].ToString() + '\n';

            }
        }
        TextBox1.Text = "";
    }
}