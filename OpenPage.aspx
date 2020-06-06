<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpenPage.aspx.cs" Inherits="OpenPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body style="direction:rtl; background-color:aquamarine;">    
    <form id="form1" runat="server">
        
    </form>
    <div>
        <%
            if(Application["Counter"] == null){
                Application["Counter"] = 0;
            }
            string username = (string)Session["username"];
            Application["Counter"] = (int)Application["Counter"] + 1;
            Response.Write("Hello " + username + ", You have entered the site " + Application["Counter"] + " times");
            %>
    </div>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="Page2.html">הנושא שבחרתי ומדוע</a>
        <a href="Page3.html">טבלה על הנושא</a>
        <a href="PhotoAlbum.html">אלבום תמונות</a>
        <a href="Damka.html">דמקה</a>
        <a href="Logout.aspx">התנתק</a>
    </div>


    <div id="main">
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
        <h1 style="text-align:center; display:block; font-size: 50px; text-decoration-line:underline">קצת עלי</h1>
        <p style="font-size:22px">קוראים לי תומר ואני גר בישוב צורן, ישראל</p>
        <p style="font-size:22px">אני לומד בתיכון עודד בקדימה</p>
        <p style="font-size:22px">אני אוהב להתאמן ולרוץ</p>
        <p style="font-size:22px">בזמני הפנוי, אני אוהב ללמוד דברים חדשים</p>
    </div>

    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginRight = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginRight = "0";
            document.body.style.backgroundColor = "aquamarine"
        }
    </script>
</body>
</html>
