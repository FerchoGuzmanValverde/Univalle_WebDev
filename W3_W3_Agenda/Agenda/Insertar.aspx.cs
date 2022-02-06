using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Insertar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "cerrar", "window.close();", true);
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            byte sexo;
            if (rbtHombre.Checked == true)
            { sexo = 0; }
            else { sexo = 1; }


            SqlCommand comando = new SqlCommand(@"INSERT INTO Amigo(Nombre, Direccion, TelCasa, TelCel, FechaNac, Apodo, Sexo) 
                                                values('" + txtNombre.Text + "','" + txtDireccion.Text + "','" + txtTelfCasa.Text + "','" + txtTelfCelular.Text + "','" + CalendarFecha.SelectedDate + "','" + txtApodo.Text + "','" + sexo + "')",
                                                          conexion);

            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el amigo";
            conexion.Close();
            Response.Redirect("Principal.aspx");
        }
    }
}