using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //First way
            /*HttpCookie cookie1 = new HttpCookie("age", txtage.Text);
            cookie1.Expires = new DateTime(2019, 12, 25);
            Response.Cookies.Add(cookie1);*/
            
            /*
            //second way
            Response.Cookies["age"].Value = txtage.Text;
            Response.Cookies["age"].Expires = DateTime.Now.AddDays(1);
            */
            /*
              //third way
            Response.Cookies["person"]["age"] = txtage.Text;
            Response.Cookies["person"]["name"] = "Juan";
            */
            
            Label2.Text = "Se creó la cookie";
        }
    }
}