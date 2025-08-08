<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="UYA_BLOOMS_FLOWER_SHOP.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script>
    // Store the scroll position before navigating to a new page
    window.addEventListener("beforeunload", function() {
        sessionStorage.setItem("scrollPosition", window.scrollY);
    });
    
    // Restore the scroll position after the new page loads
    window.addEventListener("load", function() {
        var scrollPosition = sessionStorage.getItem("scrollPosition");
        if (scrollPosition !== null) {
            window.scrollTo(0, parseInt(scrollPosition));
            sessionStorage.removeItem("scrollPosition");
        }
    });
    </script>

    <title>Home</title>
    <style type="text/css">
        #body {
            padding: 20px;
            background-color: #f4f0d0; 
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

        #LB1 {
            margin-left:auto;
            margin-right: auto;
            
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

        #div6 {
            margin-bottom:10px;
            width: 1359px;
        }

        #LB2 {
            margin-left:auto;
            margin-right:20px;
    
        }

        #LinkB {
            margin-left:20px;
            margin-right: 20px;
            color: #FF33CC;
            font-weight: 700;
        }
        #LinkB2 {
            margin-left:20px;
            margin-right: 20px;
            
        }

        #LinkB3 {
            margin-left:20px;
            margin-right: 20px;
            
        }

        #LinkB4 {
            margin-left:20px;
            margin-right: 20px;
            
        }
        #LinkB5 {
            margin-left:20px;
            margin-right: 20px;
            
        }

        #TB1 {
            margin-left:auto;
            margin-right: 10px;
            width: 220px;
        }

        #BT1 {
            margin-left: auto;
            margin-right: auto;
        }
        
        .IMGBT1, #IMGBT1, #IMGBT2, #IMGBT3, #IMGBT4, #IMGBT5 {
            border: solid 3px;
            border-color:#e1afd1;
            border-radius:5px;
            height: 200px;
            width: 200px;
            padding: 5px;
            margin-left: 20px;
            margin-right: 20px;
        }

        .IMGBT2, #IMGBT6, #IMGBT7, #IMGBT8, #IMGBT9, #IMGBT10 {
            border: solid 3px;
            border-color:#e1afd1;
            border-radius:5px;
            height: 200px;
            width: 200px;
            padding: 5px;
            margin-left: 20px;
            margin-right: 20px;
        }

        
        #IMG1 {
            width: 200px;
            height: 200px;
        }

        #IMG2 {
            width: 200px;
            height: 200px;
        }

        .DDB1, #DDB1, #DDB2, #DDB3 {
            margin-left: 10px;
            margin-right: 10px;

        }

        #LB_CPR {
            margin-top: 20px;
        }

        .LB2, #LB2, #LB3, #LB4, #LB5, #LB6 {
            margin-top: 15px;
            margin-left: 20px;
            margin-right: 20px;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
        }

        .LB3, #LB7, #LB8, #LB9, #LB10, #LB11 {
            margin-top: 15px;
            margin-left: 20px;
            margin-right: 20px;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
        }
        
        .BT2, #BT3, #BT4, #BT5, #BT6 {
            margin-left: 20px;
            margin-top: 3px;
            padding: 10px;
            margin-right: 20px;
            border-radius: 5px;
            background-color: #e0e0e0;
            transition: background-color 0.3s ease;
        }

        .BT2:hover, #BT3:hover, #BT4:hover, #BT5:hover, #BT6:hover {
            background-color: #ccc;
        }


        .BT3, #BT7, #BT8, #BT9, #BT10, #BT11 {
            margin-left: 20px;
            margin-top: 3px;
            padding: 10px;
            margin-right: 20px;
            border-radius: 5px;
        }

        #div8 {
            width: 229px;
        }

        #div7 {
            margin-top:15px;
            margin-bottom: 15px;
            width: 100%;
        }

    
        #div6 {
            margin-top: 15px;
            margin-bottom: 15px;
            width: 100%
        }


        #form1 {
            height: 1104px;
        }

        .auto-style1 {
            font-size: medium;
            text-decoration: none;
        }
        .auto-style2 {
            width: 500px;
            height: 211px;
        }
        .auto-style4 {
            width: 750px;
            height: 131px;
        }

    </style>
</head>
<body id="body">
    
    <form id="form1" runat="server">
     
        <div id="div0">
        
        <div id="div1">
            <img alt="" class="auto-style2" src="IMAGES/DESIGN_UP.png" /><br />
            <img alt="" class="auto-style4" src="IMAGES/LOGO.png" /></div>
          
        <div id="div2">
             <asp:LinkButton runat="server" ID="LinkB" ForeColor="Black" PostBackUrl="~/HOME.aspx" CssClass="auto-style1" OnClick="LinkB_Click">HOME</asp:LinkButton>           
            |<asp:LinkButton runat="server" ID="LinkB2" ForeColor="Black" PostBackUrl="~/ABOUT_US.aspx" CssClass="auto-style1">ABOUT_US</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB3" ForeColor="Black" PostBackUrl="~/FLOWERS.aspx" CssClass="auto-style1">FLOWERS</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB4" ForeColor="Black" PostBackUrl="~/CART.aspx" CssClass="auto-style1">CART</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB5" ForeColor="Black" PostBackUrl="~/ACCOUNT.aspx" CssClass="auto-style1">ACCOUNT</asp:LinkButton>
        </div>
         
        <div id="div5">
            <img src="IMAGES/FLOWER_VAR.png" height="150" /><br />
            <br />
            <br />
