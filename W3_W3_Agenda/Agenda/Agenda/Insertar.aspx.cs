using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Insertar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            byte sexo;
            if(rbtHombre.Checked == true)
            { sexo = 0; }
            else { sexo = 1; }


            SqlCommand comando = new SqlCommand(@"INSERT INTO Amigo(Nombre, Direccion, TelCasa, TelCel, FechaNac, Apodo, Sexo) 
                                                values('" + txtNombre.Text + "','" + txtDireccion.Text + "','" + txtTelfCasa.Text + "','" + txtTelfCelular.Text + "','" + CalendarFecha.SelectedDate + "','" + txtApodo.Text + "','" + sexo +"')", 
                                                          conexion);

            comando.ExecuteNonQuery();
            Label1.Text = "Se registro el amigo";
            conexion.Close();
            Response.Redirect("Principal.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            limpiar();
            Response.Redirect("Principal.aspx");
        }

        void limpiar()
        {
            txtNombre.Text = "";
            txtDireccion.Text = "";
            txtTelfCasa.Text = "";
            txtTelfCelular.Text = "";
            txtApodo.Text = "";
        }
    }
}