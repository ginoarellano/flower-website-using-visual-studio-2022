<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIGNUP.aspx.cs" Inherits="UYA_BLOOMS_FLOWER_SHOP.SIGNUP" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Home</title>
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

    #LinkB, #LinkB2, #LinkB3, #LinkB4 {
        margin-left: 20px;
        margin-right: 20px;
    }
    #LinkB5 {
        margin-left: 20px;
        margin-right: 20px;
    }

    #LB1 {
        margin-left:auto;
        margin-right: auto;
    
    }

    .signup-container {
            background-color: #F2EFE5;
            padding: 50px;
            border-radius: 12px;
            box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin:30px auto;
            max-width: 600px;
        }

        .signup-container img {
            display: block;
            margin: 2px auto 20px;
            width: 130px;
            height: auto;
            border-radius: 50%;
        }

        .form-group {
            margin-bottom: 15px;
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
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 12px;
            box-sizing: border-box;
            margin-bottom: 5px; 
        }

        .form-group button {
            border-style: double;
            border-color: inherit;
            border-width: medium;
            width: 50%;
            padding: 15px;
            background-color: green;
            color: black;
            border-radius: 12px;
            cursor: pointer;
            display: inline-block;
            margin-top: 10px;
        }

        .form-group button:hover {
            background-color: #00ff21;
        }


        .form-group .text-link {
             margin-top: 10px;
             color: blue;
             text-decoration: none;
             font-size: 18px;
        }

        .form-group .text-link:hover {
         text-decoration: underline;
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
            <img alt="" class="auto-style5" height="150" src="IMAGES/ACCOUNT.png" /><br />
                
                <div class="signup-container">

        <h2>SIGN UP</h2>

            <div class="form-group">
                <label for="fullname">First Name<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="600px"></asp:TextBox>
                </label>
                &nbsp;
            </div>
            <div class="form-group">
                <label for="fullname">Last Name<br />
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="600px"></asp:TextBox>
                </label>
&nbsp;
</div>
            <div class="form-group">
                <label for="email">Email<br />
                <label for="fullname">
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="600px"></asp:TextBox>
                </label>
                </label>
                &nbsp;
            </div>
            <div class="form-group">
                <label for="password">Password<br />
                <label for="fullname">
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="600px"></asp:TextBox>
                </label>
                </label>&nbsp;
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click" Height="50px" Width="200px" />
            </div>
             <div class="form-group">
     <a href="ACCOUNT.aspx" class="text-link"> You have already an Account? Login here!</a>
 </div>
                
            </div>
           </div>
            <br />
            <asp:Label ID="LB_CPR" runat="server" Text="© [2024] Uya Blooms Flower Shop. All rights reserved."></asp:Label>
        </div>
    </form>
</body>
</html>
