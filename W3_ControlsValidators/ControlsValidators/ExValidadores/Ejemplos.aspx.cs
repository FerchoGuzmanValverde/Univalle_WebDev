using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExValidadores
{
    public partial class Ejemplos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int numero = int.Parse(txtNumero.Text);
            if (numero % 3 == 0 && numero % 5 == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {

        }
    }
}