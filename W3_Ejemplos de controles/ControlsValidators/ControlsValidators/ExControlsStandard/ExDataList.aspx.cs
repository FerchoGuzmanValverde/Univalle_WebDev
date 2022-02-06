using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AdRotator
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet myCdcatalog = new DataSet();
                myCdcatalog.ReadXml(MapPath("cdcatalog.xml"));
                cdcatalog.DataSource = myCdcatalog;
                cdcatalog.DataBind();
            }
        }
    }
}