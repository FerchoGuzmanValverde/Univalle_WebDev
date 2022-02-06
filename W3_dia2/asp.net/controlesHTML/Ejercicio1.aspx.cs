using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controlesHTML
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsum_Click(object sender, EventArgs e)
        {
            int number1 = int.Parse(txtNumero1.Text);
            int number2 = int.Parse(txtNumero2.Text);
            lblResultado.Text = string.Format("The sum is: " + (number1 + number2));


        }
    }
}