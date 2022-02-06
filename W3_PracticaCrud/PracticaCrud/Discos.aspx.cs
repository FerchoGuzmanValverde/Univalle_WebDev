using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaCrud
{
    public partial class Discos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Video> formatos = new List<Video>();
            using (Model.PruebasDBEntities db = new Model.PruebasDBEntities())
            {
                formatos = (from d in db.Formato
                       select new Video
                       {
                           Nombre = d.nombre
                       }).ToList();
            }
            foreach (Video item in formatos)
            {
                ddlFormatos.Items.Add(item.Nombre);
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            using (Model.PruebasDBEntities db = new Model.PruebasDBEntities())
            {
                byte formato;
                if(ddlFormatos.Text == "CD")
                { formato = 1; }
                else if(ddlFormatos.Text == "DVD")
                { formato = 2; }
                else { formato = 3; }
                var oVideo = new Model.Video();
                oVideo.nombre = txtNombre.Text;
                oVideo.idFormato = formato;

                db.Video.Add(oVideo);
                db.SaveChanges();

                lblResultado.Text = "Video ingreasdo con éxito..!";
            }

        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            short codigo = short.Parse(txtCodigo.Text);
            List<Video> nuevo = new List<Video>();
            using (Model.PruebasDBEntities db = new Model.PruebasDBEntities())
            {
                nuevo = (from d in db.Video
                         where d.idVideo.Equals(codigo)
                         select new Video
                         {
                             Id = d.idVideo,
                             Nombre = d.nombre,
                             IdFormato = d.idFormato
                         }).ToList();
            }
            if (nuevo.Count() > 0)
            {
                foreach (Video item in nuevo)
                {
                    string formato;
                    if (item.IdFormato == 1)
                    { formato = "CD"; }
                    else if (item.IdFormato == 2)
                    { formato = "DVD"; }
                    else
                    { formato = "BlueRay"; }
                    lblResultado.Text = "Id: " + item.Id + "<br/>Nombre Video: " + item.Nombre + "<br/>Formato: " + formato;


                }
            }
            else
            {
                lblResultado.Text = "El codigo ingresado no existe en los registros";
            }
        }
        
        public class Video
        {
            public short Id { get; set; }
            public string Nombre { get; set; }
            public byte IdFormato { get; set; }
        }
    }
}