&nbsp;<div id="div9">
            
             <div id="div6">
                
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/1ROSE.png" ID="IMGBT1" Width="194px" CssClass="IMGBT1"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/2SUNFLOWER.png" ID="IMGBT2" Width="194px" CssClass="IMGBT1"></asp:ImageButton>        
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/3DAISY.png" ID="IMGBT3" Width="194px" CssClass="IMGBT1"></asp:ImageButton>            
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/4JASMIN.png" ID="IMGBT4" Width="194px" CssClass="IMGBT1"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/5TULIPS.png" ID="IMGBT5" Width="194px" CssClass="IMGBT1"></asp:ImageButton>  
                
                    <br />

                    <asp:Label ID="LB2" runat="server" Style="text-align: center" Text="Rose | ₱ 1000" BackColor="#F4F0D0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB1"></asp:Label>
                    <asp:Label ID="LB3" runat="server" style="text-align: center" Text="Sunflower | ₱ 900" BackColor="#F4F0D0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB1"></asp:Label>
                    <asp:Label ID="LB4" runat="server" style="text-align: center" Text="Daisy | ₱ 1100" BackColor="#F4F0D0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB1"></asp:Label>
                    <asp:Label ID="LB5" runat="server" style="text-align: center" Text="Jasmin | ₱ 600" BackColor="#F4F0D0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB1"></asp:Label>
                    <asp:Label ID="LB6" runat="server" style="text-align: center" Text="Tulips | ₱ 1,200" BackColor="#F4F0D0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB1"></asp:Label>
                    
                    <br />

                    <asp:Button ID="BT2" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT2" OnClick="AddToCart_Click" CommandArgument="1ROSE" />
                    <asp:Button ID="BT3" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT2" OnClick="AddToCart_Click" CommandArgument="2SUNFLOWER" />
                    <asp:Button ID="BT4" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT2" OnClick="AddToCart_Click" CommandArgument="3DAISY" />
                    <asp:Button ID="BT5" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT2" OnClick="AddToCart_Click" CommandArgument="4JASMIN" />
                    <asp:Button ID="BT6" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT2" OnClick="AddToCart_Click" CommandArgument="5TULIPS" />
                
              </div>

              <div id="div7">
                
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/6CARNATION.png" ID="IMGBT6" Width="194px" CssClass="IMGBT2"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/7IRIS.png" ID="IMGBT7" Width="194px" CssClass="IMGBT2"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/8LILIES.png" ID="IMGBT8" Width="194px" CssClass="IMGBT2"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/9ORCHID.png" ID="IMGBT9" Width="194px" CssClass="IMGBT2"></asp:ImageButton>
                    <asp:ImageButton runat="server" ImageUrl="~/IMAGES/10PEONY.png" ID="IMGBT10" Width="194px" CssClass="IMGBT2"></asp:ImageButton>
                        
                    <br />

                    <asp:Label ID="LB7" runat="server" style="text-align: center" Text="Carnation | ₱ 950" BackColor="#f4f0d0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB2"></asp:Label>
                    <asp:Label ID="LB8" runat="server" style="text-align: center" Text="Iris | ₱ 1,100" BackColor="#f4f0d0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB2"></asp:Label>
                    <asp:Label ID="LB9" runat="server" style="text-align: center" Text="Lilies | ₱ 800" BackColor="#f4f0d0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB2"></asp:Label>
                    <asp:Label ID="LB10" runat="server" style="text-align: center" Text="Orchid |  ₱ 750" BackColor="#f4f0d0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB2"></asp:Label>
                    <asp:Label ID="LB11" runat="server" style="text-align: center" Text="Peony | ₱ 1,500" BackColor="#f4f0d0" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Large" Width="178px" CssClass="LB2"></asp:Label>
                      
                    <br />

                    <asp:Button ID="BT7" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT3" OnClick="AddToCart_Click" CommandArgument="6CARNATION" />
                    <asp:Button ID="BT8" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT3" OnClick="AddToCart_Click" CommandArgument="7IRIS" />
                    <asp:Button ID="BT9" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT3" OnClick="AddToCart_Click" CommandArgument="8LILIES" />
                    <asp:Button ID="BT10" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT3" OnClick="AddToCart_Click" CommandArgument="9ORCHID" />
                    <asp:Button ID="BT11" runat="server" Text="Add to Cart" Width="210px" BackColor="#ECFFDC" BorderColor="#E1AFD1" BorderStyle="Solid" BorderWidth="3px" CssClass="BT3" OnClick="AddToCart_Click" CommandArgument="10PEONY" />
                

              </div>
              </div>
            </div>
              
           <br />
          <asp:Label ID="LB_CPR" runat="server" Text="© [2024] Uya Blooms Flower Shop. All rights reserved."></asp:Label>
          </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
      
    </form>
</body>
</html>
