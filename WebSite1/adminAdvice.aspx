<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminAdvice.aspx.cs" Inherits="adminAdvice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Recommender | Home</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Ionicons -->
    <link href="dist/css/ionicons.min.css" rel="stylesheet" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link type="text/css" rel="stylesheet" href="dist/css/jsgrid.min.css" />
    <link type="text/css" rel="stylesheet" href="dist/css/jsgrid-theme.min.css" />
    <link href="dist/css/programme.css" rel="stylesheet" />
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
    <link rel="stylesheet" href="dist/css/skins/skin-yellow.min.css" />

    <!--JQuery Confirm CSS-->
    <link rel="stylesheet" href="dist/css/jquery-confirm.min.css">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <style>
        [contenteditable=true]:empty:before {
            content: attr(placeholder);
            display: block; /* For Firefox */
        }
    </style>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-yellow sidebar-mini">
    <div class="wrapper">

        <!-- Main Header -->
        <header class="main-header">

            <!-- Logo -->
            <a href="index2.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>S</b>R</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg" style="font-size: 80%"><b>Student&nbspRecommender&nbsp</span>
            </a>

            <!-- Header Navbar -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">

            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">

                <!-- Sidebar user panel (optional) -->
                <div class="user-panel">
                    <div class="pull-left image" style="width: 100%">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" style="">
                    </div>
                    <div class="pull-left info" style="color: white; border: 0;">
                        <p>
                            <label id="lbLast">Null</label>,
                            <label id="lbFirst">Null</label>
                            <label id="lbMiddle">Null</label>
                        </p>
                        <p>
                            <label id="lbCourse"></label>
                        </p>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <form runat="server">
                    <ul class="sidebar-menu" style="font-family: 'programme_bold'">
                        <li class="header">NAVIGATION</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li><a href="adminStudentView.aspx"><i class="fa fa-users"></i><span>Students</span></a></li>
                        <li class="active"><a href="#"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
                        <%--<li><a href="#"><i class="fa fa-bell"></i><span>Notification</span></a></li>--%>                      
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-table"></i><span>Curriculum</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu" style="display: none">
                                <li><a href="adminCurrView.aspx"><i class="fa fa-table"></i>View/Edit</a></li>
                                <li><a href="adminCurrAdd.aspx"><i class="fa fa-plus"></i>Add </a></li>
                            </ul>
                        </li>
                        <li><a href="adminSchedOffering.aspx"><i class="fa fa-clock-o"></i><span>Schedule Offering</span></a></li>
                        <li><a href="adminEnrollSched.aspx"><i class="fa fa-calendar-plus-o"></i><span>Event Date</span></a></li>
                        <li><a href="adminPetitionList.aspx"><i class="fa fa-list"></i><span>Petition Subject</span></a></li>
                        <br />
                        <li><a href="adminAcctSettings.aspx"><i class="fa fa-gear"></i><span>Account Settings</span></a></li>
                        <li>
                            <asp:LinkButton runat="server" ID="btnLogout" OnClick="btnLogout_Click"><i class="fa fa-power-off"></i><span>Logout</span></asp:LinkButton>
                        </li>
                    </ul>
                </form>
                <!-- /.sidebar-menu -->
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1 style="font-family: 'programme_light'">Advice
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row" id="adviceContainer">
                </div>
            </section>
            <!-- /.content -->
        </div>


        <!-- /.content-wrapper -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="pull-right hidden-xs">
                
            </div>
            <!-- Default to the left -->
            <strong></strong>
        </footer>

        <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.2.3 -->
    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- InputMask -->
    <script src="plugins/input-mask/jquery.inputmask.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script type="text/javascript" src="dist/js/jsgrid.min.js"></script>
    <%--JQuery Confirm JS--%>
    <script src="dist/js/jquery-confirm.min.js"></script>
    <script>
        //Money Euro
        $("[data-mask]").inputmask();
    </script>
    <script>
        var currentAdminUser = "";
        var currentCourse = "";
        document.getElementsByTagName("body")[0].onload = function () {
            currentAdminUser = '<%= Session["adminUser"].ToString() %>';
            currentCourse = '<%= Session["adminCourse"].ToString() %>';
            loadProfile(currentAdminUser);
            getAdvices();
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminAdvice.aspx/loadProfile',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ adminUsername: adminUsername }),
                dataType: 'json',
                async: false,
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    document.getElementById("lbLast").innerHTML = XMLrows[0].getElementsByTagName("adminLast")[0].innerHTML;
                    document.getElementById("lbFirst").innerHTML = XMLrows[0].getElementsByTagName("adminFirst")[0].innerHTML;
                    document.getElementById("lbMiddle").innerHTML = XMLrows[0].getElementsByTagName("adminMiddle")[0].innerHTML;
                    document.getElementById("lbCourse").innerHTML = XMLrows[0].getElementsByTagName("courseCode")[0].innerHTML;

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

        function getAdvices() {
            var adviceContainer = document.getElementById("adviceContainer");
            $.ajax({
                type: 'POST',
                url: 'adminAdvice.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT * FROM tblAdvice" }),
                dataType: 'json',
                async: false,
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        for (var i = 0; i < XMLrows.length; i++) {
                            var adviceNotes = document.createElement("div");
                            adviceNotes.className = "col-md-6";
                            adviceNotes.innerHTML = "<div class='box box-solid'><div class='box-body'><ul class='timeline border with-border'>" +
                                "<!-- timeline time label -->" +
                                "<li class='time-label'>" +
                                "<span class='bg-orange'>" +
                                "<h2 class='margin'>" + XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML + "</h2>" +
                                "</span>" +
                                "</li>" +
                                "<li>" +
                                "<!-- timeline icon -->" +
                                "<i class='fa fa-sticky-note  bg-orange'></i>" +
                                "<div class='timeline-item'>" +
                                "<h3 class='timeline-header'>" +
                                "<a href='#'>Steps</a>" +
                                "</h3>" +
                                "<div class='timeline-body'>" +
                                "<ol>" + getSteps(XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML) + "</ol>" +
                                "</div>" +
                                "</div>" +
                                "</li>" +
                                "<li>" +
                                "<i class='fa fa-envelope  bg-orange'></i>" +
                                "<div class='timeline-item'>" +
                                "<h3 class='timeline-header'>" +
                                "<a href='#'>Notes</a>" +
                                "</h3>" +
                                "<div class='timeline-body'>" +
                                "<textarea rows='8' style='width: 100%; padding: 10px;' placeholder='Write notes on advice' disabled>" + getNotes(currentCourse, XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML).replace(/&lt;br&gt;/g, '') + "</textarea>" +
                                "</div>" +
                                "</div>" +
                                "</li>" +
                                "<li>" +
                                "<i class='fa fa-gear'></i>" +
                                "<div class='timeline-item'>" +
                                "<h3 class='timeline-header'>" +
                                "<button class='btn bg-orange' onclick=\"editNotes(this,'" + XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML + "')\">Edit</button>" +
                                "</h3>" +
                                "</div>" +
                                "</li>" +
                                "</ul></div></div>";
                            adviceContainer.appendChild(adviceNotes);
                        }
                        //Auto Grow text areas
                        for (var i = 0; i < document.getElementsByClassName("viewSteps").length; i++) {
                            auto_grow(document.getElementsByClassName("viewSteps")[i]);
                        }
                    }


                }
            });
        }
        function auto_grow(element) {
            element.style.height = "5px";
            element.style.height = (element.scrollHeight) + "px";
        }

        function getSteps(adviceName) {
            var content = "";
            $.ajax({
                type: 'POST',
                url: 'adminAdvice.aspx/universalQuery',
                data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "' order by adviceStepOrder" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                async: false,
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    if (XMLrows.length > 0) {
                        for (var i = 0; i < XMLrows.length; i++) {
                            var txtArea = document.createElement("textarea");
                            txtArea.style.width = "100%";
                            txtArea.innerHTML = XMLrows[i].getElementsByTagName("adviceStepDesc")[0].innerHTML;
                            txtArea.className = 'form-control viewSteps';
                            txtArea.style.overflow = "hidden";
                            txtArea.disabled = true;
                            content += "<li>" + txtArea.outerHTML + "</li>";
                        }
                    }
                    else {
                        content += "No Steps on this Advice";
                    }
                },
            });
            return content;
        }


        function getNotes(courseCode, adviceName) {
            var notes;
            $.ajax({
                type: 'POST',
                url: 'adminAdvice.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT adviceNotes FROM tblNotes WHERE courseCode = '" + courseCode + "' AND adviceName = '" + adviceName + "'" }),
                dataType: 'json',
                async: false,
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        notes = XMLrows[0].getElementsByTagName("adviceNotes")[0].innerHTML;
                    }
                    else {
                        notes = "";
                    }


                }
            });
            return notes;
        }

        function editNotes(elem, adviceName) {
            //Get What to Edit
            var notesTxtArea = elem.parentNode.parentNode.parentNode.previousSibling.childNodes[1].childNodes[1].childNodes[0];

            if (elem.innerHTML == "Edit") {
                elem.innerHTML = "Apply";
                notesTxtArea.disabled = false;
            }
            else if (elem.innerHTML == "Apply") {
                elem.innerHTML = "Edit";
                notesTxtArea.disabled = true;
                addBreak(notesTxtArea);
                if (updateAndInsert("DELETE FROM tblNotes WHERE courseCode = '" + currentCourse + "' AND adviceName = '" + adviceName + "'; INSERT INTO tblNotes VALUES ('" + adviceName + "','" + currentCourse + "','" + notesTxtArea.value + "')") == true) {
                    window.location.href = "adminAdvice.aspx";
                }
                else {
                    alert("Error");
                }

            }
        }

        function addBreak(el) {
            var textarea = el;
            var matches = textarea.value.split(/\n|\s\n/);
            textarea.value = matches.join("<br>\n") + "<br>";
        }

        function updateAndInsert(SQLstring) {
            var success;
            $.ajax({
                type: 'POST',
                url: 'adminAdvice.aspx/updateAndInsert',
                async: false,
                data: JSON.stringify({ SQLstring: SQLstring }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    success = response.d;
                },
                failure: function (response) {
                    success = false;
                }
            });

            return success;
        }

    </script>
</body>
</html>

