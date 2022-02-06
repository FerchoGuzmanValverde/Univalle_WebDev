using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ejmBD
{
    public partial class consultar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select * from users " +
                  " where name='" + this.TextBox1.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
                this.Label1.Text = "Id:" + registro["id"] + "<br>" +
                                   "Name:" + registro["name"];
            else
                this.Label1.Text = "No existe un usuario con dicho nombre";
            conexion.Close();
        }
    }
}