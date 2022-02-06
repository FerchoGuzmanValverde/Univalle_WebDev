using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class ExSubstitution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CachedDateLabel.Text = DateTime.Now.ToString();    
        }

        public static string GetCurrentDateTime(HttpContext context)
        {
            return DateTime.Now.ToString();
        }


    }
}