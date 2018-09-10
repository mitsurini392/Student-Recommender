<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminStudentView.aspx.cs" Inherits="adminStudentView" %>

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
                        <li><a href="adminAdvice.aspx"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
                        <%--<li><a href="#"><i class="fa fa-bell"></i><span>Notification</span></a></li>--%>
                        <li class="active"><a href="#"><i class="fa fa-users"></i><span>Students</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Students
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Student View</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group" style="width: 30%">
                            <label>Search:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </div>
                                <input type="text" class="form-control" placeholder="Enter Student No." />
                                <span class="input-group-btn">
                                    <button class="btn btn-warning" onclick="searchStud(this)">Search</button>
                                </span>
                            </div>

                            <!-- /.input group -->
                        </div>
                        <table class="table table-striped" id="studTable">
                        </table>
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
            loadGrades(currentCourse, "");
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

        function searchStud(elem) {
            searchValue = elem.parentNode.parentNode.parentNode.childNodes[3].childNodes[3].value;
            loadGrades(currentCourse, searchValue);
        }

        function loadGrades(courseCode, searchValue) {
            var studTable = document.getElementById("studTable");
            studTable.innerHTML = "<div class='text-center'>" +
                "<br /><br /><br />" +
                "<i class='fa fa-refresh fa-spin fa-5x text-center'></i>" +
                "<br /><br /><br />"
            "</div>";

            setTimeout(function () {
                var sqlSearch;
                if (searchValue == "") {
                    sqlSearch = "SELECT TOP 10 studNo,studFirst,studMiddle,studLast,studEmail,studContact,studPic FROM tblStud WHERE courseCode = '" + courseCode + "'";
                }
                else {
                    sqlSearch = "SELECT studNo, studFirst, studMiddle, studLast, studEmail, studContact, studPic FROM tblStud WHERE courseCode = '" + courseCode + "' AND (studNo LIKE '%" + searchValue + "%')";
                }
                $.ajax({
                    type: 'POST',
                    url: 'adminStudentView.aspx/universalQuery',
                    contentType: 'application/json; charset=utf-8',
                    data: JSON.stringify({ SQL: sqlSearch }),
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
                            studTable.innerHTML = "";
                            studTable.innerHTML = "<tr><th>Student Pic.</th><th>Student No.</th><th>Student Name</th><th>Contact</th><th>Email</th><th class='text-center'>View</th></tr>";

                            for (var i = 0; i < XMLrows.length; i++) {
                                var studNo = XMLrows[i].getElementsByTagName("studNo")[0].innerHTML;
                                var studFirst = XMLrows[i].getElementsByTagName("studFirst")[0].innerHTML;
                                var studMiddle = XMLrows[i].getElementsByTagName("studMiddle")[0].innerHTML;
                                var studLast = XMLrows[i].getElementsByTagName("studLast")[0].innerHTML;
                                var studEmail = XMLrows[i].getElementsByTagName("studEmail")[0].innerHTML;
                                var studContact = XMLrows[i].getElementsByTagName("studContact")[0].innerHTML;
                                var studPic = XMLrows[i].getElementsByTagName("studPic")[0].innerHTML;

                                var row = studTable.insertRow(-1);
                                var cell0 = row.insertCell(-1);
                                var cell1 = row.insertCell(-1);
                                var cell2 = row.insertCell(-1);
                                var cell3 = row.insertCell(-1);
                                var cell4 = row.insertCell(-1);
                                var cell5 = row.insertCell(-1);

                                cell0.innerHTML = "<img src='" + studPic + "' height='50px'></img>";
                                cell1.innerHTML = studNo;
                                cell2.innerHTML = studLast + ", " + studFirst + " " + studMiddle;
                                cell3.innerHTML = studContact;
                                cell4.innerHTML = studEmail;
                                cell5.className = 'text-center';
                                cell5.innerHTML = "<button class='btn btn-warning margin' onclick='viewGrades(this)'>Grades</button><button class='btn btn-warning margin' onclick='viewAdvice(this)'>Advice</button>";
                            }
                        }
                        else {
                            studTable.innerHTML = "<div class='text-center text-muted'><br><br><br><i class='fa fa-question fa-5x'></i><h2>No Records Found</h2><br><br><br><br><br><br></div>";

                        }
                    },
                    failure: function (response) {
                        alert("Connection Failed Refresh Page");
                    }
                });
            }, 10);
        }
        function viewAdvice(elem) {
            var studNo = elem.parentNode.parentNode.childNodes[1].innerHTML;
            var adviceName = "";
            $.confirm({
                title: 'Check Advice',
                icon: 'fa fa-list',
                type: 'orange',
                columnClass: 'large',
                content: "<div id='saveAdviceList' class='pad' style='width: 100%; height: 200px; background: #ECF0F5; overflow: auto'>" +
                    "<br></br>" +
                    "<p class='text-center'><i class='fa fa-file-o fa-5x'></i></p>" +
                    "<h3 class='text-center'>No Advice on Student</h3>" +
                    "</div> " +
                    "<div id='saveAdviceListStep'>" +
                    "</div>",
                buttons: {
                    checkall: {
                        text: 'Check All',
                        btnClass: 'btn-warning',
                        action: function () {
                            var btnName = document.getElementsByClassName("jconfirm-buttons")[0].childNodes[0];
                            var adviceChecks = this.$content.find("input[type=checkbox]");
                            if (btnName.innerHTML == "Check All") {
                                btnName.innerHTML = "Uncheck All";
                                for (var i = 0; i < adviceChecks.length; i++) {
                                    adviceChecks[i].checked = true;
                                }
                                return false;
                            }
                            else if (btnName.innerHTML == "Uncheck All") {
                                btnName.innerHTML = "Check All";
                                for (var i = 0; i < adviceChecks.length; i++) {
                                    adviceChecks[i].checked = false;
                                }
                                return false;
                            }

                        }
                    },
                    apply: {
                        btnClass: 'btn-success',
                        action: function () {
                            var currentAdviceName = this.$content.find("#currentAdviceName").html();
                            if (currentAdviceName == undefined) {
                                $.alert('Select an Advice to edit before applying.');
                                return false;
                            }
                            var adviceChecks = this.$content.find("input[type=checkbox]");
                            var SQL = "DELETE FROM tblAdviceListSteps WHERE studNo = '" + studNo + "' AND adviceName = '" + currentAdviceName + "'";
                            for (var i = 0; i < adviceChecks.length; i++) {
                                if (adviceChecks[i].checked == true) {
                                    SQL += "INSERT INTO tblAdviceListSteps VALUES('" + studNo + "','" + currentAdviceName + "','" + (i + 1) + "');";
                                }
                            }
                            //INSERT
                            $.ajax({
                                type: 'POST',
                                url: 'adminStudentView.aspx/universalQuery',
                                contentType: 'application/json; charset=utf-8',
                                data: JSON.stringify({ SQL: SQL }),
                                dataType: 'json',
                                async: false,
                                success: function (response) { }
                            });
                        }
                    },
                    cancel: {}
                },
                onOpenBefore: function () {
                    //GET STUDENTS ADVICE
                    $.ajax({
                        type: 'POST',
                        url: 'adminStudentView.aspx/universalQuery',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceList WHERE studNo = '" + studNo + "'" }),
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
                                var saveAdviceList = document.getElementById("saveAdviceList");
                                //Populate Advice List
                                saveAdviceList.innerHTML = "";
                                for (var i = 0; i < XMLrows.length; i++) {
                                    saveAdviceList.innerHTML += "<div class='info-box' style='cursor: pointer' onclick=\"getAllAdviceStep(this,'" + studNo + "')\">" +
                                        "<span class='info-box-icon bg-yellow'><i class='fa fa-list'></i></span>" +
                                        "<div class='info-box-content'>" +
                                        "<span class='info-box-text'>" + XMLrows[i].getElementsByTagName("advType")[0].innerHTML + "</span>" +
                                        "<span class='info-box-number'><i>Click to view accomplished steps</i></span>" +
                                        "</div>" +
                                        "</div>";
                                }
                            }

                        }
                    });
                }
            });
        }

        function getAllAdviceStep(elem, studNo) {
            var adviceName = elem.childNodes[1].childNodes[0].innerHTML;
            var stepsContainer = elem.parentNode.parentNode.childNodes[2];
            var steps = [];
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "'" }),
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

                    for (var i = 0; i < XMLrows.length; i++) {
                        steps.push(XMLrows[i].getElementsByTagName("adviceStepDesc")[0].innerHTML);
                    }

                }
            });
            stepsContainer.innerHTML = "";
            //Add Hidden Advice Name Onclick
            stepsContainer.innerHTML = "<p id='currentAdviceName' style='display: none'>" + adviceName + "</p>";
            var stepsOL = document.createElement("ul");
            stepsOL.className = 'list-unstyled pad';
            for (var i = 0; i < steps.length; i++) {
                var stepsLI = document.createElement("li");
                stepsLI.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>" + (i + 1) + "</span><textarea class='form-control stepsTextArea' rows='1' style='resize:none' disabled>" + steps[i] + "</textarea><span class='input-group-addon'><input type='checkbox'></span></div>";
                checkStep(studNo, adviceName, stepsLI.childNodes[0].childNodes[0].innerHTML, stepsLI.childNodes[0].childNodes[2].childNodes[0]);
                stepsOL.appendChild(stepsLI);
            }
            stepsContainer.appendChild(stepsOL);
            //autogrow textareas
            //Auto Grow
            var txtAreas = stepsContainer.getElementsByTagName("textarea");
            for (var i = 0; i < txtAreas.length; i++) {
                auto_grow(txtAreas[i]);
            }
        }
        function checkStep(studNo, adviceName, adviceStepOrder, chkBox) {
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceListSteps WHERE studNo = '" + studNo + "' AND adviceName = '" + adviceName + "' AND adviceStepOrder = '" + adviceStepOrder + "'" }),
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
                        chkBox.checked = true;
                    }

                }
            });
        }


        function auto_grow(element) {
            element.style.height = "5px";
            element.style.height = (element.scrollHeight) + "px";
        }

        function viewGrades(elem) {
            var studCurr = getStudCurr(elem.parentNode.parentNode.cells[1].innerHTML);
            $.confirm({
                title: "Student Grade",
                content: "",
                columnClass: "xlarge",
                icon: "fa fa-book",
                type: "orange",
                theme: "supervan",
                onOpenBefore: function () {
                    //this.setContentAppend('henlo');
                    var outerThis = this;


                    ////////////////////////////////GET AVE BY CLASSIFICATION
                    var aveContent = document.createElement("div");
                    aveContent.className = 'bg-orange pad text-center row';
                    aveContent.style.width = '100%';
                    $.ajax({
                        type: 'POST',
                        url: 'adminStudentView.aspx/universalQuery',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ SQL: "select distinct subjClassi from tblSUbj where currCode = '" + studCurr + "' and subjClassi is not null" }),
                        dataType: 'json',
                        async: false,
                        success: function (response) {
                            //Create Content;
                            var content = "";
                            //XML pareser
                            var text = response.d;
                            var parser, xmlDoc;
                            parser = new DOMParser();
                            xmlDoc = parser.parseFromString(text, "text/xml");

                            //Get Rows From XML
                            var XMLrows = xmlDoc.getElementsByTagName("Table");
                            if (XMLrows.length > 0) {
                                for (var i = 0; i < XMLrows.length; i++) {
                                    if (getStudClassifAve(elem.parentNode.parentNode.cells[1].innerHTML, XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML) != "") {
                                        aveContent.innerHTML += "<div class='col-md-6'><input value='" + getStudClassifAve(elem.parentNode.parentNode.cells[1].innerHTML, XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML) + "' class='margin aveKnob'></input><div class='knob-label'>" + XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML + "</div></div>";
                                    }
                                    else {
                                        aveContent.innerHTML += "<div class='col-md-6'><input data-displayInput='false' data-bgColor='#CACED2' value='1' class='margin aveKnob'></input><div class='knob-label'>" + XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML + "</div></div>";

                                    }
                                }
                            }
                            var overAllAve = getOverAllAve(elem.parentNode.parentNode.cells[1].innerHTML);
                            if (overAllAve != "") {
                                aveContent.innerHTML += "<div class='row'><div class='col-md-12'><input value='" + overAllAve + "' class='margin aveKnob'></input><div class='knob-label'>Overall Average</div></div></div>";
                            }
                            else {
                                //
                            }
                            outerThis.setContentAppend(aveContent.outerHTML);

                            //Transform into Knobs
                            for (var i = 0; i < document.getElementsByClassName('aveKnob').length; i++) {
                                $(document.getElementsByClassName('aveKnob')[i]).knob({
                                    fgColor: "#FF851B",
                                    bgColor: "#FFFFFF",
                                    inputColor: "#FFFFFF",
                                    min: 1.00,
                                    max: 5.00,
                                    readOnly: true
                                });
                            }
                        },
                        failure: function (response) {
                            alert("Connection Failed Refresh Page");
                        }
                    });



                    ////////////////////////////////GET ALL GRADES
                    $.ajax({
                        type: 'POST',
                        url: 'adminStudentView.aspx/universalQuery',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ SQL: "Select *  from tblSubj Where currCode = '" + studCurr + "' order by subjYear desc,subjSem desc" }),
                        dataType: 'json',
                        async: false,
                        success: function (response) {
                            //Create Content;
                            var content = "";
                            //XML pareser
                            var text = response.d;
                            var parser, xmlDoc;
                            parser = new DOMParser();
                            xmlDoc = parser.parseFromString(text, "text/xml");

                            //Get Rows From XML
                            var XMLrows = xmlDoc.getElementsByTagName("Table");

                            for (var i = 0; i < XMLrows.length; i++) {
                                var strSem;
                                var grade = getSubjGrade(elem.parentNode.parentNode.cells[1].innerHTML, XMLrows[i].getElementsByTagName("subjID")[0].innerHTML);
                                //Change GRADE STATUS COLOR
                                var gradeStatColor = "";
                                if (grade[1] == "P") {
                                    gradeStatColor = "blue";
                                }
                                else if (grade[1] == "F") {
                                    gradeStatColor = "red";
                                }
                                else if (grade[1] == "None") {
                                    gradeStatColor = "green";
                                }
                                else {
                                    gradeStatColor = "gray";
                                }

                                //Change SEMESTER NAMES
                                if (XMLrows[i].getElementsByTagName("subjSem")[0].innerHTML == "1") {
                                    strSem = "First";
                                }
                                else if (XMLrows[i].getElementsByTagName("subjSem")[0].innerHTML == "2") {
                                    strSem = "Second";
                                }
                                else if (XMLrows[i].getElementsByTagName("subjSem")[0].innerHTML == "3") {
                                    strSem = "Summer";
                                }
                                if (i - 1 < 0) {
                                    //Start Creating Box
                                    content += "<div class='box box-warning' style='margin-top: 10px'> <div class='box-header'><h3 class='box-title'>" + numbersuffix(XMLrows[i].getElementsByTagName("subjYear")[0].innerHTML) + " Year</h3></div><div class='box-body'><table class='table table-striped'><tr style='color: black'><th>Subject Code</th><th>Subject Name</th><th>Subject Units</th><th>Semester</th><th>Final Grade</th><th>Grade Status</th></tr>";
                                    content += "<tr style='color: " + gradeStatColor + "'><td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjUnits")[0].innerHTML + "</td><td>" + strSem + "</td><td>" + grade[0] + "</td><td>" + grade[1] + "</td></tr>";
                                }
                                else if (XMLrows[i].getElementsByTagName("subjYear")[0].innerHTML != XMLrows[i - 1].getElementsByTagName("subjYear")[0].innerHTML) {
                                    //End Box
                                    content += "</table></div></div>";
                                    //Start Box
                                    content += "<div class='box box-warning'> <div class='box-header'><h3 class='box-title'>" + numbersuffix(XMLrows[i].getElementsByTagName("subjYear")[0].innerHTML) + " Year</h3></div><div class='box-body'><table class='table table-striped'><tr style='color: black'><th>Subject Code</th><th>Subject Name</th><th>Subject Units</th><th>Semester</th><th>Final Grade</th><th>Grade Status</th></tr>";
                                    content += "<tr style='color: " + gradeStatColor + "'><td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjUnits")[0].innerHTML + "</td><td>" + strSem + "</td><td>" + grade[0] + "</td><td>" + grade[1] + "</td></tr>";
                                }
                                else {
                                    content += "<tr style='color: " + gradeStatColor + "'><td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjUnits")[0].innerHTML + "</td><td>" + strSem + "</td><td>" + grade[0] + "</td><td>" + grade[1] + "</td></tr>";
                                }
                            }
                            outerThis.setContentAppend(content);
                        },
                        failure: function (response) {
                            alert("Connection Failed Refresh Page");
                        }
                    });
                }
            });
        }

        function getOverAllAve(studNo) {
            var overAllAve = "";
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "select ROUND(AVG(CAST(tblGrades.gradesGrade AS DECIMAL(3,2))),2)  from tblGrades inner join tblSubj on tblGrades.subjID = tblSubj.subjID  where studNo = '" + studNo + "' AND gradesGrade LIKE '%[0-9]%'" }),
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

                    if (XMLrows[0].getElementsByTagName("Column1")[0] != null) {
                        overAllAve = XMLrows[0].getElementsByTagName("Column1")[0].innerHTML.substring(0, 4);
                    }
                    else {
                    }

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return overAllAve;
        }

        function getStudClassifAve(studNo, classi) {
            var classiAve = "";
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "select ROUND(AVG(CAST(tblGrades.gradesGrade AS DECIMAL(3,2))),2) from tblGrades inner join tblSubj on tblGrades.subjID = tblSubj.subjID where studNo = '" + studNo + "' AND subjClassi = '" + classi + "' AND gradesGrade LIKE '%[0-9]%'" }),
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

                    if (XMLrows[0].getElementsByTagName("Column1")[0] != null) {
                        classiAve = XMLrows[0].getElementsByTagName("Column1")[0].innerHTML.substring(0, 4);
                    }
                    else {
                    }

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return classiAve;
        }

        function getStudCurr(studNo) {
            var studCurr;
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT studCurr FROM tblStud WHERE studNo = '" + studNo + "'" }),
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

                    studCurr = XMLrows[0].getElementsByTagName("studCurr")[0].innerHTML;

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return studCurr;
        }

        //Get Number Suffix
        function numbersuffix(i) {
            var j = i % 10,
                k = i % 100;
            if (j == 1 && k != 11) {
                return i + "st";
            }
            if (j == 2 && k != 12) {
                return i + "nd";
            }
            if (j == 3 && k != 13) {
                return i + "rd";
            }
            return i + "th";
        }

        function getSubjGrade(studNo, subjID) {
            var subjGrade = [];
            $.ajax({
                type: 'POST',
                url: 'adminStudentView.aspx/universalQuery',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ SQL: "SELECT gradesGrade,gradesStatus FROM tblGrades WHERE studNo = '" + studNo + "' AND subjID = '" + subjID + "' order by gradesYear desc, gradesSem desc;" }),
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
                        subjGrade.push(XMLrows[0].getElementsByTagName("gradesGrade")[0].innerHTML);
                        subjGrade.push(XMLrows[0].getElementsByTagName("gradesStatus")[0].innerHTML);
                    } else {
                        subjGrade.push("None");
                        subjGrade.push("None");
                    }

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return subjGrade;
        }

    </script>
</body>
</html>
