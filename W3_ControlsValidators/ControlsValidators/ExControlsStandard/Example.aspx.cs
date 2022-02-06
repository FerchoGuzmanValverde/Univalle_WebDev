using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class Example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double tipoCambio = 6.96;
            lblTipoCambio.Text = string.Format("Tipo de Cambio: 1 dolar equivale a {0}", tipoCambio);
            if (ddlCambio.SelectedValue == "2")
            {
                double resultado = double.Parse(txtMoneda.Text) * tipoCambio;
                lblResultado.Text = string.Format("Cambio: {0} bs. fecha: {1}", resultado, DateTime.Now.ToLongDateString());
            }
            else
            {
                double resultado = double.Parse(txtMoneda.Text) / tipoCambio;
                lblResultado.Text = string.Format("Cambio: {0} $us. fecha: {1}", resultado, DateTime.Now.ToLongDateString());
            }
        }

        protected void ddlCambio_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCambio.SelectedValue == "2")
            {
                lblMoneda.Text = "Dolares: ";
            }
            else
            {
                lblMoneda.Text = "Bolivianos: ";
            }
        }
    }
}