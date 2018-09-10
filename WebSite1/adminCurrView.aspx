<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminCurrView.aspx.cs" Inherits="adminCurrView" %>

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

    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
    <link rel="stylesheet" href="dist/css/skins/skin-yellow.min.css" />

    <!--JQuery Confirm CSS-->
    <link rel="stylesheet" href="dist/css/jquery-confirm.min.css">

    <!-- jQuery UI CSS -->
    <link href="dist/css/jquery-ui.css" rel="stylesheet" />

    <%--Token Field--%>
    <link href="dist/css/bootstrap-tokenfield.css" type="text/css" rel="stylesheet">

    <%--Animate--%>
    <link href="dist/css/animate.css" rel="stylesheet" />

    <%--Programme Font--%>
    <link href="dist/css/programme.css" rel="stylesheet" />



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

        .jconfirm-light {
            z-index: 0;
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
<body onload="" class="hold-transition skin-yellow sidebar-mini">
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
                        <li class="treeview active menu-open">
                            <a href="#">
                                <i class="fa fa-table"></i><span>Curriculum</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="active"><a href="#"><i class="fa fa-table"></i>View/Edit</a></li>
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
                <h1 style="font-family: 'programme_light'">View/Edit Curriculums
                </h1>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Curriculum List</h3>
                    </div>
                    <div class="box-body" id="curriculumList">
                        <div class='text-center'>
                            <h3>No Curriculums Added yet</h3>
                        </div>
                    </div>

                    <div class="overlay" id="curriculumListLoading">
                        <i class="fa fa-refresh fa-spin"></i>
                    </div>

                </div>

                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Subjects</h3>
                    </div>
                    <div class="box-body" id="subjectList">
                        <div class="text-center">
                            <h1><i class="fa fa-hand-pointer-o"></i></h1>
                            <h3>Select a Curriculum</h3>
                        </div>
                        <br />
                    </div>
                    <!-- /.box-body -->
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
    <%--Bootstrap Token field--%>
    <script type="text/javascript" src="dist/js/bootstrap-tokenfield.js" charset="UTF-8"></script>
    <script src="dist/js/jquery-ui.js"></script>
    <%--BootStrap Notify--%>
    <script src="dist/js/bootstrap-notify.js"></script>
    <script>
        //Money Euro
        $("[data-mask]").inputmask();
    </script>

    <script>
        //declare current Curr Code
        var currentCurrCode = "";
        //declare current Course Code
        var currentCourseCode = "";
        //declare current Admin User
        var currentAdminUser = "";
        document.getElementsByTagName("body")[0].onload = function () {
            currentAdminUser = '<%= Session["adminUser"].ToString() %>';
            currentCourseCode = '<%= Session["adminCourse"].ToString() %>';
            loadProfile(currentAdminUser);
            loadCurriculums(currentCourseCode);
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

        function loadCurriculums(courseCode) {
            //Get Curriculum List HTML
            var curriculumList = document.getElementById("curriculumList");

            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/getCurrCodes',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: courseCode }),
                dataType: 'json',
                success: function (response) {
                    var currList = document.createElement("div");
                    currList.innerHTML = response.d;
                    var currCodes = currList.getElementsByTagName("currcode");
                    var courseCodes = currList.getElementsByTagName("coursecode");

                    curriculumList.innerHTML = "";
                    for (var i = 0; i < currCodes.length; i++) {
                        var box = document.createElement("div");
                        box.className = "info-box bg-yellow";
                        box.innerHTML = "<span class='info-box-icon'><i class='fa fa-table'></i></span><div class='info-box-content'><span class='info-box-text'>" + currCodes[i].innerHTML + "</span><span class='info-box-number'>Curriculum</span><span class='info-box-text'>" + courseCodes[i].innerHTML + "</span></div>";
                        box.onclick = function () { loadSubjects(this, 1) };
                        curriculumList.appendChild(box);
                    }

                    //Remove Loading
                    document.getElementById("curriculumListLoading").style.display = 'none';
                    if (curriculumList.innerHTML == "") {
                        curriculumList.innerHTML = "<div class='text-center'>" +
                            "</br></br><h1><i class='fa fa-file-o'></i></h1>" +
                            "<h3>No Curriculums Added yet</h3></br></br></br>" +
                            "</div>";
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

        }

        function loadSubjects(elem, type) {
            if (type == 1) {
                document.getElementById("subjectList").innerHTML = "<h1 class='text-center'><i class='fa fa-spinner fa-spin'></i><br></h1><h3 class='text-center'>Loading...</h3>";
            }
            setTimeout(function () {

                if (type == 1) {
                    //Get CurrCode
                    var currCode = elem.childNodes[1].childNodes[0].innerHTML;
                    currentCourseCode = elem.childNodes[1].childNodes[2].innerHTML;
                    currentCurrCode = currCode;
                }
                else if (type == 2) {
                    //Get CurrCode
                    var currCode = elem;
                }
                $.ajax({
                    type: 'POST',
                    url: 'adminCurrView.aspx/getYear',
                    data: JSON.stringify({ currCode: currCode }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    async: false,
                    success: function (response) {
                        years = response.d;
                        //get subList ID
                        subjList = document.getElementById("subjectList");
                        //Clear SubjList
                        subjList.innerHTML = "";
                        for (var i = 0; i < years.length; i++) {
                            //Create Year
                            yearBox = document.createElement("div");
                            yearBox.innerHTML = "<div class='box-header with-border'> <h3 class='box-title'>" + numbersuffix(years[i]) + " Year</h3>  <div class='box-tools pull-right'> <button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i> </button> </div> <!-- /.box-tools --> </div> <!-- /.box-header --> <div class='box-body' style='display: block;'>" + getSemesters(years[i], currCode) + "</div> <!-- /.box-body -->";
                            yearBox.className = "box box-primary";
                            subjList.appendChild(yearBox);

                        }
                    },
                    failure: function (response) {
                        alert("Connection Failed Refresh Page");
                    }
                });
                //View Prereqs
                var viewPreReq = document.getElementsByClassName("form-control viewPreReq");
                for (var i = 0; i < viewPreReq.length; i++) {
                    var row = viewPreReq[i].parentNode.parentNode;
                    var cell = viewPreReq[i].parentNode.parentNode.cells[0].innerHTML;

                    $(viewPreReq[i]).tokenfield({});
                    $(viewPreReq[i]).tokenfield('disable');
                    $(viewPreReq[i]).tokenfield('setTokens', getPreReq(cell, currCode));
                }

                //View Coreqs
                var viewCoReq = document.getElementsByClassName("form-control viewCoReq");
                for (var i = 0; i < viewCoReq.length; i++) {
                    var row = viewCoReq[i].parentNode.parentNode;
                    var cell = viewCoReq[i].parentNode.parentNode.cells[0].innerHTML;

                    $(viewCoReq[i]).tokenfield({});
                    $(viewCoReq[i]).tokenfield('disable');
                    $(viewCoReq[i]).tokenfield('setTokens', getCoReq(cell, currCode));
                }
            }, 1)
        }

        function getCoReq(subjID, currCode) {
            var list = [];
            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/getCoReq',
                data: JSON.stringify({ subjID: subjID }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                async: false,
                success: function (response) {
                    xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    var prereqs = xml.getElementsByTagName("coreq");
                    for (var i = 0; i < prereqs.length; i++) {
                        list.push(prereqs[i].innerHTML.replace(currCode, ''));
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            if (list.length == 0) {
                list.push('None');
            }
            return list;
        }


        function getPreReq(subjID, currCode) {
            var list = [];
            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/getPreReq',
                data: JSON.stringify({ subjID: subjID }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                async: false,
                success: function (response) {
                    xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    var prereqs = xml.getElementsByTagName("prereq");
                    for (var i = 0; i < prereqs.length; i++) {
                        list.push(prereqs[i].innerHTML.replace(currCode, ''));
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            if (list.length == 0) {
                list.push('None');
            }
            return list;
        }

        function getSemesters(year, currCode) {
            var content = "";
            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/getSemester',
                async: false,
                data: JSON.stringify({ currCode: currCode, year: year }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                async: false,
                success: function (response) {
                    semesters = response.d;
                    for (var i = 0; i < semesters.length; i++) {
                        var semname;
                        //Change Header
                        if (semesters[i] == "1") {
                            semname = "First Semester";
                        }
                        else if (semesters[i] == "2") {
                            semname = "Second Semester";
                        }
                        else if (semesters[i] == "3") {
                            semname = "Summer Semester";
                        }

                        //create Table
                        content += "<div class='box box-success'> <div class='box-header'> <h3 class='box-title'>" + semname + "</h3> </div> <div class='box-body no-padding'>" + createSemesterTable(year, semesters[i], currCode) + " <button class='btn btn-success margin' onclick='addSubject(this)'><i class='fa fa-plus'></i>&nbsp; &nbsp; Add</button></div> </div>";


                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

            return content;
        }

        function createSemesterTable(year, sem, currCode) {
            var content = "";
            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/getSemesterTable',
                async: false,
                data: JSON.stringify({ currCode: currCode, year: year, sem: sem }),
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

                    //Create Table
                    var container = document.createElement("div");
                    var tbl = document.createElement("table");
                    tbl.className = "table table-striped";
                    container.appendChild(tbl);
                    //Create Header
                    var headerRow = tbl.insertRow(-1);
                    headerRow.innerHTML = "<th>Subject Code</th><th>Subject Name</th><th>Pre-requisites</th><th>Co-requisites</th><th>Subject Units</th><th>Classification</th><th>Action</th>";
                    for (var i = 0; i < XMLrows.length; i++) {
                        var subjectID = XMLrows[i].getElementsByTagName("subjid")[0].innerHTML;
                        var subjectCodes = XMLrows[i].getElementsByTagName("subjcode")[0].innerHTML;
                        var subjectNames = XMLrows[i].getElementsByTagName("subjName")[0].innerHTML;
                        var subjectUnits = XMLrows[i].getElementsByTagName("subjUnits")[0].innerHTML;
                        var subjectClassi = "None";
                        try {
                            subjectClassi = XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML;
                        } catch (error) { }

                        var row = tbl.insertRow(-1);
                        var cell0 = row.insertCell(0);
                        cell0.innerHTML = subjectID;
                        cell0.style.display = "none";
                        var cell1 = row.insertCell(1);
                        cell1.className = 'subjcode';
                        cell1.innerHTML = subjectCodes;
                        var cell2 = row.insertCell(2);
                        cell2.innerHTML = subjectNames
                        var cell3 = row.insertCell(3);
                        cell3.innerHTML = "<input type='text' class='form-control viewPreReq' value='red,green,blue' />";
                        cell3.style.width = "300px";
                        cell3.className = "tdViewPrereq"
                        var cell4 = row.insertCell(4);
                        cell4.innerHTML = "<input type='text' class='form-control viewCoReq' value='red,green,blue' />";
                        cell4.style.width = "300px";
                        var cell5 = row.insertCell(5);
                        cell5.innerHTML = subjectUnits;
                        var cell6 = row.insertCell(6);
                        cell6.innerHTML = subjectClassi;
                        var cell7 = row.insertCell(7);
                        cell7.innerHTML = "<div class='btn-group'> <button type='button' class='btn btn-default' onclick='editSubject(this)'><i class='fa fa-edit'></i></button> <button type='button' class='btn btn-danger' onclick='deleteSubject(this)'><i class='fa fa-remove'></i></button> </div>";
                    }

                    content += container.innerHTML;
                },
                failure: function (response) {
                    alert(Response.d);
                }
            });
            return content;
        }


        function updateAndInsert(SQLstring) {
            var success;
            $.ajax({
                type: 'POST',
                url: 'adminCurrView.aspx/updateAndInsert',
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


        /////////////////////////////////////////////////////////ADD
        function addSubject(elem) {
            //Get Table
            var semtable = elem.parentNode.childNodes[0];
            //Get Year
            var year = elem.parentNode.parentNode.parentNode.parentNode.childNodes[0].childNodes[1].innerHTML;
            //Convert Year to Number
            year = year.match(/-?\d+\.?\d*/);
            //Get Sem
            var sem = elem.parentNode.parentNode.childNodes[1].childNodes[1].innerHTML;
            //Convert Sem to Number
            if (sem.includes("First")) {
                sem = 1;
            }
            else if (sem.includes("Second")) {
                sem = 2;
            }
            else if (sem.includes("Summer")) {
                sem = 3;
            }
            $.confirm({
                icon: 'glyphicon glyphicon-plus',
                title: 'Add Subject',
                type: 'green',
                columnClass: 'col-md-10 col-md-offset-1',
                content: "<table style='width: 100%; border-collapse: separate; border-spacing: 4px;'> <tr> <td>  <div class='form-group'> <label>Subject Code</label> <input id='addSubjCode' type='text' class='form-control' placeholder='Enter Subject Code' > </div>  </td>  <td>  <div class='form-group'> <label>Subject Name</label> <input id='addSubjName' type='text' class='form-control' placeholder='Enter Subject Name'> </div>  </td>  <td style='width: 200px;'>  <div class='form-group'> <label>Pre-requisite</label> <input class='form-control prereq'></div>  </td><td>  <div class='form-group'> <label>Co-requisite</label> <input type='text' class='form-control coreq' > </div>  </td>  <td>  <div class='form-group'> <label>Subject Units</label> <input class='form-control' value=3 id='addUnits' type='number'> </td> <td>  <div class='form-group'> <label>Classification</label> <input type='text' class='form-control' id='addClassi' placeholder='Enter Classification'> </div>  </td> </tr> </table>",
                onOpenBefore: function () {
                    //GET LIST OF SUBJECT CODES
                    var list = [];
                    var subjcode = document.getElementsByClassName("subjcode");
                    for (var i = 0; i < subjcode.length; i++) {
                        var add = true;
                        //Dont add Self Subjcode
                        if (this.$content.find('.subjc').val() == subjcode[i].innerHTML) {
                            add = false;
                        }
                        //Add to List
                        if (add == true) {
                            list.push(subjcode[i].innerHTML);
                        }
                    }
                    //CREATE COREQUISITE TOKEN
                    $(this.$content.find('.coreq')).on('tokenfield:createdtoken', function (e) {
                        if (list.length == 0) {
                            $(e.relatedTarget).empty().hide().attr('data-value', '');
                        }
                        for (var j = 0; j < list.length; j++) {
                            if (validatePrereq(e.attrs.value, list) == false) {
                                $(e.relatedTarget).empty().hide().attr('data-value', '');
                                notifyPrereq("Cannot add Prerequisite without corresponding Subject Code");
                                return;
                            }
                        }

                    }).on('tokenfield:createtoken', function (e) {
                        //Cannot Add Duplicate Token
                        var tokkens = this.parentNode.getElementsByClassName("token-label");
                        for (var i = 0; i < tokkens.length; i++) {
                            if (tokkens[i].innerHTML == e.attrs.value) {
                                notifyPrereq("Cannot add duplicate Prerequisites.");
                                return false;
                            }
                        }
                    }).tokenfield({
                        autocomplete: {
                            source: list,
                            delay: 10
                        },
                        showAutocompleteOnFocus: true
                    });

                    //CREATE PREREQUISITE TOKEN
                    $(this.$content.find('.prereq')).on('tokenfield:createdtoken', function (e) {
                        if (list.length == 0) {
                            $(e.relatedTarget).empty().hide().attr('data-value', '');
                        }
                        for (var j = 0; j < list.length; j++) {
                            if (validatePrereq(e.attrs.value, list) == false) {
                                $(e.relatedTarget).empty().hide().attr('data-value', '');
                                notifyPrereq("Cannot add Prerequisite without corresponding Subject Code");
                                return;
                            }
                        }

                    }).on('tokenfield:createtoken', function (e) {
                        //Cannot Add Duplicate Token
                        var tokkens = this.parentNode.getElementsByClassName("token-label");
                        for (var i = 0; i < tokkens.length; i++) {
                            if (tokkens[i].innerHTML == e.attrs.value) {
                                notifyPrereq("Cannot add duplicate Prerequisites.");
                                return false;
                            }
                        }
                    }).tokenfield({
                        autocomplete: {
                            source: list,
                            delay: 10
                        },
                        showAutocompleteOnFocus: true
                    });
                },
                buttons: {
                    confirm: {
                        btnClass: 'btn-success',
                        action: function () {
                            //Get Content Values
                            var addSubjCode = this.$content.find('#addSubjCode').val();
                            var addSubjName = this.$content.find('#addSubjName').val();
                            var addUnits = this.$content.find('#addUnits').val();
                            var addClassi = this.$content.find('#addClassi').val();

                            //Validate if SUbject code is blank
                            if (addSubjCode == "") {
                                $.alert('Subject code is Required');
                                return false;
                            }

                            //Validate if SUbject name is blank
                            if (addSubjName == "") {
                                $.alert('Subject name is Required');
                                return false;
                            }

                            SQLAddString = "INSERT INTO tblSubj(subjID,subjCode,currCode,subjName,subjYear,subjSem,subjUnits,subjClassi) VALUES (" +
                                "'" + currentCurrCode + " " + addSubjCode +
                                "','" + addSubjCode +
                                "','" + currentCurrCode +
                                "','" + addSubjName +
                                "'," + year +
                                "," + sem + "," + addUnits + ",'" + addClassi + "');";

                            //Add Prereq
                            var SQLAddString2 = "";
                            var addPrereqs = this.$content.find('.prereq').parent().find('.token-label');
                            if (addPrereqs[0] != null) {
                                for (var i = 0; i < addPrereqs.length; i++) {
                                    SQLAddString2 += "INSERT INTO tblPreReq VALUES ('" + currentCurrCode + " " + addPrereqs[i].innerHTML + "','" + currentCurrCode + " " + addSubjCode + "');";
                                }
                            }

                            //Add coreq
                            var SQLAddString3 = "";
                            var addCoreqs = this.$content.find('.coreq').parent().find('.token-label');
                            if (addCoreqs[0] != null) {
                                for (var i = 0; i < addCoreqs.length; i++) {
                                    SQLAddString3 += "INSERT INTO tblCoReq VALUES ('" + currentCurrCode + " " + addCoreqs[i].innerHTML + "','" + currentCurrCode + " " + addSubjCode + "');";
                                }
                            }


                            //Add to SQL
                            if (updateAndInsert(SQLAddString + SQLAddString2 + SQLAddString3) == true) {
                                //Reload Table
                                loadSubjects(currentCurrCode, 2);
                                success("Adding");
                            }
                            else
                                failed("Adding");
                        }
                    },
                    cancel: {
                        btnClass: 'btn-danger',
                        action: function () { }
                    }
                }
            });
        }
        //////////////////////////////////////////////////////EDIT
        function editSubject(elem) {

            //Get Row
            var row = elem.parentNode.parentNode.parentNode;
            //Get Columns
            var subjectCode = row.childNodes[1].innerHTML;
            var subjectName = row.childNodes[2].innerHTML;
            var subjectUnits = row.childNodes[5].innerHTML;
            var subjectID = row.childNodes[0].innerHTML;
            var subjectClassif = row.childNodes[6].innerHTML;
            if (subjectClassif == "None") {
                subjectClassif = "";
            }
            $.confirm({
                icon: 'glyphicon glyphicon-edit',
                title: 'Edit Subject',
                type: 'orange',
                columnClass: 'col-md-10 col-md-offset-1',
                content: "<table style='width: 100%'>" +
                    "<tr>" +
                    "<td style='padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Subject Code</label>" +
                    "<input type='text' class='form-control subjc'" +
                    "</div>" +
                    "</td>" +
                    "<td style='padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Subject Name</label>" +
                    "<input type='text' class='form-control subjn'" +
                    "</div>" +
                    "</td>" +
                    "<td style='width: 200px; padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Prerequisites</label>" +
                    "<input type='text' class='form-control prereq'" +
                    "</div>" +
                    "</td>" +
                    "<td style='width: 200px; padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Corequisites</label>" +
                    "<input type='text' class='form-control coreq'" +
                    "</div>" +
                    "</td>" +
                    "<td style='padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Units</label>" +
                    "<input type='number' class='form-control subju'" +
                    "</div>" +
                    "</td>" +
                    "<td style='padding-left:5px; padding-right:5px'>" +
                    "<div class='form-group'>" +
                    "<label>Classification</label>" +
                    "<input type='text' class='form-control subjclass'" +
                    "</div>" +
                    "</td>" +
                    "</tr>" +
                    "</table>",
                onOpenBefore: function () {
                    //Put Value from ROWS
                    this.$content.find('.subjclass').val(subjectClassif);
                    this.$content.find('.subjc').val(subjectCode);
                    this.$content.find('.subjn').val(subjectName);
                    this.$content.find('.subju').val(subjectUnits);
                    //CREATE COREQ Tokens
                    var currentCTokensList = [];
                    var currentCTokens = row.getElementsByClassName("viewCoReq")[0].parentNode.getElementsByClassName("token-label");
                    for (var i = 0; i < currentCTokens.length; i++) {
                        var add = true;
                        if (currentCTokens[i].innerHTML == "None")
                            add = false;
                        if (add == true)
                            currentCTokensList.push(currentCTokens[i].innerHTML);
                    }
                    //CREATE Prereq Tokens
                    var currentPTokensList = [];
                    var currentPTokens = row.getElementsByClassName("viewPreReq")[0].parentNode.getElementsByClassName("token-label");
                    for (var i = 0; i < currentPTokens.length; i++) {
                        var add = true;
                        if (currentPTokens[i].innerHTML == "None")
                            add = false;
                        if (add == true)
                            currentPTokensList.push(currentPTokens[i].innerHTML);
                    }
                    //GET LIST OF SUBJECT CODES
                    var list = [];
                    var subjcode = document.getElementsByClassName("subjcode");
                    for (var i = 0; i < subjcode.length; i++) {
                        var add = true;
                        //Dont add Self Subjcode
                        if (this.$content.find('.subjc').val() == subjcode[i].innerHTML) {
                            add = false;
                        }
                        //Add to List
                        if (add == true) {
                            list.push(subjcode[i].innerHTML);
                        }
                    }
                    //CREATE COREQUISITE TOKEN
                    $(this.$content.find('.coreq')).on('tokenfield:createdtoken', function (e) {
                        if (list.length == 0) {
                            $(e.relatedTarget).empty().hide().attr('data-value', '');
                        }
                        for (var j = 0; j < list.length; j++) {
                            if (validatePrereq(e.attrs.value, list) == false) {
                                $(e.relatedTarget).empty().hide().attr('data-value', '');
                                notifyPrereq("Cannot add Prerequisite without corresponding Subject Code");
                                return;
                            }
                        }

                    }).on('tokenfield:createtoken', function (e) {
                        //Cannot Add Duplicate Token
                        var tokkens = this.parentNode.getElementsByClassName("token-label");
                        for (var i = 0; i < tokkens.length; i++) {
                            if (tokkens[i].innerHTML == e.attrs.value) {
                                notifyPrereq("Cannot add duplicate Prerequisites.");
                                return false;
                            }
                        }
                    }).tokenfield({
                        autocomplete: {
                            source: list,
                            delay: 10
                        },
                        showAutocompleteOnFocus: true
                    });

                    //CREATE PREREQUISITE TOKEN
                    $(this.$content.find('.prereq')).on('tokenfield:createdtoken', function (e) {
                        if (list.length == 0) {
                            $(e.relatedTarget).empty().hide().attr('data-value', '');
                        }
                        for (var j = 0; j < list.length; j++) {
                            if (validatePrereq(e.attrs.value, list) == false) {
                                $(e.relatedTarget).empty().hide().attr('data-value', '');
                                notifyPrereq("Cannot add Prerequisite without corresponding Subject Code");
                                return;
                            }
                        }

                    }).on('tokenfield:createtoken', function (e) {
                        //Cannot Add Duplicate Token
                        var tokkens = this.parentNode.getElementsByClassName("token-label");
                        for (var i = 0; i < tokkens.length; i++) {
                            if (tokkens[i].innerHTML == e.attrs.value) {
                                notifyPrereq("Cannot add duplicate Prerequisites.");
                                return false;
                            }
                        }
                    }).tokenfield({
                        autocomplete: {
                            source: list,
                            delay: 10
                        },
                        showAutocompleteOnFocus: true
                    });
                    $(this.$content.find('.prereq')).tokenfield('setTokens', currentPTokensList);
                    $(this.$content.find('.coreq')).tokenfield('setTokens', currentCTokensList);
                },
                buttons: {
                    confirm: {
                        btnClass: 'btn-success',
                        action: function () {
                            //Edit Subj
                            var editedSubjCode = this.$content.find('.subjc').val();
                            var editedSubjName = this.$content.find('.subjn').val();
                            var editedSubjUnits = this.$content.find('.subju').val();
                            var editedSubjClassi = this.$content.find('.subjclass').val();
                            var updateSQLString = "UPDATE tblSubj SET subjID = '" + currentCurrCode + " " + editedSubjCode
                                + "', subjCode = '" + editedSubjCode + "', subjName = '" + editedSubjName + "', subjUnits = " + editedSubjUnits + ", ";
                            if (editedSubjClassi == "") {
                                updateSQLString += "subjClassi = null ";
                            }
                            else {
                                updateSQLString += "subjClassi = '" + editedSubjClassi + "'";
                            }
                            updateSQLString += " WHERE subjID = '" + subjectID + "';";
                            //Edit Prereq
                            var updateSQLString2 = "";
                            var editedPrereqs = this.$content.find('.prereq').parent().find('.token-label');
                            updateSQLString2 = "DELETE FROM tblPreReq WHERE subjID = '" + currentCurrCode + " " + editedSubjCode + "';";
                            if (editedPrereqs[0] != null) {
                                for (var i = 0; i < editedPrereqs.length; i++) {
                                    updateSQLString2 += "INSERT INTO tblPreReq VALUES ('" + currentCurrCode + " " + editedPrereqs[i].innerHTML + "','" + currentCurrCode + " " + editedSubjCode + "');";
                                }
                            }

                            //Co Prereq
                            var updateSQLString3 = "";
                            var editedCoreqs = this.$content.find('.coreq').parent().find('.token-label');
                            updateSQLString3 = "DELETE FROM tblCoReq WHERE subjID = '" + currentCurrCode + " " + editedSubjCode + "';";
                            if (editedCoreqs[0] != null) {
                                for (var i = 0; i < editedCoreqs.length; i++) {
                                    updateSQLString3 += "INSERT INTO tblCoReq VALUES ('" + currentCurrCode + " " + editedCoreqs[i].innerHTML + "','" + currentCurrCode + " " + editedSubjCode + "');";
                                }
                            }


                            if (updateAndInsert(updateSQLString) == true && updateAndInsert(updateSQLString2) == true && updateAndInsert(updateSQLString3) == true) {
                                success("Editing");
                                //Reload Table
                                loadSubjects(currentCurrCode, 2);
                            }
                            else {
                                failed("Editing");
                            }
                        }
                    },
                    cancel: {
                        btnClass: 'btn-danger',
                        action: function () { }
                    },
                }
            });
        }

        function validatePrereq(preReq, list) {
            var found = false;

            for (var i = 0; i < list.length; i++) {
                if (preReq == list[i]) {
                    found = true;
                }
            }

            if (found == true)
                return true;
            else
                return false;
        }
        //DELETE
        function deleteSubject(elem) {
            //Get Row
            var row = elem.parentNode.parentNode.parentNode;
            //Get Subject ID to delete
            $.confirm({
                icon: 'glyphicon glyphicon-edit',
                title: 'Remove Subject',
                type: 'red',
                content: "This subject cannot be retrieve after deletion.",
                buttons: {
                    proceed: {
                        btnClass: 'btn-danger',
                        action: function () {
                            SQLdeleteString = "DELETE FROM tblSubj WHERE subjID = '" + row.cells[0].innerHTML + "';";
                            if (updateAndInsert(SQLdeleteString) == true) {
                                success("Deleting");
                                //Reload Table
                                loadSubjects(currentCurrCode, 2);
                            }
                            else
                                failed("Deleting");

                        }
                    },
                    cancel: {
                        btnClass: 'btn-default',
                        action: function () { }
                    },
                }
            });
        }

        function success(type) {
            $.confirm({
                theme: 'modern',
                icon: 'fa fa-check',
                type: 'green',
                title: 'Success',
                content: type + " records successful!",
                autoClose: 'ok|1000',
                buttons: {
                    ok: {
                        isHidden: true
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
                content: "Record " + type + " failed!",
                autoClose: 'ok|1000',
                buttons: {
                    ok: {
                        isHidden: true
                    }
                }

            });
        }
        function editUnits(units) {
            if (units == 2) {
                return "<option value='1'>1</option><option selected value='2'>2</option><option value='3'>3</option><option value='9'>9</option>";
            }
            else if (units == 3) {
                return "<option value='1'>1</option><option value='2'>2</option><option value='3' selected>3</option><option value='9'>9</option>";
            }
            else if (units == 9) {
                return "<option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='9' selected>9</option>";
            }
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

        //Notify
        function notifyPrereq(message) {
            $.notify({
                // options
                icon: 'fa fa-exclamation-circle',
                message: message
            }, {
                    // settings
                    type: 'danger',
                    delay: 3000,
                    timer: 100,
                    animate: {
                        enter: 'animated fadeInDown',
                        exit: 'animated fadeOutUp'
                    },
                    placement: {
                        from: "top",
                        align: "center"
                    },
                    offset: {
                        y: 600
                    }
                });
        }

    </script>
</body>
</html>

