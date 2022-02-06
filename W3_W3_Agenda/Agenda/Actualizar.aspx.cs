using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Actualizar : System.Web.UI.Page
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

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                this.Label1.Text = "";
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                byte sexo;
                if (rbtHombre.Checked == true)
                { sexo = 0; }
                else { sexo = 1; }


                SqlCommand comando = new SqlCommand(@"UPDATE Amigo SET Nombre = '" + txtNombre.Text + "', Direccion = '" + txtDireccion.Text + "', TelCasa = '"+ txtTelfCasa.Text +"', TelCel = '"+ txtTelfCelular.Text +"', FechaNac = '"+ txtFechaNacimiento.Text +"', Apodo = '"+ txtApodo.Text +"', Sexo = '"+ sexo +"' WHERE Nombre = '"+ txtNombreBuscar.Text +"'", conexion);

                comando.ExecuteNonQuery();
                Label1.Text = "Se actualizo el amigo";
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
                    this.Label1.Text = "";
                    txtNombre.Text = txtNombreBuscar.Text;
                    txtDireccion.Text = registro["Direccion"].ToString();
                    txtTelfCelular.Text = registro["TelCel"].ToString();
                    txtTelfCasa.Text = registro["TelCasa"].ToString();
                    txtFechaNacimiento.Text = registro["FechaNac"].ToString();
                    txtApodo.Text = registro["Apodo"].ToString();
                    if (registro["Sexo"].ToString() == "1")
                    { rbtMujer.Checked = true; }
                    else { rbtHombre.Checked = true; }
                }
                else
                    this.Label1.Text = "No existe un amigo con dicho nombre";
                conexion.Close();
            }
        }
    }
}