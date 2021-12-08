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

namespace 图书管理系统
{
    public partial class bookmanage : System.Web.UI.Page
    {


        protected void Button1_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from books where 1=1";
            if (TextBox1.Text != "")
            {
                s += " and 图书编号 like '%" + TextBox1.Text + "%'";
            }
            if (TextBox2.Text != "")
            {
                s += " and 图书名称 like '%" + TextBox2.Text + "%'";
            }
            if (TextBox3.Text != "")
            {
                s += " and 作者 like '%" + TextBox3.Text + "%'";
            }
            if (TextBox4.Text != "")
            {
                s += " and 出版社 like '%" + TextBox4.Text + "%'";
            }
            if (TextBox5.Text != "")
            {
                s += " and 图书简介 like '%" + TextBox5.Text + "%'";
            }
            DataTable dr = d.GetDataTable(s);
            this.GridView1.DataSource = dr;
            dr.Columns[0].ColumnName = "ID";
            dr.Columns[1].ColumnName = "ID ресурса";
            dr.Columns[2].ColumnName = "Название ресурса";
            dr.Columns[3].ColumnName = "Создатель ресурса";
            dr.Columns[4].ColumnName = "Описание";
            dr.Columns[5].ColumnName = "URL";
            this.GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "update books set 图书名称='" + TextBox2.Text + "',作者='" + TextBox3.Text + " ', 出版社='" + TextBox4.Text + "',图书简介='" + TextBox5.Text  + "'  where 图书编号='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            string s1 = "select * from books  ";
            dr = d.GetDataTable(s1);
            this.GridView1.DataSource = dr;
            dr.Columns[0].ColumnName = "ID";
            dr.Columns[1].ColumnName = "ID ресурса";
            dr.Columns[2].ColumnName = "Название ресурса";
            dr.Columns[3].ColumnName = "Создатель ресурса";
            dr.Columns[4].ColumnName = "Описание";
            dr.Columns[5].ColumnName = "URL";
            this.GridView1.DataBind();
            Response.Write("<script>alert('Успешно изменено！')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('Пожалуйста, введите номер ресурса')</script>");
            }
            else
            {
                Sqlclass d = new Sqlclass();
                string s = "select * from books where 图书编号='" + TextBox1.Text + "'";
                DataTable dr = d.GetDataTable(s);
                if (dr.Rows.Count > 0)
                {
                    string str = (string)TextBox1.Text;
                    Sqlclass dd = new Sqlclass();
                    string ss = "delete books where 图书编号='" + str + "'";
                    int f = dd.GetRun(ss);
                    string s1 = "select * from books  ";
                    dr = d.GetDataTable(s1);
                    this.GridView1.DataSource = dr;
                    dr.Columns[0].ColumnName = "ID";
                    dr.Columns[1].ColumnName = "ID ресурса";
                    dr.Columns[2].ColumnName = "Название ресурса";
                    dr.Columns[3].ColumnName = "Создатель ресурса";
                    dr.Columns[4].ColumnName = "Описание";
                    dr.Columns[5].ColumnName = "URL";
                    this.GridView1.DataBind();
                    Response.Write("<script>alert('Ресурс успешно удален')</script> ");

                }
                else
                {
                    Response.Write("<script>alert('Нет такой информации о ресурсе')</script>");

                }
            }   
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Sqlclass d = new Sqlclass();
            string s = "select * from books where 图书编号='" + TextBox1.Text + "'";
            DataTable dr = d.GetDataTable(s);
            if (dr.Rows.Count > 0)
            {
                Response.Write("<script>alert('Повторяющийся номер ресурса！')</script>");

            }
            else
            {

                string s1 = "insert into books(图书编号,图书名称,作者,出版社,图书简介) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text  + "','" + TextBox4.Text + "','"+ TextBox5.Text +"')";
                int f = d.GetRun(s1);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                s1 = "select * from books  ";
                dr = d.GetDataTable(s1);
                this.GridView1.DataSource = dr;
                dr.Columns[0].ColumnName = "ID";
                dr.Columns[1].ColumnName = "ID ресурса";
                dr.Columns[2].ColumnName = "Название ресурса";
                dr.Columns[3].ColumnName = "Создатель ресурса";
                dr.Columns[4].ColumnName = "Описание";
                dr.Columns[5].ColumnName = "URL";
                this.GridView1.DataBind();
                Response.Write("<script>alert('Удалось добавить информацию о ресурсе')</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("mains.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["shenfen"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (Session["shenfen"].ToString() == "学生")
            {
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
            }
            Sqlclass d = new Sqlclass();
            string s = "select * from books  ";
            DataTable dr = d.GetDataTable(s);
            this.GridView1.DataSource = dr;
            dr.Columns[0].ColumnName = "ID";
            dr.Columns[1].ColumnName = "ID ресурса";
            dr.Columns[2].ColumnName = "Название ресурса";
            dr.Columns[3].ColumnName = "Создатель ресурса";
            dr.Columns[4].ColumnName = "Описание";
            dr.Columns[5].ColumnName = "URL";
            this.GridView1.DataBind();
        }
    }
}
