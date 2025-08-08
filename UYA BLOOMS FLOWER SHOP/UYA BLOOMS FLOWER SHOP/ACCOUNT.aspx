<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACCOUNT.aspx.cs" Inherits="UYA_BLOOMS_FLOWER_SHOP.ACCOUNT" %>

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
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            margin-bottom: 15px;
        }

        #div2 {
            background-color: #f4f0d0;
            border: solid 1px;
            border-radius: 25px;
            padding: 10px;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
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
            margin-left: auto;
            margin-right: auto;
            text-align: center;
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

        #LinkB,
        #LinkB2,
        #LinkB3,
        #LinkB4 {
            margin-left: 20px;
            margin-right: 20px;
        }

        #LinkB5 {
            margin-left: 20px;
            margin-right: 20px;
        }

        #LB1 {
            margin-left: auto;
            margin-right: auto;
        }

        .login-container {
            background-color: #F2EFE5;
            padding: 50px;
            border-radius: 12px;
            box-shadow: 1px 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 119%;
            margin: 0 auto; /* Center the container */
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center; 
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            text-align: left;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"] {
            padding: 15px;
            border: 2px solid #ccc;
            border-radius: 12px;
            box-sizing: border-box;
            margin-bottom: 5px; 
        }

        .form-group button {
            width: 50%;
            padding: 15px;
            background-color: lightgreen;
            color: blue;
            border-radius: 12px;
            cursor: pointer;
            font-size: 18px;
        }

        .form-group button:hover {
            background-color: #00ff21;
        }

        .form-group a {
            color: blue;
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body id="body">
<form id="form1" runat="server">

       <div id="div0">

       <div id="div1">
                &nbsp;<img alt="" class="auto-style3" src="IMAGES/DESIGN_UP.png" /><br />
                <img alt="" class="auto-style4" src="IMAGES/LOGO.png" />
       </div>

       <div id="div2">
                <asp:LinkButton runat="server" ID="LinkB" ForeColor="Black" PostBackUrl="~/HOME.aspx" style="text-decoration: none">HOME    </asp:LinkButton>           
                |<asp:LinkButton runat="server" ID="LinkB2" ForeColor="Black" PostBackUrl="~/ABOUT_US.aspx" style="text-decoration: none; ">ABOUT_US    </asp:LinkButton>
                |<asp:LinkButton runat="server" ID="LinkB3" ForeColor="Black" PostBackUrl="~/FLOWERS.aspx" style="text-decoration: none">FLOWERS    </asp:LinkButton>
                |<asp:LinkButton runat="server" ID="LinkB4" ForeColor="Black" PostBackUrl="~/CART.aspx" style="text-decoration: none">CART</asp:LinkButton>
                |<asp:LinkButton runat="server" ID="LinkB5" ForeColor="Black" PostBackUrl="~/ACCOUNT.aspx" style="text-decoration: none; font-weight: 700;">ACCOUNT</asp:LinkButton>
       </div>
            
       <div id="div5">
                <img alt="" class="auto-style5" height="170" src="IMAGES/ACCOUNT.png" /><br />
                
           <div class="login-container">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
                    </h2>

           <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="600px" Height="40px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegexValidator" runat="server"
                    ControlToValidate="TextBox1"
                    ErrorMessage="Please enter a valid email address"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                <br />
           </div>


           <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="600px" TextMode="Password" Height="40px"></asp:TextBox>

           </div>
                <input type="checkbox" onchange="togglePassword()"> Show Password<br />
                <br />

           <div class="form-group button">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="200px" Height="50px" />
            </div>
                    <br/>
           <div class="form-group">
                    <a href="SIGNUP.aspx" class="text-link">You don't have an Account? Sign-Up here!</a>
           </div>

                <script>
                    function togglePassword() {
                        var passwordInput = document.getElementById('<%= TextBox2.ClientID %>');
                        if (passwordInput.type === 'password') {
                            passwordInput.type = 'text';
                        } else {
                            passwordInput.type = 'password';
                        }
                    }
                </script>
       </div>
     </div>
           <br />
           <br />
           <asp:Label ID="LB_CPR" runat="server" Text="© [2024] Uya Blooms Flower Shop. All rights reserved."></asp:Label>
   </div>
</form>
</body>
</html>

