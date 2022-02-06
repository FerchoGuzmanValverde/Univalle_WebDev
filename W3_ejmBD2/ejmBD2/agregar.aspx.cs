using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejmBD2
{
    public partial class agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["id"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = TextBox2.Text;
            SqlDataSource1.Insert();
            Label1.Text = "Se efectuó el insert";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.SelectParameters["id"].DefaultValue = TextBox1.Text;

            DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            string nombre = (string)dv.Table.Rows[0][0];
            TextBox2.Text = nombre;

            Label1.Text = "Seleccionado";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource3.UpdateParameters["id"].DefaultValue = TextBox1.Text;
            SqlDataSource3.UpdateParameters["name"].DefaultValue = TextBox2.Text;
            SqlDataSource3.Update();
            Label1.Text = "Actualizado";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource4.DeleteParameters["id"].DefaultValue = TextBox1.Text;
            SqlDataSource4.Delete();
            Label1.Text = "Eliminado";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}