using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UYA_BLOOMS_FLOWER_SHOP
{
    public partial class HOME : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IMGBT1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void IMGBT2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkB_Click(object sender, EventArgs e)
        {
        
        }
        protected void AddToCart_Click(object sender, EventArgs e)
        {
            // Redirect to cart.aspx
            Response.Redirect("cart.aspx");
        }
    }
}