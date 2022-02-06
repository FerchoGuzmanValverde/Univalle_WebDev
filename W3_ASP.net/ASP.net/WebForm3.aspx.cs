using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Tests
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double number1 = 0;
            double number2 = 0;
            
            if (!String.IsNullOrEmpty(Request.QueryString["number1"]))
            {
                number1 = double.Parse(Request.QueryString["number1"]);
            }
            if (!String.IsNullOrEmpty(Request.QueryString["number2"]))
            {
                number2 = double.Parse(Request.QueryString["number2"]);
            }

            Response.Write(string.Format("La suma es: {0}", number1+number2));
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*
            int id = 1;
            Response.Redirect(string.Format("/WebForm2.aspx?FirstName=Marco&LastName=Polo,$id=2",id));*/
        }
        //COOKIE(hacerlo dentro un boton)
        //HttpCookie cookie=new HttpCookie("Nombre","Edison");
        //cookie.Expires=DateTime.Now.AddMinutes(1);
        //Response.Cookies.Add(cookie);
        //----->codigo para leer el cookie<-----
        //string nombre=string.Empty;
        //if(Request.Cookies["Nombre"]!=null)
        //{
        //name=Request.Cookies["Nombre"].Value;
        //}
    }
}