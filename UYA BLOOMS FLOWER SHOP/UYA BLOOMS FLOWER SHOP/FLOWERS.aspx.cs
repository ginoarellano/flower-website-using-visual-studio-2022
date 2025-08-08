using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UYA_BLOOMS_FLOWER_SHOP
{
    public partial class FLOWERS : System.Web.UI.Page
    {
        protected void BT2_Click(object sender, EventArgs e)
        {
            // Set the flower description for the modal
            string flowerDescription = "Rose: A symbol of love and passion.";

            // Call the function to show the modal with the flower description
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }
        protected void BT3_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Sunflower: Symbolizing adoration, loyalty, and longevity.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }
        
        protected void BT4_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Jasmin: Symbolizing adoration, loyalty, and longevity.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }
        
        protected void BT5_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Tulip: Symbolizing perfect love, the tulip is often associated with elegance and grace.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT6_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Carnation: Representing love, fascination, and distinction, carnations are versatile flowers suitable for various occasions.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT7_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Iris: Symbolizing hope, faith, and wisdom, irises are vibrant flowers that add a touch of elegance to any floral arrangement.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT8_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Lilies: With their striking appearance and intoxicating fragrance, lilies convey purity, virtue, and renewed life.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT9_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Orchid: Exuding exotic beauty and sophistication, orchids symbolize love, luxury, and strength.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT10_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Peony: Known for their lush blooms and romantic charm, peonies represent prosperity, honor, and compassion.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

        
        protected void BT11_Click(object sender, EventArgs e)
        {
            string flowerDescription = "Rose: As the ultimate symbol of love and passion, roses convey heartfelt emotions and timeless beauty.";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal('" + flowerDescription + "');", true);
        }

    }
}