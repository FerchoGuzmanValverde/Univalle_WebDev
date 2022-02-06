using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Buscar : System.Web.UI.Page
    {
        Amigo amigo = new Amigo();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text != "")
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("SELECT * FROM Amigo WHERE Nombre='" + txtNombre.Text + "'", conexion);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}