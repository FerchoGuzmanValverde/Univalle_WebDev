using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class AgregarTarjeta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Guardar()
        {
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                Models.Card nuevo = new Models.Card();

                nuevo.descripcion = txtDescripcion.Value;
                nuevo.precioBaseDolares = decimal.Parse(txtPrecioDolares.Value);
                nuevo.precioBaseBolivianos = decimal.Parse(txtDescripcion.Value);
                nuevo.tipoTarjeta = txtTipoTarjeta.Value;

                db.Card.Add(nuevo);
                db.SaveChanges();

                txtDescripcion.Value = "";
                txtPrecioDolares.Value = "";
                txtPrecioBs.Value = "";
                txtTipoTarjeta.Value = "";
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Guardar();
        }
    }
}