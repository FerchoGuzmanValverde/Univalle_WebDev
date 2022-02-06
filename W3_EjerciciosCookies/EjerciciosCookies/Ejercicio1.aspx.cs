using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjerciciosCookies
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        HttpCookie cookieColor = new HttpCookie("color", "#FFFFFF");
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Response.Cookies.Add(cookieColor);
            if (this.Request.Cookies["color"].Value != null)
            {
                bodyE1.Attributes.Add("style", "background-color: " + this.Request.Cookies["color"].Value);
            }
        }

        protected void btnPersonalizar_Click(object sender, EventArgs e)
        {
            if(rbtRojo.Checked == true)
            {
                cookieColor = new HttpCookie("color", "#cb3234");
            }
            else if(rbtAzul.Checked == true)
            {
                cookieColor = new HttpCookie("color", "#3b83bd");
            }
            else
            {
                cookieColor = new HttpCookie("color", "#008f39");
            }
            cookieColor.Expires = new DateTime(2019, 12, 25);
            this.Response.Cookies.Add(cookieColor);
        }
    }
}