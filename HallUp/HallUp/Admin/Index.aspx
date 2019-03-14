<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HallUp.Admin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>hallUp - Admin</title>
    <script
    src="http://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
    <link href="style/style.css" rel="stylesheet">
    <link href="style/mobile.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
        <div class="logo"><h1><img src="../images/hallUpLogo.png"></h1></div>
        <div class="loginForm">
            <div class="inputDiv">
                <table>
                    <tr>
                        <td><asp:TextBox ID="userName" class="form-control"  runat="server" Font-Size="20"></asp:TextBox></td>
                        <td>שם משתמש</td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="password" class="form-control"  runat="server" Font-Size="20" AutoComplete Type="password"></asp:TextBox></td>
                        <td>סיסמא</td>
                    </tr>
                    <tr>
                        <td id="submitBtn">
                            <input type=button class="btn btn-danger" value="כניסה">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
