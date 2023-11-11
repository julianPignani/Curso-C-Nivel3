using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using domino;

namespace ListadoDeAutos
{
    public partial class AgregarAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si no es postBack entonces mostramos el color. (esto para que no se repitan los colores cada vez q estamso en la pag.)
            if (!IsPostBack)
            {
                //hay varias formas de agregar los colores al dropDownList, pero esta es una.
                ddlColor.Items.Add("Rojo");
                ddlColor.Items.Add("Blanco");
                ddlColor.Items.Add("Negro");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //Tomamos los datos que cargamos.
            Auto auto = new Auto();
            auto.Id = int.Parse(txtId.Text);
            auto.Marca = txtMarca.Text;
            auto.Color = ddlColor.SelectedValue;
            auto.Modelo = DateTime.Parse(txtModelo.Text);
            auto.Usado = chboxUsado.Checked;

            //Forma rapida de capturar el radioButon si tenemos 2-3 opciones
            if (rdbImportado.Checked)
                auto.Importado = true;
            else if (rdbNacional.Checked)
                auto.Importado = false;

            //Recupero la lista de la Session para pasarle los datos que se cargaron.
            //El casteo de List<Auto> es porq viene como objet y nosotros tenemos que cargarle una lista. Hay dos formas, 1(comentada) y 2 utilizo
            //((List<Auto>)Session["listaAutos"]).Add(auto);

            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(auto);

            //Y enviamos los datos a la session, para agregarlos a la lista
            Response.Redirect("Default.aspx");
        }
    }
}