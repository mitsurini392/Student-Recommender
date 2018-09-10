<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminCurrAdd.aspx.cs" Inherits="adminCurrAdd" %>

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
<body class="hold-transition skin-yellow sidebar-mini" onload="getCourseNames();">
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
                            <label id="lbCourse">Null</label>
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
                                <li><a href="adminCurrView.aspx"><i class="fa fa-table"></i>View/Edit</a></li>
                                <li class="active"><a href="#"><i class="fa fa-plus"></i>Add </a></li>
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
                <h1 style="font-family: 'programme_light'">Curriculums
                </h1>
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="box box-warning" id="boxCurr">
                    <div class="box-header with-border">
                        <h3 class="box-title" id="currLabel">Add Curriculum</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse" id="btnShowCurr" onclick="editCurriculum()" style="display: none">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>

                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="form-group">
                            <label>Curriculum Year</label>
                            <input type="text" id="CurrYear" class="form-control" data-inputmask='"mask": "9999"' data-mask runat="server"></input>
                        </div>

                        <div class="form-group">
                            <label>Curriculum Course</label>
                            <input type="text" class="form-control" id="currCourse" disabled />
                        </div>



                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <a class="btn btn-warning" onclick="addCurriculum()">Confirm</a>
                    </div>
                </div>

                <%--Curriculum Form--%>

                <div class="box box-solid" id="curriculumBox" style="display: none">
                    <div class="box-header with-border">
                        <h4>Subject List</h4>
                    </div>
                    <div class="box-body" id="curriculum">
                        <div id="blankCurriculum" class="text-center">
                            <i class="fa fa-fw fa-calendar-plus-o" style="font-size: 30px;"></i>
                            <br />
                            <h3>Add Year</h3>
                        </div>
                    </div>

                    <%--Add Year and submit button--%>
                    <div class="box-footer" id="btnAddSubmit">
                        <a id='btnAddYear' class="btn btn-success margin" onclick="addYear()">Add Year</a>
                        <a id='btnRemoveYear' class="btn btn-danger margin" style="display: none" onclick="removeYear()">Remove Year</a>
                        <a id='btnConfirmYear' class="btn btn-primary margin" style="display: none" onclick="confirmCurr(this)" <%--data-toggle="modal" data-target="#myModal"--%>>Submit</a>
                    </div>
                    <div class="overlay" id="disableCurriculum">
                        <i class="fa fa-fw fa-lock"></i>
                    </div>
                </div>


                <div class="box" id="debugInsert" style="display: none">
                    d2 Lalabas ung insertstrings
                </div>

                <br style="clear: both" />
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

    <script>
        //Money Euro
        $("[data-mask]").inputmask();
    </script>
    <script>
        //Curriculum Code
        var currCode;
        //Year Counter
        var yrctr = 1;
        //Insert Strings
        var insertCurr;
        var insertSubj;
        //Current Course
        var currentCourseCode;
        //Curret Admin
        var currentAdminUser = "";

        document.getElementsByTagName("body")[0].onload = function () {
            currentAdminUser = '<%= Session["adminUser"].ToString() %>';
            currentCourseCode = '<%= Session["adminCourse"].ToString() %>';
            loadProfile(currentAdminUser);
            getCourseNames(currentCourseCode);
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminCurrAdd.aspx/loadProfile',
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

        //Get Available Course Names
        function getCourseNames(courseCode) {
            var courseNames;
            document.getElementById("currCourse").innerHTML = "";
            $.ajax({
                type: 'POST',
                url: 'adminCurrAdd.aspx/getCourseName',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: courseCode }),
                dataType: 'json',
                success: function (response) {
                    courseNames = response.d;
                    document.getElementById("currCourse").value = courseNames[0];
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

        }


        function addCurriculum() {

            //Get Data from HTML
            var currCourseName = document.getElementById("currCourse").value;
            var currCourseCode = currentCourseCode;
            //Store to Current Course Code
            currentCourseCode = currCourseCode;
            var currYear = document.getElementById("CurrYear").value;

            //If Year is Blank Dont Continue
            if (document.getElementById("CurrYear").value == "") {
                $.confirm({
                    icon: 'glyphicon glyphicon-exclamation-sign',
                    title: 'Alert!',
                    content: 'Year cannot be blank.',
                    type: 'red',
                    buttons: {
                        ok: {
                            action: function () { }
                        }
                    }
                });
                return;
            }


            else if (document.getElementById("CurrYear").value.includes("_")) {
                $.confirm({
                    icon: 'glyphicon glyphicon-exclamation-sign',
                    title: 'Alert!',
                    content: 'Enter correct year format.',
                    type: 'red',
                    buttons: {
                        ok: {
                            action: function () { }
                        }
                    }
                });
                return;
            }
            //Check if Curriculum Exist
            if (checkCurriculum(currCourseCode + " " + currYear) == true) {
                $.confirm({
                    icon: 'glyphicon glyphicon-exclamation-sign',
                    title: 'Alert!',
                    content: 'Curriculum Already Exist.',
                    type: 'red',
                    buttons: {
                        ok: {
                            action: function () { }
                        }
                    }
                });
                return;
            }
            //Generate Insert String;
            insertCurr = "INSERT INTO tblCurr VALUES ('" + currCourseCode + " " + currYear + "','" + currCourseName + " " + currYear + "'," + currYear + ",'" + currCourseCode + "');";
            //Get Curriculum Code
            currCode = currCourseCode + " " + currYear;
            //Minimized the Curriculum
            document.getElementById("btnShowCurr").click();
            //Show the Edit Button
            document.getElementById("btnShowCurr").style.display = "block";
            //Changed the Curriculum Label
            document.getElementById("currLabel").innerHTML = document.getElementById("currCourse").value + " - " + document.getElementById("CurrYear").value + " Curriculum";
            //Show Curriculum
            document.getElementById("curriculumBox").style.display = "block";
            document.getElementById("disableCurriculum").style.display = "none";
        }

        function checkCurriculum(currCodee) {
            var exist;
            $.ajax({
                type: 'POST',
                url: 'adminCurrAdd.aspx/checkCurriculum',
                data: JSON.stringify({
                    currCode: currCodee
                }),
                async: false,
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    exist = response.d;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return exist;
        }

        function editCurriculum() {
            //Remove Edit Button
            document.getElementById("btnShowCurr").style.display = "none";
            //Deactivate Year Editing
            document.getElementById("disableCurriculum").style.display = "block";
        }

        //Get Course Code From Course Name
        function getCourseCode(courseNamee) {
            var courseCode;
            $.ajax({
                type: 'POST',
                url: 'adminCurrAdd.aspx/getCourseCode',
                data: JSON.stringify({
                    courseName: courseNamee,
                }),
                async: false,
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    courseCode = response.d;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return courseCode;
        }

        //Add Year
        function addYear() {
            //Check Year Count
            if (yrctr >= 1) {
                document.getElementById("blankCurriculum").style.display = "none";
                document.getElementById("btnRemoveYear").style.display = "inline";
                document.getElementById("btnConfirmYear").style.display = "inline";
            }
            //document.getElementById("curriculum").innerHTML += "<div class='box box-primary box-solid yearBox'> <div class='box-header with-border'> <h3 class='box-title'>" + numbersuffix(yrctr) + " Year" + "</h3> <div class='box-tools pull-right'> <button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i> </button> </div> <!-- /.box-tools --> </div> <!-- /.box-header --> <div id='tbl' class='box-body'> " + createSem() + "</div> <!-- /.box-body --> </div>";
            $('#curriculum').append("<div class='box box-primary box-solid yearBox'> <div class='box-header with-border'> <h3 class='box-title'>" + numbersuffix(yrctr) + " Year" + "</h3> <div class='box-tools pull-right'> <button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i> </button> </div> <!-- /.box-tools --> </div> <!-- /.box-header --> <div id='tbl' class='box-body'> " + createSem() + "</div> <!-- /.box-body --> </div>");
            yrctr++;
        }


        //Remove Year
        function removeYear() {
            //Check YearCount 
            if (yrctr <= 2) {
                document.getElementById("blankCurriculum").style.display = "block";
                document.getElementById("btnRemoveYear").style.display = "none";
                document.getElementById("btnConfirmYear").style.display = "none";
            }
            var yearBoxes = document.getElementsByClassName("yearBox");
            //Delete Last Box
            yearBoxes[0].parentNode.removeChild(yearBoxes[yearBoxes.length - 1]);
            yrctr--;

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

        //Create Sem
        function createSem() {
            var content = "";
            var semname;
            for (var i = 1; i <= 3; i++) {
                if (i == 1)
                    semname = "First Semester";
                else if (i == 2)
                    semname = "Second Semester";
                else if (i == 3)
                    semname = "Summer Semester";

                content += "<div class='box box-success'> <div class='box-header'> <h3 class='box-title'>" + semname + "</h3> </div> <div class='box-body no-padding' id='box2'> <table class='table table-striped'><tbody class='sem'> <tr> <th>Subject Code</th> <th>Subject Title</th> <th>Pre-requisites</th><th>Co-requisites</th> <th>Year</th> <th>Semester</th> <th>Units </th><th>Classification</th> <th>Action</th> </tr> <tr> <td align='center' colspan='7'>(NO SUBJECT)</td> </tr> </tbody> </table> </div> <a class='btn btn-success margin' onclick='addSubj(this)'>Add Subject</a> <a class='btn btn-default margin' onclick='clearSubj(this)'>Clear Subject</a> </div>";

            }
            return content;
        }

        //Add Subject on Sem
        function addSubj(elem) {
            //Get Year
            var year = elem.parentNode.parentNode.parentNode.childNodes;
            year = year[1];
            year = year.childNodes;
            year = year[1];
            year = year.innerHTML[0];
            //Get Sem
            sem = elem.parentNode.childNodes;
            sem = sem[1].childNodes;
            sem = sem[1].innerHTML;
            if (sem == "First Semester")
                sem = 1;
            else if (sem == "Second Semester")
                sem = 2;
            else if (sem == "Summer Semester")
                sem = 3;

            //Get Table
            var tb = elem.parentNode.getElementsByTagName("table");
            tb = tb[0].getElementsByTagName("tbody");
            tb = tb[0];
            //Check If Table is Empty
            var tr = tb.getElementsByTagName("tr");
            for (var i = 0; i < tr.length; i++) {
                if (tr[i].innerHTML.includes("(NO SUBJECT)")) {
                    tr[i].parentNode.removeChild(tr[i]);
                }
            }
            //Add Subject
            tb.insertRow(-1).innerHTML = "<td class='field subj subjcode' contenteditable='true' placeholder='-----'  onkeypress='changeBoxShadow(this)'></td>" +
                "<td class='field subj' contenteditable = 'true' placeholder = '-----' onkeypress = 'changeBoxShadow(this)' ></td >" +
                "<td class='field prereq' style='width: 250px'><div class='input-group input-group-sm'> <input type='text' placeholder='Leave Blank if None' onfocus='createToken(this)' class='form-control'> <span class='input-group-btn'> <button onclick='refreshToken(this)' type='button' class='btn btn-default btn-flat'><i class='fa fa-refresh'></i></button> </span> </div></td>" +
                "<td class='field coreq' style='width: 250px'><div class='input-group input-group-sm'> <input type='text' placeholder='Leave Blank if None' onfocus='createToken2(this)' class='form-control'> <span class='input-group-btn'> <button onclick='refreshToken2(this)' type='button' class='btn btn-default btn-flat'><i class='fa fa-refresh'></i></button> </span> </div></td>" +
                "<td class='field'>" + year + "</td> <td class='field'>" + sem + "</td> <td class='field' ><select><option value='1'>1</option><option value='2'>2</option><option value='3' selected>3</option><option value='9'>9</option></select></td>" +
                "<td class='field' contenteditable='true' placeholder='-----'></td><td><a class='btn btn-danger' onclick='removeSubj(this)'>Delete</a></td>";

        }

        function createToken2(elem) {
            var list = [];
            var subjcode = elem.parentNode.parentNode.parentNode.parentNode.getElementsByClassName("field subj subjcode");
            for (var i = 0; i < subjcode.length; i++) {
                var add = true;
                //Dont add Self Subjcode
                if (elem.parentNode.parentNode.parentNode.childNodes[0].innerHTML == subjcode[i].innerHTML) {
                    add = false;
                }
                //Dont add Blank subjcodes
                if (subjcode[i].innerHTML == "") {
                    add = false;
                }
                //Add to List
                if (add == true) {
                    list.push(subjcode[i].innerHTML);
                }
            }


            $(elem).on('tokenfield:createdtoken', function (e) {
                if (list.length == 0) {
                    $(e.relatedTarget).empty().hide().attr('data-value', '');
                }
                for (var j = 0; j < list.length; j++) {
                    if (validatePrereq(e.attrs.value, list) == false) {
                        $(e.relatedTarget).empty().hide().attr('data-value', '');
                    }
                }

            }).on('tokenfield:createtoken', function (e) {
                //Cannot Add Duplicate Tokkens
                var tokkens = elem.parentNode.getElementsByClassName("token-label");
                for (var i = 0; i < tokkens.length; i++) {
                    if (tokkens[i].innerHTML == e.attrs.value) {
                        return false;
                    }
                }
            })
                .tokenfield({
                    autocomplete: {
                        source: list,
                        delay: 100
                    },
                    showAutocompleteOnFocus: true
                });
        }

        function refreshToken2(elem) {
            var list = [];
            var subjcode = elem.parentNode.parentNode.parentNode.parentNode.parentNode.getElementsByClassName("field subj subjcode");
            for (var i = 0; i < subjcode.length; i++) {
                var add = true;
                //Dont add Self Subjcode
                if (elem.parentNode.parentNode.parentNode.parentNode.childNodes[0].innerHTML == subjcode[i].innerHTML) {
                    add = false;
                }
                //Dont add Blank subjcodes
                if (subjcode[i].innerHTML == "") {
                    add = false;
                }
                //Add to List
                if (add == true) {
                    list.push(subjcode[i].innerHTML);
                }
            }

            var tokenField = elem.parentNode.parentNode.childNodes[1];
            tokenField.innerHTML = "";
            tokenField.placeholder = "Leave Blank if None";
            //Recreate Token
            $(tokenField).on('tokenfield:createdtoken', function (e) {
                if (list.length == 0) {
                    $(e.relatedTarget).empty().hide().attr('data-value', '');
                }
                for (var j = 0; j < list.length; j++) {
                    if (validatePrereq(e.attrs.value, list) == false) {
                        $(e.relatedTarget).empty().hide().attr('data-value', '');
                    }
                }

            }).on('tokenfield:createtoken', function (e) {
                //Cannot Add Duplicate Tokkens
                var tokkens = elem.parentNode.parentNode.getElementsByClassName("token-label");
                for (var i = 0; i < tokkens.length; i++) {
                    if (tokkens[i].innerHTML == e.attrs.value) {
                        return false;
                    }
                }
            })
                .tokenfield({
                    autocomplete: {
                        source: list,
                        delay: 100
                    },
                    showAutocompleteOnFocus: true
                });

        }

        function createToken(elem) {
            //Create List
            var list = [];
            //Get sems
            var sems = document.getElementsByClassName("sem");
            for (var i = 0; i < sems.length; i++) {
                //Get SubjCodes on sem
                var currentSem = elem.parentNode.parentNode.parentNode.parentNode;
                //Dont add subjcodes on current sem
                if (currentSem.innerHTML == sems[i].innerHTML) {
                    break;
                }
                //Add to subjectCode
                var tempSubjCode = sems[i].getElementsByClassName("subjcode");
                for (var j = 0; j < tempSubjCode.length; j++) {
                    if (tempSubjCode[j].innerHTML != "") {
                        list.push(tempSubjCode[j].innerHTML);
                    }
                }
            }

            $(elem).on('tokenfield:createdtoken', function (e) {
                if (list.length == 0) {
                    $(e.relatedTarget).empty().hide().attr('data-value', '');
                }
                for (var j = 0; j < list.length; j++) {
                    if (validatePrereq(e.attrs.value, list) == false) {
                        $(e.relatedTarget).empty().hide().attr('data-value', '');
                    }
                }

            }).on('tokenfield:createtoken', function (e) {
                //Cannot Add Duplicate Tokkens
                var tokkens = elem.parentNode.getElementsByClassName("token-label");
                for (var i = 0; i < tokkens.length; i++) {
                    if (tokkens[i].innerHTML == e.attrs.value) {
                        return false;
                    }
                }
            })
                .tokenfield({
                    autocomplete: {
                        source: list,
                        delay: 100
                    },
                    showAutocompleteOnFocus: true
                });
        }

        function refreshToken(elem) {
            //Create List
            var list = [];
            //Get sems
            var sems = document.getElementsByClassName("sem");
            for (var i = 0; i < sems.length; i++) {
                //Get SubjCodes on sem
                var currentSem = elem.parentNode.parentNode.parentNode.parentNode;
                //Dont add subjcodes on current sem
                if (currentSem.innerHTML == sems[i].innerHTML) {
                    break;
                }
                //Add to subjectCode
                var tempSubjCode = sems[i].getElementsByClassName("subjcode");
                for (var j = 0; j < tempSubjCode.length; j++) {
                    if (tempSubjCode[j].innerHTML != "") {
                        list.push(tempSubjCode[j].innerHTML);
                    }
                }
            }

            var tokenField = elem.parentNode.parentNode.childNodes[1];
            tokenField.innerHTML = "";
            tokenField.placeholder = "Leave Blank if None";
            //Recreate Token
            $(tokenField).on('tokenfield:createdtoken', function (e) {
                if (list.length == 0) {
                    $(e.relatedTarget).empty().hide().attr('data-value', '');
                }
                for (var j = 0; j < list.length; j++) {
                    if (validatePrereq(e.attrs.value, list) == false) {
                        $(e.relatedTarget).empty().hide().attr('data-value', '');
                    }
                }

            }).on('tokenfield:createtoken', function (e) {
                //Cannot Add Duplicate Tokkens
                var tokkens = elem.parentNode.parentNode.getElementsByClassName("token-label");
                for (var i = 0; i < tokkens.length; i++) {
                    if (tokkens[i].innerHTML == e.attrs.value) {
                        return false;
                    }
                }
            })
                .tokenfield({
                    autocomplete: {
                        source: list,
                        delay: 100
                    },
                    showAutocompleteOnFocus: true
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


        //On type change box shadow to default remove highlight
        function changeBoxShadow(elem) {
            elem.style.border = '0';
        }

        //Remove subject on sem
        function removeSubj(elem) {
            //Check if Table only 1 row
            var tbl = elem.parentNode.parentNode.parentNode.getElementsByTagName("tr");
            if (tbl.length == 2) {
                elem.parentNode.parentNode.innerHTML = "<td align='center' colspan='7'>(NO SUBJECT)</td>";
                return;
            }
            //Get Current Row
            var row = elem.parentNode.parentNode;
            //Remove Row
            row.parentNode.removeChild(row);
            //Add Row
            elem.parentNode.parentNode.parentNode.innerHTML += "asd";
        }

        function clearSubj(elem) {
            tb = elem.parentNode.getElementsByTagName("tbody");
            tb = tb[0];
            tb.innerHTML = "<tr> <th>Subject Code</th> <th>Subject Title</th> <th>Pre-requisites</th><th>Co-requisitess</th><th>Year</th> <th>Semester</th> <th>Units </th><th>Classification</th><th>Action</th> </tr> <tr> <td align='center' colspan='7'>(NO SUBJECT)</td> </tr>";

        }

        //Validate if Subject Code is Unique

        function hasDuplicates(array) {
            var valuesSoFar = Object.create(null);
            for (var i = 0; i < array.length; ++i) {
                var value = array[i].innerHTML;
                if (value in valuesSoFar) {
                    $.confirm({
                        icon: 'glyphicon glyphicon-exclamation-sign',
                        title: 'Alert!',
                        content: 'Duplicate Subject Codes',
                        type: 'red',
                        buttons: {
                            ok: {
                                action: function () { array[i].focus(); }
                            }
                        }
                    });
                    return true;
                }
                valuesSoFar[value] = true;
            }
            return false;
        }

        //Confirm Curr
        function confirmCurr(elem) {
            //Get PreREq
            var currYear = document.getElementById("CurrYear").value;
            var preReqSQL = "";
            var prereqs = document.getElementsByClassName("field prereq");
            for (var j = 0; j < prereqs.length; j++) {
                var tokens = prereqs[j].getElementsByClassName("token-label");
                for (var i = 0; i < tokens.length; i++) {
                    var preReqSubjID = tokens[i].parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[0].innerHTML;
                    preReqSQL += "INSERT INTO tblPreReq VALUES('" + currentCourseCode + " " + currYear + " " + tokens[i].innerHTML + "','" + currentCourseCode + " " + currYear + " " + preReqSubjID + "');";
                }
            }
            //Get Coreq
            var coReqSQL = "";
            var coreqs = document.getElementsByClassName("field coreq");
            for (var j = 0; j < coreqs.length; j++) {
                var tokens = coreqs[j].getElementsByClassName("token-label");
                for (var i = 0; i < tokens.length; i++) {
                    var coReqSubjID = tokens[i].parentNode.parentNode.parentNode.parentNode.parentNode.childNodes[0].innerHTML;
                    coReqSQL += "INSERT INTO tblCoReq VALUES('" + currentCourseCode + " " + currYear + " " + tokens[i].innerHTML + "','" + currentCourseCode + " " + currYear + " " + coReqSubjID + "');";
                }
            }
            //Validate Subject Code
            var canContinue = true;
            var flag = false;
            var subjCodes = document.getElementsByClassName('subj');

            for (var i = 0; i < subjCodes.length; i++) {
                //focus to element
                if (subjCodes[i].innerHTML.length < 1 && flag == false) {
                    subjCodes[i].focus();
                    flag = true;
                }
                if (subjCodes[i].innerHTML.length < 1) {
                    subjCodes[i].style.border = '1px solid red';
                    canContinue = false;
                }
                else {
                    canContinue = true;
                }


            }

            if (canContinue == false) {
                return;
            }
            //validate subject code unique
            var subjCodes2 = document.getElementsByClassName('subjcode');
            if (hasDuplicates(subjCodes2) == true) {
                return;
            }
            //Get Semesters
            var semesters = document.getElementsByClassName("sem");
            //Clear Debug
            document.getElementById("debugInsert").innerHTML = "";
            //Add Header
            document.getElementById("debugInsert").innerHTML += "BEGIN TRAN BEGIN TRY  ";
            //Add Insert Curr
            document.getElementById("debugInsert").innerHTML += insertCurr;
            //generate INsert Strings from semester
            for (var i = 0; i < semesters.length; i++) {
                //IF ERROR
                if (convertToInsertStrings(semesters[i]) == "error") {
                    document.getElementById("debugInsert").innerHTML = "";
                    return;
                }
                document.getElementById("debugInsert").innerHTML += convertToInsertStrings(semesters[i]);
            }
            document.getElementById("debugInsert").innerHTML += preReqSQL;
            document.getElementById("debugInsert").innerHTML += coReqSQL;
            document.getElementById("debugInsert").innerHTML += "	COMMIT END TRY BEGIN CATCH SELECT ERROR_MESSAGE() AS ErrorMessage; ROLLBACK END CATCH";



            $.confirm({
                title: 'Confirm',
                content: 'Are you sure you want to add this Curriculum?',
                buttons: {
                    confirm: {
                        action: function () {
                            executeToSQL();
                        }
                    },
                    cancel: {
                        action: function () { }
                    }
                }
            });
        }


        //Convert to Insert Strings
        function convertToInsertStrings(tbl) {

            //If Table has no subject
            if (tbl.innerHTML.includes("(NO SUBJECT)")) {
                return "";
            }
            //If Table Contains Grade
            else {
                //Insert String
                var insertString = "";
                //Get Rows
                var rows = tbl.getElementsByTagName("tr");
                for (var i = 1; i < rows.length; i++) {
                    var currYear = document.getElementById("CurrYear").value;
                    insertString += "INSERT INTO tblSubj(subjID,subjCode,currCode,subjName,subjYear,subjSem,subjUnits,subjClassi) VALUES (";
                    var columns = rows[i].getElementsByTagName("td")
                    //Subj ID
                    var tmpsubjcode = columns[0].innerHTML.replace(/&nbsp;/g, '');
                    tmpsubjcode = tmpsubjcode.trim();
                    insertString += "'" + currentCourseCode + " " + currYear + " " + tmpsubjcode + "'";
                    //Subj Code
                    insertString += ",'" + tmpsubjcode + "'";
                    //Curr Code
                    insertString += ",'" + currCode + "'";
                    //Subj Name
                    var tmpsubjname = columns[1].innerHTML.replace(/&nbsp;/g, '');
                    tmpsubjname = tmpsubjname.trim();
                    insertString += ",'" + tmpsubjname + "'";
                    //Year
                    insertString += ",'" + columns[4].innerHTML + "'";
                    //Semester
                    insertString += ",'" + columns[5].innerHTML + "'";
                    //Units

                    insertString += "," + columns[6].childNodes[0].value;
                    //Classification
                    if (columns[7].innerHTML == "") {
                        insertString += ",null); \n"
                    }
                    else {
                        insertString += ",'" + columns[7].innerHTML + "'); \n"
                    }
                }



                return insertString;
            }
        }

        function executeToSQL() {
            var insertString = document.getElementById("debugInsert").innerHTML;

            $.ajax({
                type: 'POST',
                url: 'adminCurrAdd.aspx/executeToSQL',
                data: JSON.stringify({
                    sqlString: insertString,
                }),
                async: false,
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    if (response.d == "ok") {
                        $.confirm({
                            icon: 'glyphicon glyphicon-check',
                            title: 'Curriculum Added!',
                            content: 'Curriculums can be view or edit on Curriculum tab.',
                            type: 'green',
                            buttons: {
                                ok: {
                                    action: function () { window.location.href = 'adminCurrView.aspx'; }
                                }
                            }
                        });
                    }
                    else
                        alert(response.d);
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

    </script>
</body>
</html>
