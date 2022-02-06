using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica2_FernandoGuzman
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnNuevo.Visible = false;
        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            string tipoVivienda = ddlTipoVivienda.SelectedValue;
            string zona = ddlZona.SelectedValue;
            string direccion = txtDireccion.Text;
            int dormitorios;
            string extra1 = "", extra2 = "", extra3 = "";
            if (rbt1.Checked == true)
                dormitorios = 1;
            else if (rbt2.Checked == true)
                dormitorios = 2;
            else if (rbt3.Checked == true)
                dormitorios = 3;
            else if (rbt4.Checked == true)
                dormitorios = 4;
            else
                dormitorios = 5;
            if (cbxGaraje.Checked == true)
                extra1 = "Garaje ";
            if (cbxJardin.Checked == true)
                extra2 = "jardin ";
            if (cbxPiscina.Checked == true)
                extra3 = "Piscina ";
            double precio = double.Parse(txtPrecio.Text);
            double tamanio = double.Parse(txtTam.Text);
            string observaciones = txtObservaciones.Text;

            Response.Write("Tipo Vivienda: " + tipoVivienda + "<br/>");
            Response.Write("Zona Vivienda: " + zona + "<br/>");
            Response.Write("Dirección: " + direccion + "<br/>");
            Response.Write("Dormitorios: " + dormitorios + "<br/>");
            Response.Write("Extra: " + extra1 + extra2 + extra3 + "<br/>");
            Response.Write("Precio Vivienda: " + precio + "<br/>");
            Response.Write("Tamaño Vivienda: " + tamanio + "<br/>");
            Response.Write("Observaciones: " + observaciones + "<br/>");
            //Response.WriteFile(fileFoto.FileContent);

            btnNuevo.Visible = true;
            txtDireccion.Visible = false;
            txtObservaciones.Visible = false;
            txtPrecio.Visible = false;
            txtTam.Visible = false;
            cbxGaraje.Visible = false;
            cbxJardin.Visible = false;
            cbxPiscina.Visible = false;
            ddlTipoVivienda.Visible = false;
            ddlZona.Visible = false;
            fileFoto.Visible = false;
            rbt1.Visible = false;
            rbt2.Visible = false;
            rbt3.Visible = false;
            rbt4.Visible = false;
            rbt5.Visible = false;
            btnInsertar.Visible = false;
            lblDireccion.Visible = false;
            lblDormitorios.Visible = false;
            lblExtra.Visible = false;
            lblFoto.Visible = false;
            lblObservaciones.Visible = false;
            lblPrecio.Visible = false;
            lblTamanio.Visible = false;
            lblTipo.Visible = false;
            lblTitulo2.Visible = false;
            lblZona.Visible = false;
            lblTitulo1.Visible = false;
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            btnNuevo.Visible = false;
            txtDireccion.Visible = true;
            txtDireccion.Text = "";
            txtObservaciones.Visible = true;
            txtObservaciones.Text = "";
            txtPrecio.Visible = true;
            txtPrecio.Text = "";
            txtTam.Visible = true;
            txtTam.Text = "";
            cbxGaraje.Visible = true;
            cbxJardin.Visible = true;
            cbxPiscina.Visible = true;
            ddlTipoVivienda.Visible = true;
            ddlZona.Visible = true;
            fileFoto.Visible = true;
            rbt1.Visible = true;
            rbt2.Visible = true;
            rbt3.Visible = true;
            rbt4.Visible = true;
            rbt5.Visible = true;
            btnInsertar.Visible = true;
            lblDireccion.Visible = true;
            lblDormitorios.Visible = true;
            lblExtra.Visible = true;
            lblFoto.Visible = true;
            lblObservaciones.Visible = true;
            lblPrecio.Visible = true;
            lblTamanio.Visible = true;
            lblTipo.Visible = true;
            lblTitulo2.Visible = true;
            lblZona.Visible = true;
            lblTitulo1.Visible = true;
        }
    }
}