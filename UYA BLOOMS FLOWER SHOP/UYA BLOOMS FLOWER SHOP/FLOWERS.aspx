<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FLOWERS.aspx.cs" Inherits="UYA_BLOOMS_FLOWER_SHOP.FLOWERS" %>

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


                // Function to show the modal and populate it with flower information
                function showFlowerDescription(imageUrl, description, event) {
                    // Prevent the default action of the button
                    event.preventDefault();

                    var modal = document.getElementById("flowerModal");
                    var modalImage = modal.querySelector(".flower-image");
                    var modalDescription = modal.querySelector(".flower-description");

                    modalImage.src = imageUrl;
                    modalDescription.innerText = description;
                    modal.style.display = "block";
                }

                // Function to hide the modal
                function hideModal() {
                    var modal = document.getElementById("flowerModal");
                    modal.style.display = "none";
                }

                // Close the modal if clicked outside of it
                window.onclick = function (event) {
                    var modal = document.getElementById("flowerModal");
                    if (event.target == modal) {
                        hideModal();
                    }
                }
            }
        });
    </script>

    <style type="text/css">
    
    #body {
    padding: 20px;
    background-color: #f4f0d0; 
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

    #LinkB, #LinkB2, #LinkB4, #LinkB5 {
        margin-left:20px;
        margin-right: 20px;
        }
    #LinkB3 {
        margin-left:20px;
        margin-right: 20px;
        font-weight: 700;
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
    
    .BT2, #BT2, #BT3, #BT4, #BT5, #BT6 {
        margin-left: 20px;
        margin-top: 3px;
        padding: 10px;
        margin-right: 20px;
        border-radius: 5px;
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

    .flower-item {
        margin-left: auto;
        margin-right: auto;
        text-align: center;
    }

    .flower-image {
        border: solid 3px;
        border-color: #e1afd1;
        border-radius: 5px;
        height: 200px;
        width: 200px;
        padding: 5px;
        margin-bottom: 10px;
    }

    .flower-button {
        padding: 10px;
        border: solid 3px;
        border-color: #e1afd1;
        border-radius: 5px;
        margin-left: 40px;
        margin-right: 40Px;
        margin-bottom: 10px;
        width: 170px;
        transition: background-color 0.3s ease;
    }

        .flower-button:hover {
            background-color: #e0e0e0;
        }

        .auto-style1 {
            width: 500px;
            height: 211px;
        }
        .auto-style2 {
            width: 750px;
            height: 131px;
        }
        .auto-style3 {
            text-decoration: none;
        }

    </style>
    <script>
        // Function to show the modal and populate it with flower information
        function showFlowerDescription(imageUrl, description, event) {
            // Prevent the default action of the button
            event.preventDefault();

            var modal = document.getElementById("flowerModal");
            var modalImage = modal.querySelector(".flower-image");
            var modalDescription = modal.querySelector(".flower-description");

            modalImage.src = imageUrl;
            modalDescription.innerText = description;
            modal.style.display = "block";
        }

        // Function to hide the modal
        function hideModal() {
            var modal = document.getElementById("flowerModal");
            modal.style.display = "none";
        }

        // Close the modal if clicked outside of it
        window.onclick = function (event) {
            var modal = document.getElementById("flowerModal");
            if (event.target == modal) {
                hideModal();
            }
        }
    </script>

</head>

