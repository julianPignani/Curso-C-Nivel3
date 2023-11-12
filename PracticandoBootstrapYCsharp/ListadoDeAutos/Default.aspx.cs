using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using domino;

namespace ListadoDeAutos
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Verificamos si no es postBack para evitar otra vez la carga de datos
            if (!IsPostBack)
            {
            //Validamos que ya no exista una session guardada en session
            if (Session["listaAutos"] == null)
            {
                AutoNegocio negocio = new AutoNegocio();
                Session.Add("listaAutos", negocio.listar());//Creamos una session para poder pasar los datos desde agregarAuto a la lista
            }

            //mostramos la lista
            dgvAutos.DataSource = Session["listaAutos"]; //le pasamos a la lista la session que traemos desde agregarAutos.
            dgvAutos.DataBind(); //estó es para que dibuje la lista en el html
            }
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvAutos.SelectedDataKey.Value.ToString();
            Response.Redirect("AgregarAuto.aspx?id=" + id);
        }
    }
}