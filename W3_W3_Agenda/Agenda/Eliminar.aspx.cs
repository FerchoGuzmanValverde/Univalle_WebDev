using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Eliminar : System.Web.UI.Page
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                this.Label1.Text = "";
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand(@"DELETE FROM Amigo WHERE Nombre = '"+ txtNombreBuscar.Text +"'", conexion);

                comando.ExecuteNonQuery();
                Label1.Text = "Se elimino el amigo";
                conexion.Close();
                Response.Redirect("Principal.aspx");
            }
            catch (Exception ex)
            {
                this.Label1.Text = "No se pudo modificar.";
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNombreBuscar.Text != "")
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT * FROM Amigo WHERE Nombre='" + txtNombreBuscar.Text + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    lblDireccion.Text = registro["Direccion"].ToString();
                    lblCelular.Text = registro["TelCel"].ToString();
                    lblTelefonoCasa.Text = registro["TelCasa"].ToString();
                    lblFechaNacimiento.Text = registro["FechaNac"].ToString();
                    lblApodo.Text = registro["Apodo"].ToString();
                    if (registro["Sexo"].ToString() == "1")
                    { lblSexo.Text = "Mujer"; }
                    else { lblSexo.Text = "Hombre"; }
                }
                else
                    this.Label1.Text = "No existe un amigo con dicho nombre";
                conexion.Close();
            }
        }
    }
}