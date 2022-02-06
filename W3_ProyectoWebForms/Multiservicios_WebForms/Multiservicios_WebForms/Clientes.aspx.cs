using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiservicios_WebForms
{
    public partial class Clientes : System.Web.UI.Page
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
                cell.Text = "Cliente";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Telefono";
                row.Cells.Add(cell);
                cell = new TableHeaderCell();
                cell.Text = "Operaciones";
                row.Cells.Add(cell);
                Datos.Rows.Add(row);

                foreach (var cliente in db.Clientes)
                {
                    row = new TableRow();

                    cell = new TableCell();
                    cell.Text = cliente.razonSocial;
                    row.Cells.Add(cell);
                    cell = new TableCell();
                    cell.Text = cliente.celular;
                    row.Cells.Add(cell);
                    cell = new TableCell();

                    Button boton = new Button();
                    boton.Click += new EventHandler(Eliminar);
                    boton.CssClass = "btn btn-primary btn-link btn-sm";
                    boton.CommandArgument = cliente.idCliente.ToString();
                    boton.Text = "Eliminar";
                    cell.Controls.Add(boton);

                    boton = new Button();
                    boton.Click += new EventHandler(Editar);
                    boton.CssClass = "btn btn-primary btn-link btn-sm";
                    boton.CommandArgument = cliente.idCliente.ToString();
                    boton.Text = "Editar";
                    cell.Controls.Add(boton);

                    row.Cells.Add(cell);

                    row.ID = cliente.idCliente.ToString();
                    Datos.Rows.Add(row);
                }
            }
                
        }

        public void Eliminar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            using (Models.DBMultiserviciosEntities db = new Models.DBMultiserviciosEntities())
            {
                Models.Clientes obj = db.Clientes.Find(short.Parse(btn.CommandArgument));
                db.Clientes.Remove(obj);
                db.SaveChanges();
            }
            CargarDatos();
        }

        public void Editar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect("EditarCliente.aspx?id="+btn.CommandArgument);
        }

    }
}