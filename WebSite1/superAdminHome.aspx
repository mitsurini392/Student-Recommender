<%@ Page Language="C#" AutoEventWireup="true" CodeFile="superAdminHome.aspx.cs" Inherits="superAdminHome" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Starter</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">--%>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
    <link rel="stylesheet" href="dist/css/skins/skin-red.min.css">
    <%--Font Awesome--%>
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />

    <!-- jQuery UI CSS -->
    <link href="dist/css/jquery-ui.css" rel="stylesheet" />

    <!-- bootstrap slider -->
    <link rel="stylesheet" href="plugins/bootstrap-slider/slider.css">

    <!--JQuery Confirm CSS-->
    <link rel="stylesheet" href="dist/css/jquery-confirm.min.css">
    <link href="dist/css/programme.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <style>
        .stepsTextArea {
            overflow: hidden;
        }

        .viewSteps[disabled] {
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
<body class="hold-transition skin-red sidebar-mini">
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
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">

            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">

                <!-- Sidebar user panel (optional) -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p id="welcomeAdmin">Welcome, Null</p>
                    </div>
                </div>



                <!-- Sidebar Menu -->
                <form runat="server">
                    <ul class="sidebar-menu">
                        z
                        <li class="header">NAVIGATION</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active"><a href="#"><i class="fa fa-bell"></i><span>Home</span></a></li>
                        <li><a href="#" onclick="changeAccountInfo()"><i class="fa fa-gear"></i><span>Settings</span></a></li>
                        <br />
                        <li>
                            <asp:LinkButton runat="server" ID="btnLogout" OnClick="btnLogout_Click"><i class="fa fa-power-off"></i><span>Logout</span></asp:LinkButton></li>
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
                <h1>Home
       
                    <small></small>
                </h1>

            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-5">
                        <div class="box box-danger">
                            <div class="box-header with-border">
                                <h3 class="box-title">Add Course</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label>Course Code</label>
                                    <input type="text" class="form-control" id="courseCode">
                                </div>
                                <div class="form-group">
                                    <label>Course Name</label>
                                    <input type="text" class="form-control" id="courseName">
                                </div>
                                <div class="form-group">
                                    <label>Registration Code</label>
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-default" onclick="generateRandomString()">Generate Code</button>
                                        </div>
                                        <!-- /btn-group -->
                                        <input type="text" class="form-control" id='regCode' disabled>
                                    </div>
                                </div>
                                <button class="btn btn-danger pull-right" onclick="addCourse()">Add</button>
                            </div>
                        </div>
                        <div class="box box-danger">
                            <div class="box-header">
                                <h3 class="box-title">Current School Year and Semester </h3>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input class="form-control" type="text" placeholder="School Year Ex.1819" id="currentYear" disabled />
                                    </div>
                                    <div class="col-md-6">
                                        <select class="form-control" id="currentSem" disabled>
                                            <option value="First">First</option>
                                            <option value="Second">Second</option>
                                            <option value="Summer">Summer</option>
                                        </select>
                                    </div>
                                </div>
                                <button class="btn btn-danger pull-right margin" onclick="editCurrentYearAndSem(this)">Edit</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="box box-danger">
                            <div class="box-header with-border">
                                <h3 class="box-title">Course Table</h3>
                            </div>
                            <div class="box-body">
                                <table class="table table-striped" id="tblCourse">
                                    <tr>
                                        <th>Course Code</th>
                                        <th>Course Name</th>
                                        <th>Registration Code</th>
                                        <th>Registered</th>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="box box-danger">
                    <div class="box-header">
                        <h3 class="box-title">Advices</h3>
                    </div>
                    <div class="box-body">
                        <div id="addAdvice" onclick="addAdvice()" class="text-center" style="outline-style: dashed; height: 200px; background: #ECF0F5">
                            <br />
                            <br />
                            <i class="fa fa-file-o fa-5x"></i>
                            <h3>Add Advice</h3>

                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- /.content -->
        <!-- /.content-wrapper -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="pull-right hidden-xs">
            </div>
            <!-- Default to the left -->
            <strong></strong>

        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.2.3 -->
    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <%--JQuery Confirm JS--%>
    <script src="dist/js/jquery-confirm.min.js"></script>
    <script src="dist/js/jquery-ui.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.js"></script>
    <!-- Bootstrap slider -->
    <script src="plugins/bootstrap-slider/bootstrap-slider.js"></script>
    <script>
        var currentAdmin;

        document.getElementsByTagName("body")[0].onload = function () {
            loadCourse();
            //getAdvices();
            getCurrentYearAndSem();
            currentAdmin = '<%= Session["superAdmin"].ToString() %>';
            PutUsernameOnHTML(currentAdmin);
        }

        function PutUsernameOnHTML(currentAdmin) {
            //Get ID of ung papalitan mo
            welcomeAdmin = document.getElementById("welcomeAdmin");
            welcomeAdmin.innerHTML = "Welcome, " + currentAdmin;
        }


        function getCurrentYearAndSem() {
            $.ajax({
                type: 'POST',
                url: 'superAdminHome.aspx/getCurrentYearAndSem',
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

                    document.getElementById("currentYear").value = XMLrows[0].getElementsByTagName("currentYear")[0].innerHTML;
                    document.getElementById("currentSem").value = XMLrows[0].getElementsByTagName("currentSem")[0].innerHTML;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

        function editCurrentYearAndSem(elem) {
            if (elem.innerHTML == "Edit") {
                //Set Year and Sem Editable
                document.getElementById("currentYear").disabled = false;
                document.getElementById("currentSem").disabled = false;
                //Change Button Name
                elem.innerHTML = "Apply"
            }
            else if (elem.innerHTML == "Apply") {
                //Apply
                $.confirm({
                    icon: 'fa fa-exclamation',
                    type: 'orange',
                    title: 'Warning',
                    content: "<div style='color: red'><p>Editing the Current Year and Semester will delete the following. </p><ul><li>Schedule Offerings</li><li>Petitions</li></ul></div>",
                    buttons: {
                        Confirm: {
                            btnClass: 'btn btn-success',
                            action: function () {
                                var currentYear = document.getElementById("currentYear").value
                                var currentSem = document.getElementById("currentSem").value
                                var SQL = "DELETE FROM tblSched;DELETE FROM tblPetStud; DELETE FROM tblPet; UPDATE tblSchoolYear SET currentYear = '" + currentYear + "', currentSem = '" + currentSem + "'";
                                if (updateAndInsert(SQL) == true) {
                                    window.location.href = 'superAdminHome.aspx';
                                }
                                else {
                                    //ERROR
                                }
                            }
                        },
                        Cancel: {}
                    }
                });
                //Set Year and Sem Editable
                document.getElementById("currentYear").disabled = true;
                document.getElementById("currentSem").disabled = true;
                //Change Button Name
                elem.innerHTML = "Edit";
            }
        }

        function generateRandomString() {
            var regCode = document.getElementById("regCode");
            regCode.value = Math.random().toString(36).replace('0.', '');
        }

        function addCourse() {
            var addSQLString = "";
            //Get Values
            var courseCode = document.getElementById("courseCode").value;
            var courseName = document.getElementById("courseName").value;
            var regCode = document.getElementById("regCode").value;

            if (courseCode == "") {
                $.alert("Course Code is Required");
                return;
            }

            if (courseName == "") {
                $.alert("Course Name is Required");
                return;
            }

            if (regCode == "") {
                $.alert("Registration code is Required");
                return;
            }

            addSQLString = "INSERT INTO tblCourse VALUES ('" + courseCode + "','" + courseName + "','" + regCode + "','NO');";


            if (updateAndInsert(addSQLString) == true) {
                success("Course Added");
                loadCourse();
            }
            else
                failed("Course Added");
        }

        function loadCourse() {
            //Get Table Course
            tblCourse = document.getElementById("tblCourse");
            //Add Header
            tblCourse.innerHTML = "<tr><th>Course Code</th><th>Course Name</th><th>Registration Code</th><th>Registered</th></tr>"
            $.ajax({
                type: 'POST',
                url: 'superAdminHome.aspx/loadCourse',
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

                    for (var i = 0; i < XMLrows.length; i++) {
                        var row = tblCourse.insertRow(-1);
                        var cell1 = row.insertCell(-1);
                        cell1.innerHTML = XMLrows[i].getElementsByTagName("courseCode")[0].innerHTML;
                        var cell2 = row.insertCell(-1);
                        cell2.innerHTML = XMLrows[i].getElementsByTagName("courseName")[0].innerHTML;
                        var cell3 = row.insertCell(-1);
                        cell3.innerHTML = XMLrows[i].getElementsByTagName("courseRegCode")[0].innerHTML;
                        var cell4 = row.insertCell(-1);
                        cell4.innerHTML = XMLrows[i].getElementsByTagName("courseStatus")[0].innerHTML;
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

        }

        function updateAndInsert(SQLstring) {
            var success;
            $.ajax({
                type: 'POST',
                url: 'superAdminHome.aspx/updateAndInsert',
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

        function success(type) {
            $.confirm({
                theme: 'modern',
                icon: 'fa fa-check',
                type: 'green',
                title: 'Success',
                content: type + " successful!",
                autoClose: 'ok|1000',
                buttons: {
                    ok: {
                        action: function () { },
                        isHidden: true,
                    }
                }

            });
        }

        function failed(type) {
            $.confirm({
                theme: 'modern',
                icon: 'fa fa-exclamation-circle',
                type: 'red',
                title: 'Failed',
                content: type + " failed!",
                autoClose: 'ok|1000',
                buttons: {
                    ok: {
                        isHidden: true
                    }
                }

            });
        }

        ////////////////////OLD CODE

        //function getAdvices() {
        //    //Get Advice Container
        //    var adviceRow = document.getElementsByClassName("advices")[0];
        //    $.ajax({
        //        type: 'POST',
        //        url: 'superAdminHome.aspx/loadAdvice',
        //        contentType: 'application/json; charset=utf-8',
        //        dataType: 'json',
        //        async: false,
        //        success: function (response) {
        //            //XML pareser
        //            var text = response.d;
        //            var parser, xmlDoc;
        //            parser = new DOMParser();
        //            xmlDoc = parser.parseFromString(text, "text/xml");

        //            //Get Rows From XML
        //            var XMLrows = xmlDoc.getElementsByTagName("Table");

        //            for (var i = 0; i < XMLrows.length; i++) {
        //                //Create Column
        //                var adviceCol = document.createElement("div");
        //                adviceCol.className = "col-md-6";
        //                //Create Advice Timeline
        //                var adviceTimeline = document.createElement("ul");
        //                adviceTimeline.className = "timeline ";
        //                adviceCol.appendChild(adviceTimeline);
        //                //Create Advice Name
        //                var adviceHeader = document.createElement("li");
        //                adviceHeader.className = "time-label";
        //                adviceHeader.innerHTML = "<span class='bg-red'> <h2 class='margin'>" + XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML; +"</h2> </span>";
        //                adviceTimeline.appendChild(adviceHeader);
        //                //Create Advice Steps
        //                var adviceStep = document.createElement("li");
        //                adviceStep.innerHTML = "<i class='fa fa-envelope  bg-red'> </i>" +
        //                    "<div class='timeline-item'>" +
        //                    "<h3 class='timeline-header'>" +
        //                    "<a href='#'>Steps</a>" +
        //                    "</h3>" +
        //                    "<div class='timeline-body'>" +
        //                    "<ol>" + getSteps(XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML) + "</ol>" +
        //                    "</div>" +
        //                    "</div>";
        //                adviceTimeline.appendChild(adviceStep);
        //                //Create Advice Footer (Settings)
        //                adviceFooter = document.createElement("li");
        //                adviceFooter.innerHTML = "<i class='fa fa-gear'></i>" +
        //                    "<div class='timeline-item'>" +
        //                    "<h3 class='timeline-header'>" +
        //                    "<button class='btn bg-red' onclick=\"editAdvice(this,'" + XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML + "')\">Edit</button>" +
        //                    "</h3>" +
        //                    "</div>";
        //                adviceTimeline.appendChild(adviceFooter);
        //                adviceRow.appendChild(adviceCol);

        //            }
        //            //Auto Grow text areas
        //            for (var i = 0; i < document.getElementsByClassName("viewSteps").length; i++) {
        //                auto_grow(document.getElementsByClassName("viewSteps")[i]);
        //            }
        //        },
        //        failure: function (response) {
        //            alert("Connection Failed Refresh Page");
        //        }
        //    });
        //}

        //function getSteps(adviceName) {
        //    var content = "";
        //    $.ajax({
        //        type: 'POST',
        //        url: 'superAdminHome.aspx/universalQuery',
        //        data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "' order by adviceStepOrder" }),
        //        contentType: 'application/json; charset=utf-8',
        //        dataType: 'json',
        //        async: false,
        //        success: function (response) {
        //            //XML pareser
        //            var text = response.d;
        //            var parser, xmlDoc;
        //            parser = new DOMParser();
        //            xmlDoc = parser.parseFromString(text, "text/xml");

        //            //Get Rows From XML
        //            var XMLrows = xmlDoc.getElementsByTagName("Table");

        //            if (XMLrows.length > 0) {
        //                for (var i = 0; i < XMLrows.length; i++) {
        //                    var txtArea = document.createElement("textarea");
        //                    txtArea.style.width = "100%";
        //                    txtArea.innerHTML = XMLrows[i].getElementsByTagName("adviceStepDesc")[0].innerHTML;
        //                    txtArea.className = 'form-control viewSteps';
        //                    txtArea.style.overflow = "hidden";
        //                    txtArea.style.resize = "none";
        //                    txtArea.disabled = true;
        //                    content += "<li>" + txtArea.outerHTML + "</li>";
        //                }
        //            }
        //            else {
        //                content += "No Steps on this Advice";
        //            }
        //        },
        //    });
        //    return content;
        //}

        //function editAdvice(elem, adviceName) {
        //    $.confirm({
        //        title: adviceName + " Steps",
        //        icon: "fa fa-list",
        //        type: "red",
        //        columnClass: "medium",
        //        content: "<div style='background: #ECF0F5' class='pad'><div><ul><li style='color: red'>Editing will undo the progress of students on this advice</li><li>Drag numbers to arrange steps.</li></ul></div><ul id='listStep' class='list-unstyled'></ul></div><button class='btn btn-success pull-right margin' id='addStep'>Add Step</button>",
        //        onOpenBefore: function () {
        //            //add onclick on Add step
        //            document.getElementById("addStep").onclick = function () {
        //                var step = document.createElement("li");
        //                step.style.cursor = 'pointer';
        //                step.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>1</span><textarea class='form-control stepsTextArea' rows='1' onkeyup='auto_grow(this)' style='resize: none'></textarea><span class='input-group-addon' onclick='removeStep(this)'><i class='fa fa-remove'></i></span></div>";
        //                document.getElementById("listStep").appendChild(step);
        //                //Change Steps Order
        //                var stepOrder = document.getElementsByClassName("stepOrder");
        //                for (var i = 0; i < stepOrder.length; i++) {
        //                    stepOrder[i].innerHTML = i + 1;
        //                }
        //            }
        //            //Populate List
        //            var currentListStep = elem.parentNode.parentNode.parentNode.parentNode.getElementsByTagName('textarea');
        //            for (var i = 0; i < currentListStep.length; i++) {
        //                var step = document.createElement("li");
        //                step.style.cursor = 'pointer';
        //                step.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>" + (i + 1) + "</span><textarea class='form-control stepsTextArea' rows='1' onkeyup='auto_grow(this)' style='resize: none'>" + currentListStep[i].value + "</textarea><span class='input-group-addon' onclick='removeStep(this)'><i class='fa fa-remove'></i></span></div>";
        //                document.getElementById("listStep").appendChild(step);
        //            }
        //            //Resort Steps on Drag
        //            this.$content.find("#listStep").sortable({
        //                update: function (event, ui) {
        //                    //Change Steps Order
        //                    var stepOrder = document.getElementsByClassName("stepOrder");
        //                    for (var i = 0; i < stepOrder.length; i++) {
        //                        stepOrder[i].innerHTML = i + 1;
        //                    }
        //                }
        //            });

        //            //Auto Grow
        //            var stepsTextArea = document.getElementsByClassName("stepsTextArea");
        //            for (var i = 0; i < stepsTextArea.length; i++) {
        //                auto_grow(stepsTextArea[i]);
        //            }


        //        },
        //        buttons: {
        //            confirm: {
        //                btnClass: 'btn btn-success',
        //                action: function () {
        //                    //Check if Step is Blank
        //                    if (document.getElementsByClassName("stepOrder").length == 0) {
        //                        $.alert("Steps cannot be blank.");
        //                        return false;
        //                    }
        //                    //Query to Database
        //                    var listStep = document.getElementById("listStep").getElementsByTagName("li");
        //                    var insertSQL = "DELETE FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "';";
        //                    for (var i = 0; i < listStep.length; i++) {
        //                        insertSQL += "INSERT INTO tblAdviceSteps VALUES('" + adviceName + "'," + (i + 1) + ",'" + listStep[i].getElementsByTagName("textarea")[0].value + "');";
        //                    }
        //                    if (updateAndInsert(insertSQL) == true) {
        //                        success("Advice steps editing");
        //                        setTimeout(function () { window.location.href = 'superAdminHome.aspx' }, 1500);
        //                    }
        //                }
        //            },
        //            cancel: {}
        //        }
        //    });

        //}

        //function removeStep(elem) {
        //    //Delete Self
        //    elem.parentNode.parentNode.remove(elem.parentNode.parentNode.parentNode);
        //    //Change Steps Order
        //    var stepOrder = document.getElementsByClassName("stepOrder");
        //    for (var i = 0; i < stepOrder.length; i++) {
        //        stepOrder[i].innerHTML = i + 1;
        //    }
        //}

        //function auto_grow(element) {
        //    element.style.height = "5px";
        //    element.style.height = (element.scrollHeight) + "px";
        //}

        //function addBreak(el) {
        //    var textarea = el;
        //    var matches = textarea.value.split(/\n|\s\n/);
        //    textarea.value = matches.join("<br>\n") + "<br>";
        //}

        function addAdvice() {
            $.alert({
                title: "Add Advice",
                icon: "fa fa-list",
                type: "red",
                columnClass: "xlarge",
                content: "<div class='row pad' style='width: 100%; background: #ECF0F5;display: table;'>" +
                    "<div class='col-xs-6' style='float: none;display: table-cell;vertical-align: top;'>" +
                    "<div class='form-group'>" +
                    "<input class='form-control' placeholder='Advice Name' id='addAdviceName'/>" +
                    "</div>" +
                    "<div class='box box-solid'>" +
                    "<div class='box-header' style='padding: 0px'>" +
                    "<div class='input-group' id='trigGrad'>" +
                    "<span class='input-group-addon'><input type='checkbox'/></span>" +
                    "<b><input class='form-control' type='text' disabled value='Graduating'/></b>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='box box-solid'>" +
                    "<div class='box-header' style='padding: 0px'>" +
                    "<div class='input-group' id='trigReturnee'>" +
                    "<span class='input-group-addon'><input type='checkbox'/></span>" +
                    "<b><input class='form-control' type='text' disabled value='Returnee'/></b>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='box box-solid'>" +
                    "<div class='box-header with-border' style='padding: 0px'>" +
                    "<div class='input-group' id='trigGPA'>" +
                    "<span class='input-group-addon'><input type='checkbox'/></span>" +
                    "<b><input class='form-control' type='text' disabled value='GPA (Overall)'/></b>" +
                    "</div>" +
                    "</div>" +
                    "<div class='box-body'>" +
                    "<div class='row'><div class='col-xs-3 col-xs-offset-3'><input type='number' value='1.25' class='form-control' id='subjGPAMin'></div><div class='col-xs-3'><input value='1' class='form-control' id='subjGPAMax'></div></div><br>" +
                    "<input type='text'  class='slider subjGPA form-control' data-slider-min='-5' data-slider-max='-1'" +
                    "data-slider-step='.25' data-slider-value='[-1.25,-1]' data-slider-orientation='horizontal'" +
                    "data-slider-selection='before' data-slider-tooltip='hide' data-slider-id='red'>" +
                    "</div>" +
                    "</div>" +
                    "<div class='box box-solid'>" +
                    "<div class='box-header with-border' style='padding: 0px'>" +
                    "<div class='input-group' id='trigSubjFailed'>" +
                    "<span class='input-group-addon'><input type='checkbox'/></span>" +
                    "<b><input class='form-control' type='text' disabled value='Subjects Failed Percentage (effective only on last semester)'/></b>" +
                    "</div>" +
                    "</div>" +
                    "<div class='box-body'>" +
                    "<div class='row'><div class='col-xs-3 col-xs-offset-3'><div class='input-group'><input type='number' value='30' class='form-control' id='subjFailedMin'><div class='input-group-addon'>%</div></div></div><div class='col-xs-3'><div class='input-group'><input value='75' class='form-control' id='subjFailedMax'><div class='input-group-addon'>%</div></div></div></div><br>" +
                    "<input type='text' class='slider subjFailed form-control' data-slider-min='0' data-slider-max='100'" +
                    "data-slider-step='1' data-slider-value='[30,75]' data-slider-orientation='horizontal'" +
                    "data-slider-selection='before' data-slider-tooltip='hide' data-slider-id='red'>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "<div class='col-xs-6' style='float: none;display: table-cell;vertical-align: top;'>" +
                    "<div class='text-center text-muted pad'style='background: white; width: 100%;height: 400px;'><div><br><br><br><br><i class='fa fa-file-o fa-5x'></i><br><br>No Steps Added</div><ul id='listStep' class='list-unstyled'></ul></div>" +
                    "</div>" +
                    "</div><button class='btn btn-success pull-right margin' id='addStep'>Add Step</button>",
                onOpenBefore: function () {
                    //INITIALIZED SLIDERS AND PUT THE VALUES TO A VARIABLE
                    var subjFailed = this.$content.find(".slider.subjFailed").slider().on("slide", subjFailedSlide).data("slider");
                    var subjGPA = this.$content.find(".slider.subjGPA").slider().on("slide", subjGPASlide).data("slider");

                    //WHEN SLIDER DRAG CHANGE VALUES
                    function subjFailedSlide() {
                        //Change Slider
                        document.getElementById("subjFailedMin").value = subjFailed.getValue()[0];
                        document.getElementById("subjFailedMax").value = subjFailed.getValue()[1];
                    }

                    function subjGPASlide() {
                        document.getElementById("subjGPAMin").value = subjGPA.getValue()[0] * -1;
                        document.getElementById("subjGPAMax").value = subjGPA.getValue()[1] * -1;
                    }

                    //CHANGE SLIDER ON TYPE ON INPUT BOX
                    document.getElementById("subjFailedMin").onchange = function () {
                        subjFailed.setValue([document.getElementById("subjFailedMin").value, document.getElementById("subjFailedMax").value]); s
                    }
                    document.getElementById("subjFailedMax").onchange = function () {
                        subjFailed.setValue([document.getElementById("subjFailedMin").value, document.getElementById("subjFailedMax").value]);
                    }

                    //ADD STEP EVENT
                    document.getElementById("addStep").onclick = function () {
                        var step = document.createElement("li");
                        step.style.cursor = 'pointer';
                        step.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>1</span><textarea class='form-control stepsTextArea' rows='1' onkeyup='auto_grow(this)' style='resize: none'></textarea><span class='input-group-addon' onclick='removeStep(this)'><i class='fa fa-remove' onclick='removeStep(this)'></i></span></div>";
                        document.getElementById("listStep").previousSibling.innerHTML = "";
                        document.getElementById("listStep").appendChild(step);
                        //Change Steps Order
                        var stepOrder = document.getElementsByClassName("stepOrder");
                        for (var i = 0; i < stepOrder.length; i++) {
                            stepOrder[i].innerHTML = i + 1;
                        }
                    }



                    //MAKE SORTABLE LIST
                    this.$content.find("#listStep").sortable({
                        update: function (event, ui) {
                            //Change Steps Order
                            var stepOrder = document.getElementsByClassName("stepOrder");
                            for (var i = 0; i < stepOrder.length; i++) {
                                stepOrder[i].innerHTML = i + 1;
                            }
                        }
                    });
                },
                buttons: {
                    ok: {
                        btnClass: "btn btn-success",
                        action: function () {
                            //GET ADVICE NAME
                            var addAdviceName = this.$content.find("#addAdviceName").val();
                            var insertSQL = "BEGIN TRAN BEGIN TRY INSERT INTO tblAdvice VALUES('" + addAdviceName + "');";

                            //GET TRIGGERS
                            var trigGrad = document.getElementById("trigGrad");
                            var trigReturnee = document.getElementById("trigReturnee");
                            var trigGPA = document.getElementById("trigGPA");

                            //GET STEPS
                            var stepsTextArea = document.getElementsByClassName("stepsTextArea");

                            //CHECK TRIGGERS
                            if (trigGrad.childNodes[0].childNodes[0].checked == true) {
                                insertSQL += "INSERT INTO tblAdviceTrigger(adviceName,trigName) VALUES('" + addAdviceName + "','Graduating');";
                            }
                            if (trigReturnee.childNodes[0].childNodes[0].checked == true) {
                                insertSQL += "INSERT INTO tblAdviceTrigger(adviceName,trigName) VALUES('" + addAdviceName + "','Returnee');";
                            }
                            if (trigGPA.childNodes[0].childNodes[0].checked == true) {
                                insertSQL += "INSERT INTO tblAdviceTrigger(adviceName,trigName,param1,param2) VALUES('" + addAdviceName + "','GPA','" + document.getElementById("subjGPAMin").value + "','" + document.getElementById("subjGPAMax").value + "');";
                            }
                            //CHECK STEPS
                            for (var i = 0; i < stepsTextArea.length; i++) {
                                insertSQL += "INSERT INTO tblAdviceSteps VALUES('" + addAdviceName + "'," + (i + 1) + ",'" + stepsTextArea[i].value + "')";
                            }

                            insertSQL += "COMMIT END TRY BEGIN CATCH SELECT ERROR_MESSAGE() AS ErrorMessage; ROLLBACK END CATCH;";
                            if (updateAndInsert(insertSQL) == true) {
                                success("Advice Added");
                            }
                            else {
                                Failed("Added");
                            }
                        }
                    },
                    cancel: {}
                }
            });
        }

        //REMOVE STEP EVENT
        function removeStep(elem) {
            //Delete Self
            elem.parentNode.parentNode.remove(elem.parentNode.parentNode.parentNode);
            //Change Steps Order
            var stepOrder = document.getElementsByClassName("stepOrder");
            for (var i = 0; i < stepOrder.length; i++) {
                stepOrder[i].innerHTML = i + 1;
            }
        }

        function auto_grow(element) {
            element.style.height = "5px";
            element.style.height = (element.scrollHeight) + "px";
        }

        function getPassword() {
            var password;
            $.ajax({
                type: 'POST',
                url: 'superAdminHome.aspx/universalQuery',
                data: JSON.stringify({ SQL: "SELECT passcode FROM tblSuperAdmin" }),
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

                    password = XMLrows[0].getElementsByTagName("passcode")[0].innerHTML;

                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return password;
        }

        function changeAccountInfo() {
            $.confirm({
                title: "Settings",
                icon: "fa fa-gear",
                type: "red",
                columnClass: "small",
                content: "<div class = 'form-group'><label>Username</label><input class = 'form-control' id = 'editUser'></div>" +
                    "<div class = 'form-group'><label>Current Password</label><input type = 'password' class = 'form-control' id = 'editCurrPass'></div>" +
                    "<div class = 'form-group'><label>New Password</label><input type = 'password' class = 'form-control' id = 'editNewPass'></div>" +
                    "<div class = 'form-group'><label>Confirm Password</label><input type = 'password' class = 'form-control' id = 'editConfPass'></div>",
                buttons: {
                    Confirm: {
                        btnClass: 'btn bg-red',
                        action: function () {
                            //Get Values from Content
                            var editUser = this.$content.find("#editUser").val();
                            var editCurrPass = this.$content.find("#editCurrPass").val();
                            var editNewPass = this.$content.find("#editNewPass").val();
                            var editConfPass = this.$content.find("#editConfPass").val();
                            var realCurrPass = getPassword();
                            if (editCurrPass.length > 0) {
                                if (editCurrPass == realCurrPass && editNewPass.length == 0 && editConfPass.length == 0) {
                                    var SQL = "UPDATE tblSuperAdmin SET username = '" + editUser + "'";
                                    if (updateAndInsert(SQL) == true) {
                                        $.alert("Username updated.");
                                        setTimeout(function () { document.getElementById("btnLogout").click(); }, 1500);
                                    }
                                    else {
                                        $.alert("Something went wrong. :c umu umu");
                                        return false;
                                    }
                                }
                                else if (editCurrPass == realCurrPass && editNewPass.length > 0 && editConfPass.length > 0) {
                                    if (editNewPass == editConfPass) {
                                        var SQL = "UPDATE tblSuperAdmin SET passcode = '" + editConfPass + "', username = '" + editUser + "'";
                                        if (updateAndInsert(SQL) == true) {
                                            $.alert("Username and Password updated.");
                                            setTimeout(function () { document.getElementById("btnLogout").click(); }, 1500);
                                        }
                                        else {
                                            $.alert("Something went wrong. :c umu umu");
                                            return false;
                                        }
                                    }
                                    else {
                                        $.alert("Password do not match.");
                                        return false;
                                    }
                                }
                                else if (editCurrPass == realCurrPass && editNewPass.length > 0 && editConfPass.length == 0) {
                                    $.alert("Complete fields.");
                                    return false;
                                }
                                else if (editCurrPass == realCurrPass && editNewPass.length == 0 && editConfPass.length > 0) {
                                    $.alert("Complete fields.");
                                    return false;
                                }
                                else {
                                    $.alert("Wrong password.")
                                    return false;
                                }
                            }
                            else {
                                $.confirm("Password Required.");
                                return false;
                            }
                        }
                    },
                    Cancel: {}
                },
                onOpenBefore: function () {
                    this.$content.find("#editUser").val(currentAdmin);
                }

            })
        }
    </script>
</body>
</html>