<body id="body">
    
    <form id="form1" runat="server">
     
        <div id="div0">

        <div id="div1">
            &nbsp;<img alt="" class="auto-style1" src="IMAGES/DESIGN_UP.png" /><br />
            <img alt="" class="auto-style2" src="IMAGES/LOGO.png" /></div>
          
        <div id="div2">
             <asp:LinkButton runat="server" ID="LinkB" ForeColor="Black" PostBackUrl="~/HOME.aspx" CssClass="auto-style3">HOME</asp:LinkButton>           
            |<asp:LinkButton runat="server" ID="LinkB2" ForeColor="Black" PostBackUrl="~/ABOUT_US.aspx" CssClass="auto-style3">ABOUT_US</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB3" ForeColor="Black" PostBackUrl="~/FLOWERS.aspx" CssClass="auto-style3">FLOWERS</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB4" ForeColor="Black" PostBackUrl="~/CART.aspx" CssClass="auto-style3">CART</asp:LinkButton>
            |<asp:LinkButton runat="server" ID="LinkB5" ForeColor="Black" PostBackUrl="~/ACCOUNT.aspx" CssClass="auto-style3">ACCOUNT</asp:LinkButton>
        </div>

                <div id="div6">

                <div id="div5">

                    <div id="flowerModal" class="modal" style="display: none;">


                        <!-- MODAL -->
                        <div class="modal-content">
                            <span class="modal-close" onclick="hideModal()">&times;</span>
                            <h2>Flower Description</h2>
                            <div>
                                <img class="flower-image" src="" alt="Flower Image" style="max-width: 100%;" />
                            </div>
                            <p class="flower-description"></p>
                        </div>
                    </div>

                    <img src="IMAGES/FLOWER_INFO.png" height="150" /><br />
                        <br />


                    <!-- FIRST ROW -->

                    <div class="flower-item">

                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/1ROSE.png" ID="IMGBT1" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/2SUNFLOWER.png" ID="IMGBT2" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/3DAISY.png" ID="IMGBT3" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/4JASMIN.png" ID="IMGBT4" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/5TULIPS.png" ID="IMGBT5" Width="194px" CssClass="flower-image"></asp:ImageButton>

                        <br />
                        <br />

                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/1ROSE.png', 'Rose: Often dubbed the queen of flowers, roses symbolize love and passion with their myriad of colors and delicate petals, making them the quintessential choice for expressing heartfelt emotions.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/2SUNFLOWER.png', 'Sunflower: With its radiant yellow petals and towering stems, the sunflower exudes warmth and joy, symbolizing adoration and loyalty as it turns its face towards the sun, tracking its journey across the sky.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/3DAISY.png', 'Daisy: Evoking images of sunny meadows and carefree days, daisies symbolize innocence and purity with their whimsical charm and simplicity, spreading joy and positivity wherever they bloom.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/4JASMIN.png', 'Jasmine: Jasmine embodies sensuality and elegance with its intoxicating fragrance and delicate white blossoms, revered for centuries in various cultures as a symbol of love, beauty, and purity.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/5TULIPS.png', 'Tulip: Heralding the arrival of spring, tulips symbolize perfect love and renewal with their vibrant colors and graceful petals, reminding us to embrace life\'s ever-changing seasons.', event)">Meaning</button>
                       
                       
                        <br />
                        <br />
                        <br />
                       
                       
                        <br />
                       

                    <!-- SECOND ROW -->

                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/6CARNATION.png" ID="IMGBT6" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/7IRIS.png" ID="IMGBT7" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/8LILIES.png" ID="IMGBT8" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/9ORCHID.png" ID="IMGBT9" Width="194px" CssClass="flower-image"></asp:ImageButton>
                        <asp:ImageButton runat="server" ImageUrl="~/IMAGES/10PEONY.png" ID="IMGBT10" Width="194px" CssClass="flower-image"></asp:ImageButton>

                         <br />
                        <br />

                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/6CARNATION.png', 'Carnation: Carnations symbolize fascination and admiration with their ruffled petals and delicate fragrance, making them popular choices for expressing admiration and appreciation.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/7IRIS.png', 'Iris: The iris symbolizes wisdom and courage with its striking appearance and intricate blooms, representing faith and hope as it blooms in a variety of colors and patterns.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/8LILIES.png', 'Lilies: Lilies symbolize purity and majesty with their elegant blooms and graceful presence, often associated with purity, virtue, and the divine.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/9ORCHID.png', 'Orchid: Orchids symbolize love, luxury, and beauty with their exotic blooms and intricate designs, representing strength, grace, and charm in various cultures.', event)">Meaning</button>
                        <button class="flower-button" onclick="showFlowerDescription('IMAGES/10PEONY.png', 'Peony: Peonies symbolize prosperity and good fortune with their lush, fragrant blooms and vibrant colors, often considered a symbol of honor, wealth, and happiness.', event)">Meaning</button>
                        <br />
                    </div>

                </div>
            </div>
            <asp:Label ID="LB_CPR" runat="server" Text="© [2024] Uya Blooms Flower Shop. All rights reserved."></asp:Label>
        </div>
    </form>

</body>
</html>

