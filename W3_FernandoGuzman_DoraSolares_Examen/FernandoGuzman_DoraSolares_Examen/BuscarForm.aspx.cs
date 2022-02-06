using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzman_DoraSolares_Examen
{
    public partial class BuscarForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblNombre.Text = "";
            lblFormato.Text = "";
            try
            {
                SqlDataSourceSelect.SelectParameters["id"].DefaultValue = txtCodigo.Text;
                DataView dv = (DataView)SqlDataSourceSelect.Select(DataSourceSelectArguments.Empty);

                if(dv.Table.Rows.Count > 0)
                {
                    lblNombre.Text = (string)dv.Table.Rows[0][0];
                    lblFormato.Text = (string)dv.Table.Rows[0][1];
                }
                else
                {
                    lblMensaje.Text = "El registro no existe..";
                }

            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Ocurrio un error al encontrar el registro";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Principal.aspx");
        }
    }
}