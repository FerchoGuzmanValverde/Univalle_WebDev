using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Tests
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstName = Request.QueryString["firstName"];
            string lastName = Request.QueryString["lastName"];
            int id = 0;
            if (!String.IsNullOrEmpty(Request.QueryString["idPerson"]))
            {
                 id = int.Parse(Request.QueryString["idPerson"]);      
            }
       

        }
        //buton click
        /*/aqui se  coloca el codigo de recibir cookies*/
        
    }
}