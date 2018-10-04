<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDashboard.aspx.cs" Inherits="adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Recommender | Home</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Ionicons -->
    <link href="dist/css/ionicons.min.css" rel="stylesheet" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
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
    <%--Full Calendar CSS--%>
    <link href="dist/css/fullcalendar.min.css" rel="stylesheet" />


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

        .stepsTextArea {
            overflow: hidden;
        }

            .stepsTextArea[disabled] {
                background-color: #FFF !important;
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
                        <li class="active"><a href="#"><i class="fa fa-bell"></i><span>Dashboard</span></a></li>
                        <li><a href="adminAdvice.aspx"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
                        <li><a href="adminStudentView.aspx"><i class="fa fa-users"></i><span>Students</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Dashboard
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="box box-widget widget-user-2">
                            <!-- Add the bg color to the header using any of the bg-* classes -->
                            <div class="widget-user-header bg-yellow">
                                <!-- /.widget-user-image -->
                                <h3 class="widget-user-username" style="margin-left: 0px;">School Year: 1819</h3>
                                <h5 class="widget-user-desc" style="margin-left: 0px;">Semester: First</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a href="#">Advice Accomplished<span class="pull-right badge bg-blue">14</span></a></li>
                                    <li><a href="#">Petitions <span class="pull-right badge bg-aqua">5</span></a></li>
                                    <li><a href="#">Upcoming Events<span class="pull-right badge bg-green">2</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="box box-success">
                            <div class="box-header ui-sortable-handle" style="cursor: move;">
                                <i class="fa fa-comments-o"></i>

                                <h3 class="box-title">Inquiring Students</h3>

                            </div>
                            <div class="box-body chat" id="inquiringStudent" style="overflow: auto; width: auto; height: 250px;">
                                <!-- chat item -->
                                <div class="text-center text-muted"><i class="fa fa-file-o fa-5x"></i>
                                    <h3>No Inquiring Students</h3>
                                </div>
                                <!-- chat item -->
                            </div>
                            <!-- /.chat -->
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="small-box bg-aqua">
                                    <div class="inner">
                                        <h3>20</h3>

                                        <p>Registered Students</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="small-box bg-red">
                                    <div class="inner">
                                        <h3>5</h3>

                                        <p>Students With Advice</p>
                                    </div>
                                    <div class="icon">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
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
    <!-- jQuery Knob -->
    <script src="plugins/knob/jquery.knob.js"></script>
    <%--JQuery Confirm JS--%>
    <script src="dist/js/jquery-confirm.min.js"></script>
    <%--Moment JS--%>
    <script src="dist/js/moment.js"></script>
    <%--Full Calendar--%>
    <script src="dist/js/fullcalendar.min.js"></script>
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
            getInquireStud();
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminDashboard.aspx/loadProfile',
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

        function getInquireStud() {
            $.ajax({
                type: 'POST',
                url: 'adminDashboard.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT * FROM tblNotifs inner join tblStud on tblNotifs.studNo = tblstud.studNo WHERE notified = '0' AND courseCode = '" + currentCourse + "'  " }),
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        inquiringStudent = document.getElementById("inquiringStudent");
                        inquiringStudent.innerHTML = "";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var notifDate = new Date(XMLrows[i].getElementsByTagName("notifDate")[0].innerHTML);
                            notifDate = (notifDate.getMonth() + 1) + '/' + notifDate.getDate() + '/' + notifDate.getFullYear();
                            inquiringStudent.innerHTML += "<div class='item'>" +
                                "<img src='" + XMLrows[i].getElementsByTagName("studPic")[0].innerHTML + "' alt='user image' class='online'>" +
                                "<p class='message'>" +
                                "<a href='#' class='name'>" +
                                "<small class='text-muted pull-right'><i class='fa fa-calendar-o'></i> " + notifDate + "</small>" +
                                XMLrows[i].getElementsByTagName("studFirst")[0].innerHTML + " " + XMLrows[i].getElementsByTagName("studMiddle")[0].innerHTML + " " + XMLrows[i].getElementsByTagName("studLast")[0].innerHTML +
                                "</a>" +
                                XMLrows[i].getElementsByTagName("notifDesc")[0].innerHTML + " <a href='#' onclick=\"notifiedStud(" + XMLrows[i].getElementsByTagName("notifCode")[0].innerHTML + ")\"><u>Done</u></a>" +
                                "</p>" +
                                "</div>";
                        }
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

        function notifiedStud(id) {
            $.confirm({
                title: "Alert",
                buttons: {
                    ok: {
                        action: function () {
                            $.ajax({
                                type: 'POST',
                                url: 'adminDashboard.aspx/universalQuery',
                                contentType: 'application/json; charset=utf-8',
                                data: JSON.stringify({ SQL: "UPDATE tblNotifs SET notified = 1 WHERE notifCode = " + id + ";" }),
                                dataType: 'json',
                                success: function (response) {
                                    //INSERT HAS NO RETURN       
                                    window.location.href = "adminDashboard.aspx";
                                },
                                failure: function (response) {
                                    alert("Connection Failed Refresh Page");
                                }
                            });
                        }
                    },
                    cancel: {}
                }
            });
        }



    </script>
</body>
</html>

