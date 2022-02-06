using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlesHtmlPractica
{
    public partial class ControPeso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void funcionDefinir(object sender, EventArgs e)
        {
            string nameUser = name.Value.ToString();
            bool feet = false;
            bool pounds = false;
            if(check1.Checked == true)
            {
                feet = true;
            }
            if(check2.Checked == true)
            {
                pounds = true;
            }
            if(Radio1.Checked == true)
            {
                //Mujer
                if(feet == true)
                {
                    if(pounds == true)
                    {
                        answer.InnerHtml = "Peso Ideal";
                    }
                    else
                    {
                        answer.InnerHtml = "Le falta peso";
                    }
                }
                else
                {
                    if(pounds == true)
                    {
                        answer.InnerHtml = "Sobrepeso";
                    }
                    else
                    {
                        answer.InnerHtml = "En observacion";
                    }
                }
            }
            else
            {
                //Hombre
                if (feet == true)
                {
                    if (pounds == true)
                    {
                        answer.InnerHtml = "Continue con la misma dieta";
                    }
                    else
                    {
                        answer.InnerHtml = "Debe engordar  ";
                    }
                }
                else
                {
                    if (pounds == true)
                    {
                        answer.InnerHtml = "Debe adelgazar";
                    }
                    else
                    {
                        answer.InnerHtml = "En observacion";
                    }
                }
            }
        }
    }
}