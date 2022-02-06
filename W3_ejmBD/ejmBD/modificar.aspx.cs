using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ejmBD
{
    public partial class modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select name from users " +
                  " where id='" + this.TextBox1.Text + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                this.TextBox2.Text = registro["name"].ToString();
                
            }
            else
                this.Label1.Text = "No existe un usuario con dicho nombre";
            conexion.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update users set " +
                     "name='" + this.TextBox2.Text + "' where id='" + this.TextBox1.Text + "'", conexion);
            int cantidad = comando.ExecuteNonQuery();
            if (cantidad == 1)
                this.Label2.Text = "Datos Modificados";
            else
                this.Label2.Text = "No existe el usuario";
            conexion.Close();
        }
    }
}