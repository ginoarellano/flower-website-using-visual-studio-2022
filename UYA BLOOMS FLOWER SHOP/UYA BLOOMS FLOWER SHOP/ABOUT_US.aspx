<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABOUT_US.aspx.cs" Inherits="UYA_BLOOMS_FLOWER_SHOP.ABOUT_US" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Home</title>
    <script>
        // Store the scroll position before navigating to a new page
        window.addEventListener("beforeunload", function () {
            sessionStorage.setItem("scrollPosition", window.scrollY);
        });

        // Restore the scroll position after the new page loads
        window.addEventListener("load", function () {
            var scrollPosition = sessionStorage.getItem("scrollPosition");
            if (scrollPosition !== null) {
                window.scrollTo(0, parseInt(scrollPosition));
                sessionStorage.removeItem("scrollPosition");
            }
        });
    </script>

    <style type="text/css">
        
        #body {
            padding: 20px;
            background-color: #f4f0d0; 
        }

        .auto-style3 {
            width: 500px;
            height: 211px;
        }
        .auto-style4 {
            width: 750px;
            height: 131px;
        }

        #div1 {
            background-color: #ECFFDC;
            border: solid 1px;
            border-radius: 25px;
            padding: 30px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
            margin-bottom: 15px;
        }

        #div2 {
            background-color: #f4f0d0;
            border: solid 1px;
            border-radius: 25px;
            padding: 10px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
            margin-top: 5px;
            margin-bottom: 15px;
            transition: background-color 0.3s ease;
        }

        #div2:hover {
            background-color: #e0e0e0;
        }

        #div3 {
            margin-bottom: 20px;
        }

         #div0 {
            background-color: #ffe6e6;
            border: solid 1px;
            border-radius: 25px;
            padding: 30px;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
         
         #div4 {
             margin-bottom: 15px;
         }

        #div5 {
            background-color: #ffffff;
            border: solid 1px;
            border-radius: 25px;
            padding: 30px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        #LinkB, #LinkB2, #LinkB3, #LinkB4, #LinkB5 {
            margin-left:20px;
            margin-right: 20px;
        }
        
        #LB1 {
            margin-left:auto;
            margin-right: auto;
            
        }

    </style>

</head>
<body id="body">
    
    <form id="form1" runat="server">
     
        <div id="div0">
        
        <div id="div1">
            &nbsp;<img alt="" class="auto-style3" src="IMAGES/DESIGN_UP.png" /><br />
            <img alt="" class="auto-style4" src="IMAGES/LOGO.png" /></div>
          
        <div id="div2">
             <asp:LinkButton runat="server" ID="LinkB" ForeColor="Black" PostBackUrl="~/HOME.aspx" CssClass="auto-style1" style="text-decoration: none">HOME</asp:LinkButton>           
            |<asp:LinkButton runat="server" ID="LinkB2" ForeColor="Black" PostBackUrl="~/ABOUT_US.aspx" CssClass="auto-style1" style="text-decoration: none; font-weight: 700;">ABOUT_US</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB3" ForeColor="Black" PostBackUrl="~/FLOWERS.aspx" CssClass="auto-style1" style="text-decoration: none">FLOWERS</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB4" ForeColor="Black" PostBackUrl="~/CART.aspx" CssClass="auto-style1" style="text-decoration: none">CART</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB5" ForeColor="Black" PostBackUrl="~/ACCOUNT.aspx" CssClass="auto-style1" style="text-decoration: none">ACCOUNT</asp:LinkButton>
        </div>       


        <div id="div5">
            
           <img src="IMAGES/ABOUT_US.png" height="150" /><br />
&nbsp;<div class="container">
    <section>
        <h2>Welcome to Uya Blooms Flower Shop</h2>
        <p>Welcome to Uya Blooms Flower Shop, where we cultivate beauty and spread joy through the language of flowers. At Uya Blooms, we believe that every bloom tells a story, and we're here to help you express your emotions, celebrate special moments, and create lasting memories with our exquisite floral arrangements.</p>
    </section>

    <section>
        <h2>Our Story</h2>
        <p>Uya Blooms Flower Shop was founded with a passion for flowers and a vision to bring nature's beauty into people's lives. Our journey began in [Year of Establishment], when [Founder's Name], a seasoned florist with a love for botanical artistry, decided to turn their passion into a thriving business. Since then, Uya Blooms has blossomed into a beloved floral destination, serving customers with dedication and care.</p>
    </section>

    <section>
        <h2>Our Mission</h2>
        <p>At Uya Blooms, our mission is to brighten lives and uplift spirits through the power of flowers. We strive to provide exceptional floral creations that captivate the senses and touch the heart. Whether it's a vibrant bouquet for a birthday, an elegant arrangement for a wedding, or a thoughtful gift for a loved one, we're committed to delivering beauty and joy with every bloom.</p>
    </section>

    <section>
        <h2>Our Commitment to Quality</h2>
        <p>Quality is at the heart of everything we do at Uya Blooms Flower Shop. We source our flowers from trusted growers and suppliers, ensuring that each stem is fresh, vibrant, and of the highest quality. Our skilled floral designers then work their magic, handcrafting each arrangement with precision and care to bring out the natural beauty of every flower.</p>
    </section>

    <section>
        <h2>Contact Us</h2>
        <p>Have a question or want to place an order? We'd love to hear from you! Feel free to reach out to us via email or connect with us on social media:</p>
        <address>
            Email: <a href="mailto:info@uyablooms.com">info@uyablooms.com</a><br>
            Facebook: <a href="https://www.facebook.com/UyaBloomsFlowerShop">Uya Blooms Flower Shop</a><br>
            Instagram: <a href="https://www.instagram.com/uyablooms">@uyablooms</a><br>
            Twitter: <a href="https://twitter.com/UyaBlooms">@UyaBlooms</a><br>
        </address>
    </section>
</div>

            </div>

            <div>&nbsp;</div>
              
           <br />
          <asp:Label ID="LB_CPR" runat="server" Text="© [2024] Uya Blooms Flower Shop. All rights reserved."></asp:Label>
          </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
      
    </form>
</body>
</html>