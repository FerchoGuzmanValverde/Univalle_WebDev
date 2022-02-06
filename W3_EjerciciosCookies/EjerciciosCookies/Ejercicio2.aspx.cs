using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjerciciosCookies
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        HttpCookie cookieUsuario = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(cookieUsuario == null)
            {
                SinCookie();
            }
            else
            {
                ConCookie();
            }

        }

        void ConCookie()
        {
            btnCambiar.Visible = true;
            lblUsuario.Visible = true;
            lblContrasenia.Visible = true;

            txtContrasenia.Visible = false;
            txtUsuario.Visible = false;
        }

        void SinCookie()
        {
            btnCambiar.Visible = false;
            lblContrasenia.Visible = false;
            lblUsuario.Visible = false;

            txtContrasenia.Visible = true;
            txtUsuario.Visible = true;
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Write("Bienvenido");
            if(cbxRecordar.Checked == true)
            {
                
            }
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            SinCookie();
        }
    }
}