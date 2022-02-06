using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlesHtmlPractica
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void resumenPerfil(object sender, EventArgs e)
        {
            string nameUser = name.Value;
            string emailUser = email.Value;
            string ageUser, interestOne="", interestTwo="";
            if (radio1.Checked == true)
                ageUser = "under 16";
            else
                ageUser = "16 or older";
            string courseUser = course.Value;
            if (check1.Checked == true)
                interestOne = "Engineering";
            if (check2.Checked == true)
                interestTwo = "Business";

            resumen.InnerHtml = "Your name: " + nameUser + "<br/>Your email: " + emailUser + "<br/>Your age is " + ageUser + "<br/>You are enrolled in: " + courseUser + "<br/>Your interests: " + interestOne + " " + interestTwo;
        }
    }
}