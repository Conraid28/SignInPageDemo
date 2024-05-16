﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SignInPageDemo.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        .form-container {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-container label,
        .form-container input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-container input[type="submit"]:hover {
            background-color: #45a049;
        }
        .google-btn {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px;
            margin-top: 10px;
            background-color: #dd4b39;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .google-btn i {
            margin-right: 10px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Sign Up</h2>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <a href="#" class="google-btn">
                <i class="fab fa-google"></i> Sign up with Google
            </a>
            <asp:HyperLink ID="hlSignIn" runat="server" NavigateUrl="SignIn.aspx">Already have an account? Sign In</asp:HyperLink>
        </div>
    </form>
</body>
</html>
