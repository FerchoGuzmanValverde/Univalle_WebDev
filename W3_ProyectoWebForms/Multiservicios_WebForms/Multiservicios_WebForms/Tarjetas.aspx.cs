using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class Tarjetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        private void CargarDatos()
        {
            TableRow row;
            TableCell cell;
            Datos.Rows.Clear();
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {


                row = new TableHeaderRow();
                cell = new TableHeaderCell();
                cell.Text = "Descripción";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Precio $us";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Precio Bs";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Tipo Tarjeta";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Operaciones";
                row.Cells.Add(cell);
                Datos.Rows.Add(row);

                foreach (var tarjeta in db.Card)
                {
                    row = new TableRow();

                    cell = new TableCell();
                    cell.Text = tarjeta.descripcion;
                    row.Cells.Add(cell);
                    cell = new TableCell();
                    cell.Text = tarjeta.precioBaseDolares.ToString();
                    row.Cells.Add(cell);
                    cell = new TableCell();
                    cell.Text = tarjeta.precioBaseBolivianos.ToString();
                    row.Cells.Add(cell);
                    cell = new TableCell();
                    cell.Text = tarjeta.tipoTarjeta;
                    row.Cells.Add(cell);

                    cell = new TableCell();

                    Button boton = new Button();
                    boton.Click += new EventHandler(Eliminar);
                    boton.CssClass = "btn btn-primary btn-link btn-sm";
                    boton.CommandArgument = tarjeta.idCard.ToString();
                    boton.Text = "Eliminar";
                    cell.Controls.Add(boton);

                    boton = new Button();
                    boton.Click += new EventHandler(Editar);
                    boton.CssClass = "btn btn-primary btn-link btn-sm";
                    boton.CommandArgument = tarjeta.idCard.ToString();
                    boton.Text = "Editar";
                    cell.Controls.Add(boton);

                    row.Cells.Add(cell);
                    Datos.Rows.Add(row);
                }
            }

        }

        public void Eliminar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                Models.Card obj = db.Card.Find(short.Parse(btn.CommandArgument));
                db.Card.Remove(obj);
                db.SaveChanges();
            }
            CargarDatos();
        }

        public void Editar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect("EditarTarjeta.aspx?id=" + btn.CommandArgument);
        }
    }
}