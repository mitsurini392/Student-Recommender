<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminSchedOffering.aspx.cs" Inherits="adminSchedOffering" %>

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
                        <li><a href="adminAdvice.aspx"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
                        <%--<li><a href="#"><i class="fa fa-bell"></i><span>Notification</span></a></li>--%>
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
                        <li class="active"><a href="#"><i class="fa fa-clock-o"></i><span>Schedule Offering</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Schedule Offering
                </h1>

            </section>
            <!-- Main content -->
            <section class="content">
                <div class="box box-solid text-center text-muted" id="schedContainer">
                    <br />
                    <br />
                    <br />
                    <p style="font-size: 100px;"><i class="fa fa-plus-circle"></i></p>
                    <p style="font-size: 30px; font-family: 'programme_light'">No Schedule Added Yet</p>
                    <br />
                    <p style="font-family: 'programme_light'">
                        <button class="btn btn-warning" onclick="addSched()">Add Schedule</button>
                    </p>
                    <br />
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
            loadSched(currentCourse);
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/loadProfile',
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

        //Load SCHED
        function loadSched(course) {
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/loadSched',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: course }),
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
                    if (XMLrows[0] != null) {
                        var schedContainer = document.getElementById("schedContainer");
                        schedContainer.className = "";
                        schedContainer.innerHTML = "";
                        //ADD ADD BUTTON
                        var addSched = document.createElement("div");
                        addSched.className = "margin";
                        addSched.innerHTML = "<button class='btn btn-success btn-block' onclick='addSched()'>Add</button>";
                        schedContainer.appendChild(addSched);
                        for (var i = 0; i < XMLrows.length; i++) {
                            var schedBox = document.createElement("div");
                            schedBox.className = "box box-success box-solid";
                            schedBox.innerHTML = "<div class='box-header with-border'><h3 class='box-title'>" + XMLrows[i].getElementsByTagName("schedAY")[0].innerHTML + "</h3></div>" +
                                "<div class='box-body'>"+loadSchedTable(XMLrows[i].getElementsByTagName("schedAY")[0].innerHTML, XMLrows[i].getElementsByTagName("schedSem")[0].innerHTML, XMLrows[i].getElementsByTagName("schedYear")[0].innerHTML, currentCourse)+"</div>";
                            schedContainer.appendChild(schedBox);                           
                        }
                    }
                    else {

                        return;
                    }



                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

        function loadSchedTable(loadSchedAY, loadSchedSem, loadSchedYear, courseCode) {
            var content = "";
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/loadSchedTable',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ schedAY: loadSchedAY , schedSem: loadSchedSem, schedYear: loadSchedYear, courseCode: courseCode}),
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
                    var schedTable = document.createElement("table");
                    schedTable.className = 'table table-striped';
                    var headerRow = schedTable.insertRow(-1);
                    headerRow.innerHTML = "<th><h4>Subject Code</h4></th><th><h4>Subject Name</h4></th><th><h4>Section</h4></th><th><h4>Room No.</h4></th><th><h4>Professor</h4></th><th><h4>Schedule</h4></th>";
                    for (var i = 0; i < XMLrows.length; i++) {
                        var row = schedTable.insertRow(-1);
                        row.innerHTML = "<td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + "</td>" +
                            "<td>" + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td>" +
                            "<td>" + XMLrows[i].getElementsByTagName("schedSection")[0].innerHTML + "</td>" +
                            "<td>" + XMLrows[i].getElementsByTagName("schedRoom")[0].innerHTML + "</td>" +
                            "<td>" + XMLrows[i].getElementsByTagName("schedProf")[0].innerHTML + "</td>" +
                            "<td>"+XMLrows[i].getElementsByTagName("schedDesc")[0].innerHTML+"</td>";
                    }
                    content = schedTable.outerHTML;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return content;
        }

        //Add SCHED
        var uploadSched = "";
        function addSched() {
            $.confirm({
                content: "<div class='form-group'>" +
                    "<label for='exampleInputFile'>File input</label>" +
                    "<input type='file' id='uploadSched'>" +
                    "<p class='help-block'><i>Where to get Grade</i></p>" +
                    "</div>",
                title: "Upload Schedule",
                icon: "fa fa-upload",
                type: "green",
                onContentReady: function () {
                    uploadSched = "";
                    //On Upload Grade
                    document.getElementById("uploadSched").onchange = function (evt) {
                        uploadSched = "";
                        if (!window.FileReader) return; // Browser is not compatible
                        debugger;
                        var reader = new FileReader();

                        reader.onload = function (evt) {
                            if (evt.target.readyState != 2) return;
                            if (evt.target.error) {
                                alert('Error while reading file');
                                return;
                            }

                            filecontent = evt.target.result;

                            uploadSched = evt.target.result;

                        };

                        reader.readAsText(evt.target.files[0]);
                    };
                },
                buttons: {
                    submit: {
                        btnClass: 'btn-success',
                        action: function () {
                            //Do not continue if UPLOAD HAS NO VALUE
                            if (uploadSched == "") {
                                $.alert('Please upload a schedule.');
                                return false;
                            }
                            //Get Values from .html file
                            getSchedHTML(uploadSched);
                        }
                    },
                    cancel: {}
                }
            });
        }

        function getSchedHTML(file) {
            //GET VALUES
            var content = document.createElement("div");
            content.innerHTML = file;
            var tbl = content.getElementsByTagName("table");
            //GET SCHEDULE HEADER
            var yearLevel = tbl[2].getElementsByTagName("td")[5].innerHTML;
            var schoolYear = tbl[2].getElementsByTagName("td")[8].innerHTML;
            var semester = tbl[2].getElementsByTagName("td")[11].innerHTML;
            //GET SCHEDULES
            var realTable = document.createElement("table");
            realTable.className = 'table table-striped addSched';
            //HeaderRow (YearLevel,SchoolYear,Semester)
            var schedHeader = "<div class='row' style='width: 80%; margin: auto;'>" +
                "<div class='col-xs-4'>" +
                "<div class='form-group'>" +
                "<label>Year Level</label>" +
                "<input type='text' id='addYearLevel' class='form-control' value='" + yearLevel + "' disabled>" +
                "</div>" +
                "</div>" +
                "<div class='col-xs-4'>" +
                "<div class='form-group'>" +
                "<label>School Year</label>" +
                "<input type='text' id='addSchoolYear' class='form-control' value='" + schoolYear + "' disabled>" +
                "</div>" +
                "</div>" +
                "<div class='col-xs-4'>" +
                "<div class='form-group'>" +
                "<label>Semester</label>" +
                "<input type='text' id='addSem' class='form-control' value='" + semester + "' disabled>" +
                "</div>" +
                "</div>" +
                "</div>";
            //HeaderRow (Subjcode,Subjname etc)
            var headerRow = realTable.insertRow(-1);
            headerRow.innerHTML = "<th>Subject Code</th><th>Subject Name</th><th>Section</th><th>Room No.</th><th>Professor</th><th>Schedule</th><th>Found</th>";
            for (var i = 5; i < tbl.length; i++) {
                var rows = tbl[i].getElementsByTagName("tr");
                for (var j = 0; j < rows.length; j++) {
                    if (rows[j].bgColor == "#669999") {
                        //Dont Get Header
                    }
                    else {
                        console.log();
                        var realRow = realTable.insertRow(-1);
                        realRow.innerHTML = "<td>" + rows[j].childNodes[1].innerHTML + "</td>" +
                            "<td>" + rows[j].childNodes[3].innerHTML + "</td>" +
                            "<td>" + rows[j].childNodes[13].innerHTML + "</td>" +
                            "<td>" + replaceAll(rows[j].childNodes[15].innerHTML, "<br>") + "</td>" +
                            "<td>" + rows[j].childNodes[17].innerHTML + "</td>" +
                            "<td>" + replaceAll(rows[j].childNodes[21].innerHTML, "<br>") + "</td>";
                        if (checkSubject(currentCourse, rows[j].childNodes[1].innerHTML) == true) {
                            realRow.style.background = "#00A65A";
                            realRow.style.color = 'white';
                            realRow.innerHTML += "<td><i class='fa fa-check'></i></td>";
                        }
                        else {
                            realRow.style.background = "red";
                            realRow.style.color = 'white';
                            realRow.innerHTML += "<td class='subjNotFound'><button class='btn btn-danger' onclick='searchSubj(this)'>Validate</button></i></td>";
                        }

                    }
                }
            }
            $.confirm({
                content: schedHeader + realTable.outerHTML,
                columnClass: 'col-lg-12',
                title: 'Add Schedule',
                icon: 'fa fa-plus',
                type: 'green',
                buttons: {
                    Add: {
                        btnClass: 'btn-success',
                        action: function () {
                            //Check if Theres Unvalidated subjected
                            var addSched = document.getElementsByClassName("addSched")[0];
                            var addSchedTDs = addSched.getElementsByTagName("td");
                            for (var i = 0; i < addSchedTDs.length; i++) {
                                if (addSchedTDs[i].className == 'subjNotFound') {
                                    $.alert("Some subjects are not found in curriculum");
                                    return false;
                                }
                            }
                            var AddSQLString = "";
                            var addSchedRows = addSched.getElementsByTagName("tr");
                            for (var i = 1; i < addSchedRows.length; i++) {
                                //SUBJID
                                var subjID = getSubjID(currentCourse, addSchedRows[i].childNodes[0].innerHTML);
                                var subjAY = document.getElementById("addYearLevel").value;
                                var schedYear = document.getElementById("addSchoolYear").value;
                                var schedSem = document.getElementById("addSem").value;
                                var schedSection = addSchedRows[i].childNodes[2].innerHTML;
                                var schedRoom = addSchedRows[i].childNodes[3].innerHTML;
                                var schedProf = addSchedRows[i].childNodes[4].innerHTML;
                                var schedDesc = addSchedRows[i].childNodes[5].innerHTML;

                                AddSQLString += "INSERT INTO tblSched VALUES('" + subjAY + "','" + schedYear + "','" + schedSem + "','" + currentCourse + "','" + subjID + "','" + schedSection + "','" + schedRoom + "','" + schedProf + "','" + schedDesc + "');";

                            }

                            if (updateAndInsert(AddSQLString) == true) {
                                $.confirm({
                                    title: "Success",
                                    icon: "fa fa-check",
                                    content: "Adding of Schedule Successful.",
                                    buttons: {
                                        ok: function () {
                                            window.location.href = "adminSchedOffering.aspx";
                                        }
                                    }
                                })
                            }
                            else {
                                alert("AWTS");
                            }

                        }
                    },
                    cancel: {}
                }
            });
        }

        function checkSubject(course, subjCode) {
            var found = false;
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/checkSchedSubj',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: course, subjCode: subjCode }),
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
                    if (XMLrows[0].getElementsByTagName("subjCode")[0].innerHTML != null) {
                        found = true;
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

            return found;
        }

        function getSubjID(course, subjCode) {
            var subjID = "";
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/checkSchedSubj',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: course, subjCode: subjCode }),
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
                    subjID = XMLrows[0].getElementsByTagName("subjID")[0].innerHTML;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

            return subjID;
        }

        function searchSubj(elem) {
            $.confirm({
                title: 'Validate Subject <h6>This subject was not found in curriculum</h6>',
                icon: 'fa fa-search',
                type: 'orange',
                content: "<div class='form-group'>" +
                    "<label>Select Equivalent Subject Code</label>" +
                    "<select class='form-control selectCourse'>" +
                    "</select>" +
                    "</div>",
                buttons: {
                    Confirm: {
                        btnClass: 'btn btn-success',
                        action: function () {
                            var row = elem.parentNode.parentNode;
                            row.getElementsByTagName("td")[0].innerHTML = this.$content.find('.selectCourse').val();
                            row.getElementsByTagName("td")[6].innerHTML = "<i class='fa fa-check'></i>";
                            row.getElementsByTagName("td")[6].className = "";
                            row.style.background = "#00A65A";
                        }
                    },
                    cancel: {}
                },
                onContentReady: function () {
                    $.ajax({
                        type: 'POST',
                        url: 'adminSchedOffering.aspx/validateSchedSubj',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ courseCode: currentCourse }),
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
                                var opt = document.createElement("option");
                                opt.innerHTML = XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + " - " + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML;
                                opt.value = XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML;
                                var selectCourse = document.getElementsByClassName("selectCourse")[0];
                                selectCourse.appendChild(opt);
                            }
                        },
                        failure: function (response) {
                            alert("Connection Failed Refresh Page");
                        }
                    });
                }
            });
        }

        function replaceAll(str, strToReplace) {
            do {
                str = str.replace(strToReplace, " ");
            } while (str.includes(strToReplace));

            return str;
        }

        function updateAndInsert(SQLstring) {
            var success;
            $.ajax({
                type: 'POST',
                url: 'adminSchedOffering.aspx/updateAndInsert',
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
