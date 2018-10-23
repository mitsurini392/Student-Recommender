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
                        <li class="active"><a href="#"><i class="fa fa-list"></i><span>Petition Subject</span></a></li>
                        <li><a href="adminReports.aspx"><i class="fa fa-file-o"></i><span>Reports</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Petition Subjects
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-4">
                        <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title">Petition List</h3>
                            </div>
                            <div class="box-body" style="height: 700px; overflow: auto" id="petitionList">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <div class="text-center text-muted">
                                    <i class="fa fa-file-o fa-5x"></i>
                                    <h3>No Petitions to Show</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title">Petition List</h3>
                            </div>
                            <div class="box-body" style="height: 700px; overflow: auto" id="petitionStudentList">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <div class="text-center text-muted">
                                    <i class="fa fa-hand-o-left fa-5x"></i>
                                    <h3>Select A Petition List</h3>
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

        function loadPetitionList(courseCode) {

            var petitionList = document.getElementById("petitionList");

            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * FROM tblPet inner join tblSubj on tblPet.petSubjID = tblSubj.subjID  WHERE petCourse = '" + courseCode + "'" }),
                contentType: 'application/json; charset=utf-8',
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
                        //Clear Petition List
                        petitionList.innerHTML = "";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var box = document.createElement("div");
                            //Changes Color on Status
                            if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Approved") {
                                box.className = "small-box bg-green petitionBox";
                            }
                            else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "VPAA Pending") {
                                box.className = "small-box bg-aqua petitionBox";
                            }
                            else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Pending") {
                                box.className = "small-box bg-orange petitionBox";
                                box.style.filter = "Brightness(50%)";
                            }
                            else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Rejected") {
                                box.className = "small-box bg-red petitionBox";
                            }
                            box.innerHTML = "<div class='inner'>" +
                                "<h3>" + countStudentsOnPetition(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</h3>" +
                                "<p>Subject Code: " + getEquivSubjCode(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</p>" +
                                "<p>Subject Name: " + $(XMLrows[i]).find('subjName').html() + "</p>" +
                                "<p>Status: " + XMLrows[i].getElementsByTagName("petApp")[0].innerHTML + "</p>" +
                                "</div>" +
                                "<div class='icon'>" +
                                "<i class='ion ion-person-add'></i>" +
                                "</div>" +
                                "<a href='#' class='small-box-footer' onclick=\"viewStudentList(this,'" + XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML + "')\" >View Students <i class='fa fa-arrow-circle-right'></i>" +
                                "</a>";
                            petitionList.appendChild(box);
                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function getEquivSubjCode(subjID) {
            var subjCode = "";
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT subjCode FROM tblSubj WHERE subjID = '" + subjID + "'" }),
                contentType: 'application/json; charset=utf-8',
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
                        subjCode = XMLrows[0].getElementsByTagName("subjCode")[0].innerHTML;
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return subjCode;
        }

        function getEquivSubjName(subjID) {
            var subjName = "";
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT subjName FROM tblSubj WHERE subjID = '" + subjID + "'" }),
                contentType: 'application/json; charset=utf-8',
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
                        subjName = XMLrows[0].getElementsByTagName("subjName")[0].innerHTML;
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return subjName;
        }

        function countStudentsOnPetition(petSubjID) {
            var count = "";
            var SQLselect = "SELECT COUNT(*) FROM tblPetStud INNER JOIN tblPet ON tblPetStud.petSubjID = tblPet.petSubjID WHERE tblPet.petSubjID = '" + petSubjID + "';";
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: SQLselect }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    count = XMLrows[0].getElementsByTagName("Column1")[0].innerHTML;

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return count;
        }

        function viewStudentList(elem, petSubjID) {
            var unselectedBox = document.getElementsByClassName("petitionBox");
            //reset color of all boxes
            for (var i = 0; i < unselectedBox.length; i++) {
                unselectedBox[i].style.filter = "Brightness(50%)";
            }
            //change color
            elem.parentNode.style.filter = "Brightness(100%)";

            var petitionStudentList = document.getElementById("petitionStudentList");
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * FROM tblPetStud INNER JOIN tblPet ON tblPetStud.petSubjID = tblPet.petSubjID WHERE tblPet.petSubjID = '" + petSubjID + "';" }),
                contentType: 'application/json; charset=utf-8',
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
                        petitionStudentList.innerHTML = "";
                        //Add Buttons
                        petitionStudentList.innerHTML += "<p>Change Status</p><button class='btn btn-info margin' onclick=\"printPetitionList('" + petSubjID + "')\">Print</button><button class='btn btn-success margin' onclick=\"setPetitionStatus('Approved','" + petSubjID + "')\">Approve</button><button class='btn btn-danger margin' onclick=\"setPetitionStatus('Rejected','" + petSubjID + "')\">Reject</button>";
                        var tbl = document.createElement("table");
                        tbl.className = "table table-striped";
                        var headerRow = tbl.insertRow(-1);
                        headerRow.innerHTML = "<th>No.</th><th>Student No.</th><th>Full Name</th><th>Section</th><th>Contact</th><th>Email</th>";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = tbl.insertRow(-1);
                            var cell0 = row.insertCell(0);
                            cell0.innerHTML = i + 1;
                            var cell1 = row.insertCell(-1);
                            cell1.innerHTML = XMLrows[i].getElementsByTagName("studNo")[0].innerHTML;
                            var cell2 = row.insertCell(-1);
                            cell2.innerHTML = getStudInfo(petSubjID, XMLrows[i].getElementsByTagName("studNo")[0].innerHTML)[0] + " " + getStudInfo(petSubjID, XMLrows[i].getElementsByTagName("studNo")[0].innerHTML)[1] + " " + getStudInfo(petSubjID, XMLrows[i].getElementsByTagName("studNo")[0].innerHTML)[2];
                            var cell3 = row.insertCell(-1);
                            cell3.innerHTML = getSection(XMLrows[i].getElementsByTagName("studNo")[0].innerHTML);
                            var cell4 = row.insertCell(-1);
                            cell4.innerHTML = getStudInfo(petSubjID, XMLrows[i].getElementsByTagName("studNo")[0].innerHTML)[3];
                            var cell5 = row.insertCell(-1);
                            cell5.innerHTML = getStudInfo(petSubjID, XMLrows[i].getElementsByTagName("studNo")[0].innerHTML)[4];
                        }
                        petitionStudentList.appendChild(tbl);
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function getStudInfo(petSubjID, studNo) {
            var infoList = [];
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * FROM tblPetStud INNER JOIN tblStud ON tblPetStud.studNo = tblStud.studNo WHERE tblPetStud.petSubjID = '" + petSubjID + "' AND tblPetStud.studNo = '" + studNo + "';" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");
                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    //Push First Name
                    infoList.push(XMLrows[0].getElementsByTagName("studFirst")[0].innerHTML);
                    infoList.push(XMLrows[0].getElementsByTagName("studMiddle")[0].innerHTML);
                    infoList.push(XMLrows[0].getElementsByTagName("studLast")[0].innerHTML);
                    infoList.push(XMLrows[0].getElementsByTagName("studContact")[0].innerHTML);
                    infoList.push(XMLrows[0].getElementsByTagName("studEmail")[0].innerHTML);

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return infoList;
        }

        function getSection(studNo) {
            var section = "";
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT TOP 1 gradesSec FROM tblGrades WHERE studNo = '" + studNo + "' Order by gradesYear desc,gradesSem desc" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");
                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    section = XMLrows[0].getElementsByTagName("gradesSec")[0].innerHTML;
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return section;
        }

        function setPetitionStatus(type, petSubjID) {
            var currDate = new Date().toISOString().slice(0, 19).replace('T', ' ');
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "UPDATE tblPet SET petApp = '" + type + "' WHERE petSubjID = '" + petSubjID + "'; INSERT INTO tblRptPet(petSubj,petStatus,petDate,courseCode) VALUES ('" + petSubjID + "','" + type + "','" + currDate + "','" + currentCourse + "');" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    success("Status Changed Successfully");
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function printPetitionList(petSubjID) {
            $.confirm({
                title: "Print Petition List",
                icon: "fa fa-list",
                type: "orange",
                columnClass: 'large',
                content: "<div id='printPetitionList'>" +
                    "<p class='printHeader'>" + getEquivSubjCode(petSubjID) + ": " + getEquivSubjName(petSubjID) + "<br>" +
                    "School Year 1819, 1st Semester<br>" +
                    "Course: " + currentCourse + "<br>" +
                    "Date Finalized: " + new Date().toJSON().slice(0, 10).replace(/-/g, '/') + "</p>" +
                    "<h3>Chairperson:</h3>" +
                    petitionStudentList.getElementsByTagName("table")[0].outerHTML +
                    "</div>",
                buttons: {
                    print: {
                        btnClass: 'btn-warning',
                        action: function () {
                            var printPetitionList = document.getElementById("printPetitionList");
                            PrintElem("printPetitionList");
                            return false;
                        }
                    },
                    confirm: {
                        btnClass: 'btn-success',
                        action: function () {
                            setPetitionStatus('VPAA Pending', petSubjID);
                        }
                    },
                    cancel: {}
                }
            });
        }

        function PrintElem(elem) {
            var mywindow = window.open('', 'PRINT', 'height=400,width=600');

            mywindow.document.write('<html><head><title>Petition List</title>');
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
            mywindow.document.write('</head><body >');
            mywindow.document.write(document.getElementById(elem).innerHTML);
            mywindow.document.write('</body></html>');

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10*/

            mywindow.print();
            mywindow.close();

            return true;
        }

        function success(txt) {
            $.confirm({
                theme: 'modern',
                icon: 'fa fa-check',
                type: 'green',
                title: 'Success',
                content: txt,
                autoClose: 'ok|1000',
                buttons: {
                    ok: {
                        isHidden: true
                    }
                },
                onDestroy: function () {
                    window.location.href = "adminPetitionList.aspx";
                }

            });
        }
    </script>
</body>
</html>
