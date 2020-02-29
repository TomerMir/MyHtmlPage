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


        .sidenav { /*עיצוב התפריט הנפתח*/
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            right: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .sidenav a { /*עיצוב מה שיהיה בתוך התפריט*/
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

                .sidenav a:hover { /*אנימציה כאשר העכבר עומד על אחד מהקישורים*/
                    color: #f1f1f1;
                }

            .sidenav .closebtn { /*סטייל של האיקס*/
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

        #main {
            transition: margin-left .5s; /*מה שקורה לכל שאר העמוד בעת פתיחת התפריט*/
            padding: 16px;
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
            else if (document.getElementById("username").value.length < 2 || document.getElementById("username").value.length > 8) {
                document.getElementById("error").innerHTML += " השם הפרטי צריך להיות בין 2 ל-8 תווים</br>";
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
            <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776; </span>
            <h1 style="text-align: center; display: block; font-size: 50px; text-decoration-line: underline">כניסה</h1>
            <table align="center">
                <tr>
                    <td align="center">שם משתמש
                    </td>

                    <td align="center">
                        <input type="text" id="username" name="username" onclick="ResetColor(this.id); closeNav()" />
                    </td>
                </tr>
                <tr>
                    <td align="center">סיסמא
                    </td>

                    <td align="center">
                        <input type="password" id="password" name="password" onclick="ResetColor(this.id); closeNav()">
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
            <div class="error" style="text-align: center" id="error"></div>
        </div>
    </form>ד
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="OpenPage.aspx">קצת עלי</a>
        <a href="Page2.html">הנושא שבחרתי ומדוע</a>
        <a href="Page3.html">טבלה על הנושא</a>
        <a href="PhotoAlbum.html">אלבום תמונות</a>
        <a href="Damka.html">דמקה</a>
    </div>

</body>
</html>