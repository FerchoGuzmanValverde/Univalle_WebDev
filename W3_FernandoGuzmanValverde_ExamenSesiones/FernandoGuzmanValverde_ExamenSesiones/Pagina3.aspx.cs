using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzmanValverde_ExamenSesiones
{
    public partial class Pagina3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["dormitorios"] != null)
            {
                Dormitorios();
            }
            if(Session["precio"] != null)
            {
                Precios();
            }
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            Dormitorios1();
            Precios1();
            if(Session["dormitorios"] != null && Session["precio"] != null)
            {
                Response.Redirect("Pagina2.aspx");
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Dormitorios1();
            Precios1();
            if (Session["dormitorios"] != null && Session["precio"] != null)
            {
                Response.Redirect("Pagina4.aspx");
            }
        }

        void Dormitorios()
        {
            if (Session["dormitorios"].ToString() == "1")
            {
                rbt1.Checked = true;
            }
            else if (Session["dormitorios"].ToString() == "2")
            {
                rbt2.Checked = true;
            }
            else if (Session["dormitorios"].ToString() == "3")
            {
                rbt3.Checked = true;
            }
            else if (Session["dormitorios"].ToString() == "4")
            {
                rbt4.Checked = true;
            }
            else
            {
                rbt5.Checked = true;
            }
        }

        void Dormitorios1()
        {
            if (rbt1.Checked == true)
            {
                Session["dormitorios"] = rbt1.Text;
            }
            else if (rbt2.Checked == true)
            {
                Session["dormitorios"] = rbt2.Text;
            }
            else if (rbt3.Checked == true)
            {
                Session["dormitorios"] = rbt3.Text;
            }
            else if (rbt4.Checked == true)
            {
                Session["dormitorios"] = rbt4.Text;
            }
            else if (rbt5.Checked == true)
            {
                Session["dormitorios"] = rbt5.Text;
            }
        }

        void Precios()
        {
            if (Session["precio"] == "<100.000")
            {
                rbtPrimero.Checked = true;
            }
            else if (Session["precio"] == "100.000-200.000")
            {
                rbtSegundo.Checked = true;
            }
            else if (Session["precio"] == "200.000-300.000")
            {
                rbtTercero.Checked = true;
            }
            else
            {
                rbtCuarto.Checked = true;
            }
        }

        void Precios1()
        {
            if (rbtPrimero.Checked == true)
            {
                Session["precio"] = "<100.000";
            }
            else if (rbtSegundo.Checked == true)
            {
                Session["precio"] = "100.000-200.000";
            }
            else if (rbtTercero.Checked == true)
            {
                Session["precio"] = "200.000-300.000";
            }
            else if(rbtCuarto.Checked == true)
            {
                Session["precio"] = ">300.000";
            }
        }
    }
}