using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Favoritos")
            {
                favs.Items.Add(tbNom.Text + " " + tbPre.Text);
            }
            else if (DropDownList1.Text == "Cesta de la compra")
            {
                int cantidad = int.Parse(tbCan.Text);
                Double precio = Double.Parse(tbPre.Text);
                Double subTotal = cantidad * precio;
                cesta.Items.Add(tbCan.Text + " " + tbNom.Text + " " + tbPre.Text + " " + subTotal.ToString());

                if (total.Text.Equals("0"))
                {
                    total.Text = subTotal.ToString();
                }
                else
                {
                    total.Text = (Double.Parse(total.Text) + subTotal).ToString();
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void favs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cesta_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}