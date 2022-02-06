using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzman_DoraSolares_Examen
{
    public partial class InsertarForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSourceInsertar.InsertParameters["name"].DefaultValue = txtNombre.Text;
                SqlDataSourceInsertar.InsertParameters["id_format"].DefaultValue = (ddlFormatos.SelectedIndex + 1).ToString();
                SqlDataSourceInsertar.Insert();
                lblResultado.Text = "Video Insertado";
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Error al insertar el video...";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }

    }
}