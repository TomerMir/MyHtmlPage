﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: "Lato", sans-serif; /*עיצוב הגופן*/
        }
    </style>

    <script type="text/javascript">

        function Reset() {
            document.getElementById("error").innerHTML = "";
            document.getElementById("firstname").style.backgroundColor = "white";
            document.getElementById("lastname").style.backgroundColor = "white";
            document.getElementById("birth").style.backgroundColor = "white";
            document.getElementById("firstname").style.backgroundColor = "white";
            document.getElementById("username").style.backgroundColor = "white";
            document.getElementById("password").style.backgroundColor = "white";
            document.getElementById("confimpassword").style.backgroundColor = "white";
            document.getElementById("mail").style.backgroundColor = "white";
            document.getElementById("phone").style.backgroundColor = "white";

        }
        function ResetColor(id) {
            document.getElementById(id).style.backgroundColor = "white";
            document.getElementById("error").innerHTML = ""
        }

        function IsValid() {
            document.getElementById("error").innerHTML = "";
            var msg = 0;
            if (document.getElementById("firstname").value == "") {

                document.getElementById("error").innerHTML += " יש להכניס את השם הפרטי</br>";
                document.getElementById("firstname").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("firstname").value.length < 2 || document.getElementById("firstname").value.length > 8) {
                document.getElementById("error").innerHTML += " השם הפרטי צריך להיות בין 2 ל-8 תווים</br>";
                document.getElementById("firstname").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("lastname").value == "") {
                document.getElementById("error").innerHTML += " יש להכניס את שם המשפחה</br>";
                document.getElementById("lastname").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("lastname").value.length < 2 || document.getElementById("lastname").value.length > 8) {
                document.getElementById("error").innerHTML += " השם משפחה צריך להיות בין 2 ל-8 תווים</br>";
                document.getElementById("lastname").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("birth").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את תאריך הלידה</br>";
                document.getElementById("birth").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("male").checked == false && document.getElementById("female").checked == false) {
                document.getElementById("error").innerHTML += "יש לסמן את המגדר</br>";
                msg++;
            }
            if (document.getElementById("username").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את שם המשתמש</br>";
                document.getElementById("username").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("username").value.length < 2 || document.getElementById("username").value.length > 15) {
                document.getElementById("error").innerHTML += " השם משתמש צריך להיות בין 2 ל-15 תווים</br>";
                document.getElementById("username").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("password").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את הסיסמא</br>";
                document.getElementById("password").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("password").value != "") {
                var CharCount = 0;
                var NumCount = 0;
                for (i = 0; i < document.getElementById("password").value.length; i++) {
                    if (isNaN(document.getElementById("password").value.charAt(i)) == true) {
                        CharCount++;
                    }
                    else {
                        NumCount++
                    }
                }
                if ((CharCount == 0) || (NumCount == 0)) {
                    document.getElementById("error").innerHTML += "סיסמא חייבת להכיל גם ספרות וגם אותיות</br>";
                    document.getElementById("password").style.backgroundColor = "red";
                    msg++;
                }
            }
            if (document.getElementById("confimpassword").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את אישור הסיסמא</br>";
                document.getElementById("confimpassword").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("password").value != document.getElementById("confimpassword").value) {
                document.getElementById("error").innerHTML += "אישור הסיסמא צריך להיות זהה לסיסמא</br>";
                document.getElementById("confimpassword").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("mail").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את המייל</br>";
                document.getElementById("mail").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("mail").value.indexOf('@') < 1) {
                document.getElementById("error").innerHTML += "המייל חייב להכיל @ מהתו השני ומעלה </br>";
                document.getElementById("mail").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("mail").value.lastIndexOf('@') != document.getElementById("mail").value.indexOf('@')) {
                document.getElementById("error").innerHTML += "המייל חייב להכיל @ אחד בלבד </br>";
                document.getElementById("mail").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("phone").value == "") {
                document.getElementById("error").innerHTML += "יש להכניס את מספר הטלפון</br>";
                document.getElementById("phone").style.backgroundColor = "red";
                msg++;
            }
            else if (isNaN(document.getElementById("phone").value) == true) {
                document.getElementById("error").innerHTML += "הטלפון חייב להכיל מספרים בלבד</br>";
                document.getElementById("phone").style.backgroundColor = "red";
                msg++;
            }
            else if (document.getElementById("phone").value.length != 10) {
                document.getElementById("error").innerHTML += "אורכו של מספר הטלפון צריך להיות שווה ל-10</br>";
                document.getElementById("phone").style.backgroundColor = "red";
                msg++;
            }
            if (document.getElementById("checkbox").checked == false) {
                document.getElementById("error").innerHTML += "יש להסכים לתנאי השימוש</br>";
                msg++;
            }
            if (msg == 0) {
                return true;
            }
            else {
                return false;
            }
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
            <h1 style="text-align: center; display: block; font-size: 50px; text-decoration-line: underline">הרשמה</h1>
            <table align="center">
                <tr>
                    <td align="center">שם פרטי
                        </td>

                    <td align="center">
                        <input type="text" id="firstname" name="firstname" onclick="ResetColor(this.id); closeNav()" />
                    </td>
                </tr>
                <tr>
                    <td align="center">שם משפחה
                        </td>

                    <td align="center">
                        <input type="text" id="lastname" name="lastname" onclick="ResetColor(this.id); closeNav()" />
                    </td>
                </tr>
                <tr>
                    <td align="center">תאריך לידה
                        </td>

                    <td align="center">
                        <input type="date" id="birth" name="birth" onclick="ResetColor(this.id); closeNav()" />
                    </td>
                </tr>
                <tr>
                    <td align="center">מגדר
                        </td>

                    <td align="center">
                        <input type="radio" name="gender" id="male" value="male" onclick="closeNav()">
                        זכר
                           
                       

                        <input type="radio" name="gender" id="female" value="female" onclick="closeNav()">
                        נקבה
                        </td>
                </tr>
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
                    <td align="center">אשר סיסמא
                        </td>

                    <td align="center">
                        <input type="password" id="confimpassword" name="confirmpassword" onclick="ResetColor(this.id); closeNav()">
                    </td>
                </tr>
                <tr>
                    <td align="center">מייל
                        </td>

                    <td align="center">
                        <input type="text" id="mail" name="mail" onclick="ResetColor(this.id); closeNav()">
                    </td>
                </tr>
                <tr>
                    <td align="center">מספר טלפון
                        </td>

                    <td align="center">
                        <input type="text" id="phone" name="phone" onclick="ResetColor(this.id); closeNav()">
                    </td>
                </tr>
                <tr>
                    <td align="left"></td>
                    <td align="center">אני מסכים 
                           
                       

                        <a href="#" onclick="MyWindow=window.open('Terms & Conditions.html','MyWindow','width=450,height=300');">לתנאי השימוש</a>
                        <input type="checkbox" id="checkbox" name="checkbox" onclick="closeNav(); MyWindow.close()">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="regButton" runat="server" Text="הרשם" OnClick="register" />
                        <input type="reset" value="אפס" onclick="Reset()" />
                    </td>
                </tr>
            </table>

            <div runat="server" class="error" style="text-align: center" id="error"></div>
        </div>
    </form>
</body>
</html>
