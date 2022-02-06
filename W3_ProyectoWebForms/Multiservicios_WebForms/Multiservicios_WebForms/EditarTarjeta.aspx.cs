using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class EditarTarjeta : System.Web.UI.Page
    {
        Models.Card card;

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                var oCard = db.Card.Where(tarjeta => tarjeta.idCard == card.idCard).First();

                oCard.descripcion = txtDescripcion.Text;
                oCard.precioBaseDolares = decimal.Parse(txtPrecioDolares.Text);
                oCard.precioBaseBolivianos = decimal.Parse(txtPrecioBs.Text);
                oCard.tipoTarjeta = txtTipoTarjeta.Text;

                db.Entry(oCard).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

            Response.Redirect("Tarjetas.aspx");
        }

        public void CargarDatos()
        {
            short id = short.Parse(Request.QueryString["id"]);

            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                card = db.Card.Find(id);
                txtDescripcion.Text = card.descripcion;
                txtPrecioDolares.Text = card.precioBaseDolares.ToString();
                txtPrecioBs.Text = card.precioBaseBolivianos.ToString();
                txtTipoTarjeta.Text = card.tipoTarjeta;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tarjetas.aspx");
        }
    }
}