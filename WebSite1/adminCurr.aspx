<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminCurr.aspx.cs" Inherits="adminCurr" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <style>[contenteditable=true]:empty:before {
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
<body class="hold-transition skin-yellow sidebar-mini" onload="getCourseNames()">
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
                                <asp:Label ID="lbLastName" Text="null" runat="server"></asp:Label>,
              <asp:Label ID="lbFirstName" Text="null" runat="server"></asp:Label>&nbsp
              <asp:Label ID="lbMiddleName" Text="null" runat="server"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="lbUser" Text="null" runat="server"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <li class="header">NAVIGATION</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li><a href="#"><i class="fa fa-user"></i><span>Advices</span></a></li>
                        <li><a href="#"><i class="fa fa-file"></i><span>Students</span></a></li>
                        <li class="active"><a href="#"><i class="fa fa-file"></i><span>Curriculums</span></a></li>
                        <li><a href="#"><i class="fa fa-tasks"></i><span>Advice</span></a></li>
                        <br />
                        <li>
                            <a id="btnLogout"><i class="fa fa-power-off"></i> <span>Logout</span></a></li>
                    </ul>
                    <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>Curriculums
        <small>...</small>
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
                                <select id="currCourse" class="form-control select2" style="width: 100%;">
                                    <option></option>

                                </select>
                            </div>


                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <a class="btn btn-warning" onclick="addCurriculum()">Confirm</a>
                        </div>
                    </div>

                    <%--Curriculum Form--%>

                    <div class="box box-solid" id="curriculumBox" style="display: none">
                        <div class="box-header with-border"><h4>Subject List</h4></div>
                        <div class="box-body" id="curriculum">
                            <div id="blankCurriculum" class="text-center">
                                <i class="fa fa-fw fa-calendar-plus-o" style="font-size: 30px;"></i><br />
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
                

                    <div class="box" id="debugInsert" style="display: block">
                        d2 Lalabas ung insertstrings
                    </div>

                    <br style="clear: both" />
                </section>
                <!-- /.content -->
            </div>

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Confirm</h4>
                  </div>
                  <div class="modal-body text-center" id="viewModal">
                     Are you sure you want to Add this Curriculum?
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
                    <button type="button" class="btn btn-primary" onclick="executeToSQL()">Confirm</button>
                  </div>
                </div>
              </div>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
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

            //Get Available Course Names
            function getCourseNames() {
                var courseNames;
                document.getElementById("currCourse").innerHTML = "";
                $.ajax({
                    type: 'POST',
                    url: 'adminCurr.aspx/getCourseName',
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (response) {
                        courseNames = response.d;
                        for (var i = 0; i < courseNames.length; i++) {
                            var opt = document.createElement('option');
                            opt.value = courseNames[i];
                            opt.innerHTML = courseNames[i];
                            document.getElementById("currCourse").appendChild(opt);
                        }
                    },
                    failure: function (response) {
                        alert("Connection Failed Refresh Page");
                    }
                });

            }


            function addCurriculum() {
                
                //Get Data from HTML
                var currCourseName = document.getElementById("currCourse").value;
                var currCourseCode = getCourseCode(currCourseName);
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
                                action: function () {  }
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
                    url: 'adminCurr.aspx/checkCurriculum',
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
                    url: 'adminCurr.aspx/getCourseCode',
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
                document.getElementById("curriculum").innerHTML += "<div class='box box-primary box-solid yearBox'> <div class='box-header with-border'> <h3 class='box-title'>" + numbersuffix(yrctr) + " Year" + "</h3> <div class='box-tools pull-right'> <button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i> </button> </div> <!-- /.box-tools --> </div> <!-- /.box-header --> <div id='tbl' class='box-body'> " + createSem() + "</div> <!-- /.box-body --> </div>";
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

                    content += "<div class='box box-success'> <div class='box-header'> <h3 class='box-title'>" + semname + "</h3> </div> <div class='box-body no-padding' id='box2'> <table class='table table-striped'><tbody class='sem'> <tr> <th>Subject Code</th> <th>Subject Title</th> <th>Pre-requisite</th> <th>Year</th> <th>Semester</th> <th>Units </th> <th>Action</th> </tr> <tr> <td align='center' colspan='7'>(NO SUBJECT)</td> </tr> </tbody> </table> </div> <a class='btn btn-success margin' onclick='addSubj(this)'>Add Subject</a> <a class='btn btn-default margin' onclick='clearSubj(this)'>Clear Subject</a> </div>";

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
                tb.innerHTML += "<tr><td class='field subj subjcode' contenteditable='true' placeholder='-----' onkeypress='changeBoxShadow(this)'></td> <td class='field subj' contenteditable='true' placeholder='-----' onkeypress='changeBoxShadow(this)'></td> <td class='field prereq' contenteditable='true' placeholder='-----'></td> <td class='field'>" + year + "</td> <td class='field'>" + sem + "</td> <td class='field' ><select><option value='1'>1</option><option value='2'>2</option><option value='3'selected>3</option><option value='9'>9</option></select></td> <td><a class='btn btn-danger' onclick='removeSubj(this)'>Delete</a></td></tr>";
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
                tb.innerHTML = "<tr> <th>Subject Code</th> <th>Subject Title</th> <th>Pre-requisite</th> <th>Year</th> <th>Semester</th> <th>Units </th> <th>Action</th> </tr> <tr> <td align='center' colspan='7'>(NO SUBJECT)</td> </tr>";

            }


            //Confirm Curr
            function confirmCurr(elem) {
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
                        insertString += "INSERT INTO tblSubj VALUES (";
                        var columns = rows[i].getElementsByTagName("td")
                        //Subj Code
                            insertString += "'" + columns[0].innerHTML + "'";
                        //Curr Code
                        insertString += ",'" + currCode + "'";
                        //Subj Name
                        insertString += ",'" + columns[1].innerHTML + "'";
                        //Year
                        insertString += ",'" + columns[3].innerHTML + "'";
                        //Semester
                        insertString += ",'" + columns[4].innerHTML + "'";
                        //Pre req
                        if (columns[2].innerHTML == "") {
                            insertString += ",null";
                        }
                        else {
                            insertString += ",'" + columns[2].innerHTML + "'";
                        }                       
                        //Units
                        
                        insertString += "," + columns[5].childNodes[0].value + "); \n";
                        
                    }
                    return insertString;
                }
            }

            function executeToSQL() {
                var insertString = document.getElementById("debugInsert").innerHTML;

                $.ajax({
                    type: 'POST',
                    url: 'adminCurr.aspx/executeToSQL',
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
                                            action: function () { window.location.href = 'adminCurr.aspx'; }
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
