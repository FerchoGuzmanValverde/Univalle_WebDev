using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class AgregarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Guardar()
        {
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                Models.Clientes nuevo = new Models.Clientes();

                nuevo.razonSocial = txtNombre.Value;
                nuevo.celular = txtCelular.Value;
                
                db.Clientes.Add(nuevo);
                db.SaveChanges();

                txtNombre.Value = "";
                txtCelular.Value = "";
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Guardar();
        }
    }
}