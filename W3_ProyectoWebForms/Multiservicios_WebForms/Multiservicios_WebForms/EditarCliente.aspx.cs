using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class EditarCliente : System.Web.UI.Page
    {
        Models.Clientes client;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();
            }
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
               var oCliente = db.Clientes.Where(cliente => cliente.idCliente == client.idCliente).First();

                oCliente.razonSocial = txtNombre.Text;
                oCliente.celular = txtCelular.Text;

                db.Entry(oCliente).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

            Response.Redirect("Clientes.aspx");
        }

        public void CargarDatos()
        {
            short id = short.Parse(Request.QueryString["id"]);

            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                client = db.Clientes.Find(id);
                txtNombre.Text = client.razonSocial;
                txtCelular.Text = client.celular;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clientes.aspx");
        }
    }
}