<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage"%>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <style>
        body {
            font-family: "Lato", sans-serif; /*עיצוב הגופן*/
        }

    </style>
    <script type="text/javascript">
        function IsValid() {
            document.getElementById("error").innerHTML = "";
            var msg = 0;
            var msg = 0;
            if (document.getElementById("username").value == "") {
                document.getElementById("error").innerHTML += " יש להכניס את שם המשתמש</br>";
                document.getElementById("username").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("username").value.length < 2 || document.getElementById("username").value.length > 15) {
                document.getElementById("error").innerHTML += " השם הפרטי צריך להיות בין 2 ל-15 תווים</br>";
                document.getElementById("username").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("password").value == "") {
                document.getElementById("error").innerHTML += " יש להכניס את הסיסמא</br>";
                document.getElementById("password").style.backgroundColor = "red";
                msg++;
            }
            if (msg == 0) {
                return true;
            }
            else {
                return false;
            }
        }
        function ResetColor(id) {
            document.getElementById(id).style.backgroundColor = "white";
            document.getElementById("error").innerHTML = ""
        }
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginRight = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginRight = "0";
            document.body.style.backgroundColor = "aquamarine";

        }
    </script>
</head>
<body style="direction: rtl; background-color: aquamarine;">
    <form id="form1" runat="server" onsubmit="return IsValid()">
        <div id="main">
            <h1 style="text-align: center; display: block; font-size: 50px; text-decoration-line: underline">כניסה</h1>
            <table align="center">
                <tr>
                    <td align="center">שם משתמש
                    </td>

                    <td align="center">
                        <asp:TextBox ID="username" runat="server" onclick="ResetColor(this.id); closeNav()"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">סיסמא
                    </td>

                    <td align="center">
                        <asp:TextBox ID="password" runat="server" TextMode="Password" onclick="ResetColor(this.id); closeNav()"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <a href="Register.aspx">
                            <p>אין לי חשבון</p>
                        </a>
                    </td>
                    <td>
                        <asp:Button ID="login" runat="server" Text="כנס" OnClick="singin" />
                    </td>
                </tr>
            </table>
            <div runat="server" class="error" style="text-align: center" id="error"></div>
        </div>
    </form>
</body>
</html>