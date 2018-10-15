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
                                    <input type="text" class="form-control" id="txtSearchStudReport" placeholder="Student No., First name or Last name" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchReportStud()">Search</button>
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
                                            <input type="date" class="form-control" id="ReportStudFrom"/>
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
                                            <input type="date" class="form-control" id="ReportStudTo"/>
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="dateReportStud()">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="printStud()"><b>Print</b></button>
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
                                    <input type="text" class="form-control"  id="txtRptSearchAdvice" placeholder="Student No.,First Name, Last Name " />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchAdviceReports()">Search</button>
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
                                            <input type="date" class="form-control" id="dateReportAdviceFrom" />
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
                                            <input type="date" class="form-control" id="dateReportAdviceTo" />
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="dateAdviceReports()">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="printAdvice()"><b>Print</b></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped" id="adviceTable">
                                <tr>
                                    <th>Student No.</th>
                                    <th>Full Name</th>
                                    <th>Advice</th>
                                    <th>Date Adviced</th>
                                </tr>
                            </table>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane" id="tab_3">
                            <div class="form-group">
                                <label>Search:</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <input type="text" class="form-control" id="txtSearchInquired" placeholder="Student No., First name or Last name" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchInquiries() ">Search</button>
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
                                            <input type="date" class="form-control" id="ReportInqFrom"/>
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
                                            <input type="date" class="form-control" id="ReportInqTo"/>
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="dateInquiries()">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="printInquire()"><b>Print</b></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped" id="inqTable">
                                <tr>
                                    <th>Student No.</th>
                                    <th>Full Name</th>
                                    <th>Date Inquired</th>
                                </tr>
                            </table>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane listStudentAdvice" id="tab_4">
                            <div class="form-group">
                                <label>Search:</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <input type="text" class="form-control" id="txtSearchAnnoun" placeholder="Search" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-warning" onclick="searchAnnoun()">Search</button>
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
                                            <input type="date" class="form-control" id="ReportAnnounFrom"/>
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
                                            <input type="date" class="form-control" id="ReportAnnounTo"/>
                                            <span class="input-group-btn">
                                                <button class="btn btn-warning" onclick="dateInquiries()">Go</button>
                                            </span>
                                            <span class="input-group-btn" >
                                                <button class="btn btn-info" style="margin-left: 20px" onclick="printAnnoun()"><b>Print</b></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped" id="announTable">
                                <tr>
                                    <th>Subject</th>
                                    <th>Description</th>
                                    <th>Date</th>
                                </tr>
                            </table>
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
            loadReportStud();
            loadAdviceReports();
            loadInquiries();
            loadAnnoun();
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

        function loadReportStud() {
           $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
               async: false,
               data: JSON.stringify({ SQL: "select * from tblRptStud inner join tblStud on tblRptStud.studNo = tblStud.studNo WHERE courseCode = '" + currentCourse + "'" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    if (XMLrows.length > 0) {
                        var studTable = document.getElementById("studTable");
                        studTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Date Registered</td></tr>";

                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = studTable.insertRow(-1);
                            currDate = new Date($(XMLrows[i]).find("timestamp").html());
                            currDate = (currDate.getMonth() + 1) + '/' + currDate.getDate() + '/' + currDate.getFullYear();

                            row.innerHTML += "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + currDate + "</td>";
                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function searchReportStud() {
            var txtSearchStudReport = document.getElementById("txtSearchStudReport").value;

            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblRptStud inner join tblStud on tblRptStud.studNo = tblStud.studNo WHERE courseCode = '" + currentCourse + "' AND (tblRptStud.studNo LIKE '%" + txtSearchStudReport + "%' OR tblStud.studFirst LIKE '%" + txtSearchStudReport + "%' OR tblStud.studMiddle LIKE '%" + txtSearchStudReport + "%' OR tblStud.studLast LIKE '%" + txtSearchStudReport + "%')" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    if (XMLrows.length > 0) {
                        var studTable = document.getElementById("studTable");
                        studTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Date Registered</td></tr>";

                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = studTable.insertRow(-1);
                            currDate = new Date($(XMLrows[i]).find("timestamp").html());
                            currDate = (currDate.getMonth() + 1) + '/' + currDate.getDate() + '/' + currDate.getFullYear();

                            row.innerHTML += "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + currDate + "</td>";
                        }
                    }
                    else {
                        var studTable = document.getElementById("studTable");
                        studTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function dateReportStud() {
            var ReportStudFrom = $("#ReportStudFrom").val();
            var ReportStudTo = $("#ReportStudTo").val();

            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblRptStud inner join tblStud on tblRptStud.studNo = tblStud.studNo WHERE courseCode = '" + currentCourse + "' AND [timestamp] BETWEEN '" + ReportStudFrom + "' AND '" + ReportStudTo + "';" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    if (XMLrows.length > 0) {
                        var studTable = document.getElementById("studTable");
                        studTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Date Registered</td></tr>";

                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = studTable.insertRow(-1);
                            currDate = new Date($(XMLrows[i]).find("timestamp").html());
                            currDate = (currDate.getMonth() + 1) + '/' + currDate.getDate() + '/' + currDate.getFullYear();

                            row.innerHTML += "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + currDate + "</td>";
                        }
                    }
                    else {
                        var studTable = document.getElementById("studTable");
                        studTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function loadAdviceReports() {
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * from tblRptAdvice inner join tblstud on tblStud.studNo = tblRptAdvice.studNo WHERE courseCode = '" + currentCourse + "';" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var adviceTable = document.getElementById("adviceTable");
                        adviceTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Advice Name</td><td>Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = adviceTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + $(XMLrows[i]).find("adviceName").html() + "</td><td>" + $(XMLrows[i]).find("adviceTimeStamp").html() + "</td>";

                        }
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function searchAdviceReports() {
            var txtRptSearchAdvice = document.getElementById("txtRptSearchAdvice").value;
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * from tblRptAdvice inner join tblstud on tblStud.studNo = tblRptAdvice.studNo WHERE courseCode = '" + currentCourse + "' AND (tblRptAdvice.studNo LIKE '%" + txtRptSearchAdvice + "%');" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var adviceTable = document.getElementById("adviceTable");
                        adviceTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Advice Name</td><td>Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = adviceTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + $(XMLrows[i]).find("adviceName").html() + "</td><td>" + $(XMLrows[i]).find("adviceTimeStamp").html() + "</td>";

                        }
                    }
                    else {
                        var adviceTable = document.getElementById("adviceTable");
                        adviceTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function dateAdviceReports() {
            var dateReportAdviceFrom = $("#dateReportAdviceFrom").val();
            var dateReportAdviceTo = $("#dateReportAdviceTo").val();
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * from tblRptAdvice inner join tblstud on tblStud.studNo = tblRptAdvice.studNo WHERE courseCode = '" + currentCourse + "' AND adviceTimeStamp BETWEEN '" + dateReportAdviceFrom + "' AND '" + dateReportAdviceTo + "'" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var adviceTable = document.getElementById("adviceTable");
                        adviceTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Advice Name</td><td>Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = adviceTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + $(XMLrows[i]).find("adviceName").html() + "</td><td>" + $(XMLrows[i]).find("adviceTimeStamp").html() + "</td>";

                        }
                    }
                    else {
                        var adviceTable = document.getElementById("adviceTable");
                        adviceTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function loadInquiries() {
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblNOtifs inner join tblstud on tblstud.studNo = tblnotifs.studNo WHERE courseCode = '" + currentCourse + "';" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var inqTable = document.getElementById("inqTable");
                        inqTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Notify Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = inqTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>"+$(XMLrows[i]).find("studFirst").html()+" " +$(XMLrows[i]).find("studMiddle").html()+ " " + $(XMLrows[i]).find("studLast").html() +  "</td><td>"+$(XMLrows[i]).find("notifDate").html()+"</td>";

                        }
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function searchInquiries() {
            var txtSearchInquired = $("#txtSearchInquired").val();
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblNOtifs inner join tblstud on tblstud.studNo = tblnotifs.studNo WHERE courseCode = '" + currentCourse + "' AND (tblstud.studNo LIKE '%" + txtSearchInquired + "%' OR tblstud.studFirst LIKE '%" + txtSearchInquired + "%');" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var inqTable = document.getElementById("inqTable");
                        inqTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Notify Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = inqTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + $(XMLrows[i]).find("notifDate").html() + "</td>";

                        }
                    }
                    else {
                        var inqTable = document.getElementById("inqTable");
                        inqTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function dateInquiries() {
            var ReportInqFrom = $("#ReportInqFrom").val();
            var ReportInqTo = $("#ReportInqTo").val();
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblNOtifs inner join tblstud on tblstud.studNo = tblnotifs.studNo WHERE courseCode = '" + currentCourse + "' AND notifDate BETWEEN '" + ReportInqFrom + "' AND '" + ReportInqTo + "';" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var inqTable = document.getElementById("inqTable");
                        inqTable.innerHTML = "<tr><td>Student No.</td><td>Full Name</td><td>Notify Date</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = inqTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("studNo").html() + "</td><td>" + $(XMLrows[i]).find("studFirst").html() + " " + $(XMLrows[i]).find("studMiddle").html() + " " + $(XMLrows[i]).find("studLast").html() + "</td><td>" + $(XMLrows[i]).find("notifDate").html() + "</td>";

                        }
                    }
                    else {
                        var inqTable = document.getElementById("inqTable");
                        inqTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function loadAnnoun() {
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblAnnounce Where courseCode = '" + currentCourse + "'" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var announTable = document.getElementById("announTable");
                        announTable.innerHTML = "<tr><td>Subject</td><td>Description</td><td>Timestamp</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = announTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("announceSubj").html() + "</td><td>"+$(XMLrows[i]).find("announceDesc").html()+"</td><td>"+$(XMLrows[i]).find("announceDate").html()+"</td>";

                        }
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function searchAnnoun() {
            var txtSearchAnnoun = $("#txtSearchAnnoun").val();
            $.ajax({
                type: 'POST',
                url: 'adminReports.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "select * from tblAnnounce Where courseCode = '" + currentCourse + "' AND (announceSubj LIKE '%" + txtSearchAnnoun + "%' OR announceDesc LIKE '%" + txtSearchAnnoun + "%')" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var announTable = document.getElementById("announTable");
                        announTable.innerHTML = "<tr><td>Subject</td><td>Description</td><td>Timestamp</td></tr>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = announTable.insertRow(-1);
                            row.innerHTML = "<td>" + $(XMLrows[i]).find("announceSubj").html() + "</td><td>"+$(XMLrows[i]).find("announceDesc").html()+"</td><td>"+$(XMLrows[i]).find("announceDate").html()+"</td>";

                        }
                    }
                    else {
                        var announTable = document.getElementById("announTable");
                        announTable.innerHTML = "<div class='text-center text-muted'><i class='fa fa-file-o fa-3x'></i><br><br>No Records Found</div>";
                    }
                   
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }


        function printStud() {
            var ReportStudFrom = $("#ReportStudFrom").val();
            var ReportStudTo = $("#ReportStudTo").val();

            var studTable = document.getElementById("studTable");

            if (ReportStudFrom != "" && ReportStudTo != "") {
                PrintElem(studTable, 'date', ReportStudFrom, ReportStudTo,'Student Registered Archives');
            }
               PrintElem(studTable,'all',null,null,'Student Registered Archives');
        }

        function printAdvice() {
            var dateReportAdviceFrom = $("#dateReportAdviceFrom").val();
            var dateReportAdviceTo = $("#dateReportAdviceTo").val();

            var adviceTable = document.getElementById("adviceTable");

            if (dateReportAdviceFrom != "" && dateReportAdviceTo != "") {
                PrintElem(studTable, 'date', dateReportAdviceFrom, dateReportAdviceTo,'Advices Archive');
            }
               PrintElem(adviceTable,'all',null,null,'Advices Archive');
        }

        function printInquire() {
            var ReportInqFrom = $("#ReportInqFrom").val();
            var ReportInqTo = $("#ReportInqTo").val();

            var inqTable = document.getElementById("inqTable");

            if (ReportInqFrom != "" && ReportInqTo != "") {
                PrintElem(inqTable, 'date', ReportInqFrom, ReportInqFrom,'Students Inquired Archive');
            }
            PrintElem(inqTable, 'all', null, null, 'Students Inquired Archive');
        }

        function printAnnoun() {
            var ReportAnnounFrom = $("#ReportAnnounFrom").val();
            var ReportAnnounTo = $("#ReportAnnounTo").val();

            var announTable = document.getElementById("announTable");

            if (ReportAnnounFrom  != "" && ReportAnnounTo != "") {
                PrintElem(announTable, 'date', ReportAnnounFrom, ReportAnnounTo,'Announcement Archive');
            }
            PrintElem(announTable, 'all', null, null, 'Announcement Archive');
        }

        function PrintElem(elem, type, from, to, type2) {
            var mywindow = window.open('', 'PRINT', 'height=400,width=600');

            mywindow.document.write("<html><head><title>"+type2+"</title>");
            mywindow.document.write("<style media='print'>" +
                "p {" +
                "   font-family: programme_bold;" +
                "}" +
                "table {" +
                "   border-collapse: collapse;" +
                "   width: 100%;" +
                "}" +
                "table,td,th {" +
                "   border: 1px solid black;" +
                "}" +
                "</style>");
            var header = "";
            if (type == 'all') {
                header = "of all time";
            }
            else if (type == 'date') {
                header = "From: " + from + "  To: "+to;
            }
            mywindow.document.write('</head><body ><h3>Student Academic Based Recommender System</h3>');
            mywindow.document.write("<p>" + header + "</p>");
            mywindow.document.write(elem.outerHTML);
            mywindow.document.write('</body></html>');

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10*/

            mywindow.print();
            mywindow.close();

            return true;
        }

    </script>
</body>
</html>
