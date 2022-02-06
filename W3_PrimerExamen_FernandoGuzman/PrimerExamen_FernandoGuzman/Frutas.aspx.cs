using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerExamen_FernandoGuzman
{
    public partial class Frutas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void verificar(object sender, EventArgs e)
        {
            string nameUser = name.Value;
            string favoriteFruit = favorite.Value;
            string emailUser = email.Value;

            if (cero.Checked == true || one.Checked == true)
            {
                label1.InnerHtml = "Dear " + nameUser + ", eating fruits is healthy. Try to eat more "+favoriteFruit+".";
            }
            if (two.Checked == true || more.Checked == true)
            {
                label1.InnerHtml = "Dear " + nameUser + ", congrats for eating fruits, especially: " + favoriteFruit + ".";
            }

            if(brochure.Checked == true)
            {
                label2.InnerHtml = "You will recieve a montly brochure on the following email: " + emailUser;
            }
        }
    }
}