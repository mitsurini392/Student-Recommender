<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminPetitionList.aspx.cs" Inherits="adminPetitionList" %>

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
                        <li><a href="adminAdvice.aspx"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
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
                        <li class="active"><a href="#"><i class="fa fa-file-o"></i><span>Reports</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Reports
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="nav-tabs-custom tab-warning">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">Student Registered</a></li>
                        <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Advices</a></li>
                        <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">Students Inquired<small class="label bg-orange" id="badgeAdvice"></small></a></li>
                        <li class=""><a href="#tab_4" data-toggle="tab" aria-expanded="false">Announcement Logs<small class="label bg-orange" id="badgeInquire"></small></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="form-group">
                                <label>Search:</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Student No.,First Name, Last Name " />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchStud(this)">Search</button>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Search by Date:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                From
                                            </div>
                                            <input type="date" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>&nbsp;</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                To
                                            </div>
                                            <input type="date" class="form-control" />
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="searchStud(this)">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="searchStud(this)"><b>Print</b></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped" id="studTable">
                                <tr>
                                    <th>Student No.</th>
                                    <th>Full Name</th>
                                    <th>Date Registered</th>
                                </tr>
                            </table>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="tab_2">
                            <div class="form-group">
                                <label>Search:</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Student No.,First Name, Last Name " />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchStud(this)">Search</button>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Search by Date:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                From
                                            </div>
                                            <input type="date" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>&nbsp;</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                To
                                            </div>
                                            <input type="date" class="form-control" />
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="searchStud(this)">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="searchStud(this)"><b>Print</b></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped" id="studTable">
                                <tr>
                                    <th>Student No.</th>
                                    <th>Full Name</th>
                                    <th>Advice</th>
                                    <th>Date Adviced</th>
                                </tr>
                            </table>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane listStudentAdvice" id="tab_3">
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane listStudentAdvice" id="tab_4">
                            <div class="box box-success">

                                <div class="box-body chat" id="inquiringStudent" style="overflow: auto; width: auto; height: 500px;">
                                    <!-- chat item -->
                                    <div class="text-center text-muted">
                                        <i class="fa fa-file-o fa-5x"></i>
                                        <h3>No Inquiring Students</h3>
                                    </div>
                                    <!-- chat item -->
                                </div>
                                <!-- /.chat -->
                            </div>
                        </div>
                    </div>
                    <!-- /.tab-content -->
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
            loadPetitionList(currentCourse);
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/loadProfile',
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

    </script>
</body>
</html>
