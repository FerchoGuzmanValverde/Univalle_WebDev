using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Univalle.Informatica.Isi.Tests
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Response.Write("Mensaje desde Application_Start. <br/>");                                            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
          //  Response.Write("Mensaje desde Session_Start. <br/>");
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Application_BeginRequest. <br/>");
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
           // Response.Write("Mensaje desde Application_AuthenticateRequest. <br/>");
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            //Response.Write("Mensaje desde Application_Error. <br/>");
        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Response.Write("Mensaje desde Session_End. <br/>");
        }

        protected void Application_End(object sender, EventArgs e)
        {
           // Response.Write("Mensaje desde Application_End. <br/>");
        }
    }
}