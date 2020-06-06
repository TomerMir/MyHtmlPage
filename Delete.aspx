<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />
    <style>
        body {
            font-family: "Lato", sans-serif; /*עיצוב הגופן*/
        }

        .topcorner {
            position: absolute;
            top: 25px;
            right: 25px;
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
<body style="background-color:aquamarine">
    <span class="topcorner" style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776; </span>
    <h1 style="text-align: center; display: block; font-size: 50px; text-decoration-line: underline">מחיקת משתמשים</h1>\

    <form id="form1" runat="server">       
            <asp:Button ID="nameBoxHidden" runat="server" Style="visibility: hidden" OnClick="deleteTt" />
            <asp:TextBox ID="nameBox" runat="server" Style="visibility: hidden"/>
    </form>
    <div id="contentDiv" runat="server">

    </div>

    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="OpenPage.aspx">קצת עלי</a>
        <a href="Page2.html">הנושא שבחרתי ומדוע</a>
        <a href="Page3.html">טבלה על הנושא</a>
        <a href="PhotoAlbum.html">אלבום תמונות</a>
        <a href="Damka.html">דמקה</a>
        <a href="Logout.aspx">התנתק</a>
    </div>
</body>

    <script type="text/javascript">

        function postToServer(id) {
            document.getElementById("nameBoxHidden").value = id;
            document.getElementById("nameBoxHidden").click();
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

</html>
