﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentHome.aspx.cs" Inherits="studentHome" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Recommender | Student Home</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Ionicons -->
    <link href="dist/css/ionicons.min.css" rel="stylesheet" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

    <link href="dist/css/jquery-confirm.min.css" rel="stylesheet" />
    <link href="dist/css/animate.css" rel="stylesheet" />
    <%--Croppie--%>
    <link href="dist/css/croppie.css" rel="stylesheet" />
    <%--Anno CSS--%>
    <link href="dist/css/anno.css" rel="stylesheet" />

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

            .stepsTextArea[disabled] {
                background-color: #FFF !important;
            }
    </style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-purple layout-top-nav" onload="loadSession()">
    <div class="wrapper">

        <header class="main-header">
            <nav class="navbar navbar-static-top">
                <%--<div class="container">
                    <div class="navbar-header">
                        <a href="../../index2.html" class="navbar-brand"><b>Student </b>Recommender</a>
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                            <i class="fa fa-bars"></i>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse pull-left">
                        <ul class="nav navbar-nav">
                            <li class="dropdown messages-menu">
                                <!-- Menu toggle button -->
                                <a href="#" onclick="readAnnoun()" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-danger" id="announNum"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have unread announcement</li>
                                    <li>
                                        <!-- inner menu: contains the messages -->
                                        <ul class="menu" id="viewAnnoun">
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Support Team
                          <small><i class="fa fa-clock-o"></i>5 mins</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                        </ul>
                                        <!-- /.menu -->
                                    </li>
                                    <li class="footer"><a href="#">See All Announcement</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse pull-right" id="navbar-collapse">
                        <form runat="server">
                            <ul class="nav navbar-nav">
                                <li>
                                    <asp:LinkButton OnClick="btnLogout_Click" runat="server" ID="btnLogout">Logout</asp:LinkButton></li>
                            </ul>
                        </form>
                    </div>
                </div>--%>
                <div class="container">
                    <div class="navbar-header">
                        <a href="#" class="navbar-brand"><b>Student </b>Recommender</a>
                        <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>--%>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    </div>
                    <!-- /.navbar-collapse -->
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <div class="notifMsg">
                        </div>
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#" onclick="viewAllGrades()"><i class="fa fa-list-ul"></i></a>
                            </li>
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <!-- Menu toggle button -->
                                <a href="#" onclick="readAnnoun()" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-danger" id="announNum"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have unread announcement</li>
                                    <li>
                                        <!-- inner menu: contains the messages -->
                                        <ul class="menu" id="viewAnnoun">
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>Support Team
                          <small><i class="fa fa-clock-o"></i>5 mins</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                        </ul>
                                        <!-- /.menu -->
                                    </li>
                                    <li class="footer"><a href="#">See All Announcement</a></li>
                                </ul>
                            </li>
                            <li>
                                <form runat="server">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <asp:LinkButton OnClick="btnLogout_Click" runat="server" ID="btnLogout"><i class="fa fa-sign-out"></i></asp:LinkButton></li>
                                    </ul>
                                </form>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-custom-menu -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </header>
        <!-- Full Width Column -->
        <div class="content-wrapper">
            <div class="container">

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="box box-primary animated " id="uploadPictureContainer" style="display: none">
                                <div class="box-header">
                                    <h3 class="box-title">Upload Pic</h3>
                                </div>
                                <div class="box-body text-center">
                                    <div class="CroppieContainer">
                                    </div>
                                    <p>
                                        <button class="btn bg-purple" onclick="uploadImage(this)">Upload</button>
                                        <button class="btn confirmImage">Ok</button>
                                        <button class="btn" onclick="window.location.href = 'studentHome.aspx'">Cancel</button>
                                    </p>
                                </div>
                            </div>
                            <div class="box box-widget widget-user-2" id="profileContainer">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <div class="widget-user-header bg-purple">
                                    <div class="widget-user-image">
                                        <img class="img-circle" id="profImage" alt="User Avatar" onclick="changeProfileImage(this)">
                                    </div>
                                    <h3 id="profileUser" class="widget-user-username">Null</h3>
                                    <h5 id="profileStudNo" class="widget-user-desc">Null</h5>
                                </div>
                                <div class="box-footer no-padding">
                                    <ul class="nav nav-stacked">
                                        <li><a href="#">Course <span class="pull-right" id="profCourse">31</span></a></li>
                                        <li><a href="#">Curriculum <span class="pull-right" id="profCurr">12</span></a></li>
                                        <li><a href="#">Contact <span class="pull-right" id="profContact">5</span></a></li>
                                        <li><a href="#">Email <span class="pull-right" id="profEmail">12</span></a></li>
                                        <li>
                                            <button onclick="changeProfile(this)" class="btn bg-purple btn-block margin btn-xs" style="margin-left: 10%; width: 80%">Edit</button></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Petitions</h3>
                                </div>
                                <div class="box-body text-center" style="height: 300px; overflow: auto" id="loadPetitionContainer">
                                    <i class="fa fa-thumbs-o-up fa-5x"></i>
                                    <h3>No Petitions Enlisted</h3>
                                </div>
                            </div>
                            <div class="box box-primary eventDateCont">
                                <div class="box-header">
                                    <h3 class="box-title">Event Dates</h3>
                                </div>
                                <div class="box-body" style="height: 300px;" id="enrollSched">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Grades Prediction</h3>
                                </div>
                                <div class="box-body" style="height: 300px; overflow: auto;">
                                    <div class="text-center text-muted" id="predictionContainer">
                                        <h1><i class="fa fa-file-o"></i></h1>
                                        <h3>Upload grades to get see Grades Prediction.</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Advices</h3>
                                </div>
                                <div class="box-body" style="height: 300px; overflow: auto;" id="LoadAdvicesContainer">
                                    <div class="text-center text-muted" id="noadvice">
                                        <h1><i class="fa fa-file-o"></i></h1>
                                        <h3>No Advices to show</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Upload Grade</h3>
                                </div>
                                <div class="box-body">
                                    <div id="rootwizard">
                                        <div class="navbar">
                                            <div class="navbar-inner">
                                                <div class="container">
                                                    <ul>
                                                        <li><a href="#tab1" data-toggle="tab">Upload Gradesheet</a></li>
                                                        <li><a href="#tab2" data-toggle="tab">Validate Grades</a></li>
                                                        <li><a href="#tab3" data-toggle="tab">Get Advice</a></li>
                                                        <li><a href="#tab4" data-toggle="tab">Petition Enlistment</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="bar" class="progress">
                                            <div class="progress-bar progress-bar-striped bg-purple" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
                                        </div>
                                        <div class="tab-content">
                                            <div class="tab-pane pad" id="tab1" style="height: 350px; background: #ECF0F5">
                                                <div class="box box-solid">
                                                    <div class="box-header with-border">
                                                        <i class="fa fa-file-o"></i>

                                                        <h3 class="box-title">Upload Grade</h3>
                                                    </div>
                                                    <div class="box-body">
                                                        <div class="form-group">
                                                            <label for="exampleInputFile">File input</label>
                                                            <input type="file" id="gradeSheet">

                                                            <p class="help-block">
                                                                upload .html files from SIS
                                                                <br />
                                                                <a href="#"><i>how to get html file</i></a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab2">
                                                <div class="box box-solid">
                                                    <div class="box-header with-border">
                                                        <i class="fa fa-file-o"></i>
                                                        <h3 class="box-title">Validate Grades <small>(Match Grades from your Curriculum)</small></h3>
                                                    </div>
                                                    <div class="box-body" id="gradesContent" style="height: 500px; overflow: auto; overflow-x: hidden">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane pad" id="tab3" style="height: 350px; background: #ECF0F5; overflow: auto">
                                                <div class="box box-solid">
                                                    <div class="box-header">
                                                        <h3 class="box-title"></h3>
                                                        <div class="box-body">
                                                        </div>
                                                        <div class="overlay text-center">
                                                            <i class="fa fa-circle-o-notch fa-spin"></i>
                                                            <br />
                                                            <br />
                                                            <h3>Advices Coming Soon</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane pad" id="tab4" style="height: 350px; background: #ECF0F5; overflow: auto">
                                                <div class="box box-solid">
                                                    <div class="box-header">
                                                        <h3 class="box-title">Petition</h3>
                                                        <div class="box-body">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <ul class="pager wizard">
                                                <li class="previous first" style="display: none;"><a href="#">First</a></li>
                                                <li class="previous">
                                                    <button class="btn btn-primary pull-left">Previous</button></li>
                                                <li class="next last" style="display: none;"></li>
                                                <li class="next">
                                                    <button class="btn btn-primary pull-right">Next</button></li>
                                                <li class="finish">
                                                    <button class="btn btn-primary pull-right">Finish</button></li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.content-wrapper -->
        <%--        <footer class="main-footer">
            <div class="container">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.8
     
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
      reserved.
   
            </div>
            <!-- /.container -->
        </footer>--%>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery 2.2.3 -->
    <script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../../plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <%--Bootstrap Wizard--%>
    <script src="dist/js/jquery.bootstrap.wizard.js"></script>
    <!-- Jquery Confirm js -->
    <script src="dist/js/jquery-confirm.min.js"></script>
    <%--Croppie--%>
    <script src="dist/js/croppie.js"></script>
    <%--Anno JS--%>
    <script src="dist/js/anno.js"></script>
    <%--Scroll JS --%>
    <script src="dist/js/jquery.scrollintoview.js"></script>
    <%--Advice JS--%>
    <script src="dist/js/advice.js"></script>
    <%--CHART JS--%>
    <script src="plugins/chartjs/Chart.bundle.js"></script>


    <script>
        var currentStudentNo = "";
        var currentCourse = "";
        var currentCurr = "";
        //Get Session Name
        function loadSession() {
            currentStudentNo = '<%= Session["studentUser"].ToString() %>';
            currentCourse = '<%= Session["studentCourse"].ToString() %>';
            loadProfile(currentStudentNo);
            loadEnrollSched(currentCourse);
            loadPetitions(currentStudentNo);
            loadClassifAve(currentStudentNo, currentCurr);
            loadAdvicesList();
            viewAnnoun();
            systemTutorial();
        }

        function systemTutorial() {
            //Cached Tutorial
            if (localStorage.tut != null) {
                //
            }
            else {
                //Get What to Highlight
                var profileContainer = document.getElementById("profileContainer");
                var predictionContainer = document.getElementById("predictionContainer").parentNode.parentNode;
                var loadPetitionContainer = document.getElementById("loadPetitionContainer").parentNode;
                var LoadAdvicesContainer = document.getElementById("LoadAdvicesContainer").parentNode;
                var anno1 = new Anno([{
                    target: profileContainer,
                    content: "Students can edit their info and change profile picture.",
                    position: 'right',
                }, {
                    target: document.getElementById("rootwizard").parentNode.parentNode,
                    content: '1. Grade file will come from <b>SIS</b>. To save grade file, you must go to the <b>Grades Page</b> of the SIS and hit <b>CTRL + S </b>.',
                    position: 'left',
                }, {
                    target: predictionContainer,
                    content: '2. After uploading the grade file, student can now view their grades prediction.',
                    position: 'center-bottom',
                }, {
                    target: loadPetitionContainer,
                    content: '3. Petition that you enlist will go here.',
                    position: 'right',
                }, {
                    target: LoadAdvicesContainer,
                    content: '4. Your personalized advices will appear here',
                    position: 'left'
                }, {
                    target: document.getElementsByClassName("eventDateCont")[0],
                    content: '5. Important events and schedules will appear here.',
                    position: 'right',
                }, {
                    target: document.getElementsByClassName("notifMsg")[0],
                    content: "<div class='text-center'><i class='fa fa-list-ul fa-2x'></i><br>Gradesheet<br><br><i class='fa fa-envelope-o fa-2x'></i><br>Notification<br><br><i class='fa fa-sign-out fa-2x'></i><br>Sign-out</div>",
                    position: 'left',
                }, {
                    target: profileContainer,
                    position: 'right',
                    content: "Run tutorial again on log-in?",
                    autoFocusLastButton: false,
                    buttons: [
                        {
                            text: 'Yes',
                            click: function (anno, evt) {
                                anno.hide();
                            }
                        }, {
                            text: "I'm Good",
                            click: function (anno, evt) {
                                localStorage.tut = '1';
                                anno.hide();
                            }
                        }
                    ]
                }]);
                anno1.show();
            }

        }

        function loadAdvicesList() {
            var LoadAdvicesContainer = document.getElementById("LoadAdvicesContainer");

            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "Select * From tblAdviceList WHERE studNo = '" + currentStudentNo + "'" }),
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
                        LoadAdvicesContainer.innerHTML = "";
                        var adviceTable = document.createElement("table");
                        adviceTable.className = "table table-striped";
                        var tableHeader = adviceTable.insertRow(-1);
                        tableHeader.innerHTML = "<th>Status</th><th>Type</th><th>Content</th><th>Action</th>";
                        LoadAdvicesContainer.appendChild(adviceTable);

                        for (var i = 0; i < XMLrows.length; i++) {
                            //if (XMLrows[i].getElementsByTagName("advType")[0].innerHTML == "Scholastic Delinquent") {
                            //    var row = adviceTable.insertRow(-1);
                            //    row.innerHTML = "<td class='text-center' disabled><input type='checkbox' disabled></td><td>" + XMLrows[i].getElementsByTagName("advType")[0].innerHTML + "</td><td>" + getAdviceStep(XMLrows[i].getElementsByTagName("advType")[0].innerHTML)[0].substring(0, 60) + "....</td><td><button class='btn bg-purple' onclick=\"getStudAdvProg(this,'" + currentStudentNo + "','" + currentCourse + "','" + $("#profileUser").html() + "')\">View</button></td>";
                            //    if (checkCompleteAdvice(XMLrows[i].getElementsByTagName("advType")[0].innerHTML, currentStudentNo) == true) {
                            //        row.childNodes[0].childNodes[0].checked = true;
                            //    }
                            //}
                            //else if (XMLrows[i].getElementsByTagName("advType")[0].innerHTML == "Returnee / Readmission") {
                            //    var row = adviceTable.insertRow(-1);
                            //    row.innerHTML = "<td class='text-center' disabled><input type='checkbox' disabled></td><td>" + XMLrows[i].getElementsByTagName("advType")[0].innerHTML + "</td><td>" + getAdviceStep(XMLrows[i].getElementsByTagName("advType")[0].innerHTML)[0].substring(0, 60) + "....</td><td><button class='btn bg-purple' onclick=\"getStudAdvProg(this,'" + currentStudentNo + "','" + currentCourse + "','" + $("#profileUser").html() + "')\">View</button></td>";
                            //    if (checkCompleteAdvice(XMLrows[i].getElementsByTagName("advType")[0].innerHTML, currentStudentNo) == true) {
                            //        row.childNodes[0].childNodes[0].checked = true;
                            //    }
                            //}
                            var row = adviceTable.insertRow(-1);
                            row.innerHTML = "<td class='text-center' disabled >Unfinished</td><td>" + XMLrows[i].getElementsByTagName("advType")[0].innerHTML + "</td><td>" + getAdviceStep(XMLrows[i].getElementsByTagName("advType")[0].innerHTML)[0].substring(0, 60) + "....</td><td><button class='btn bg-purple' onclick=\"getStudAdvProg(this,'" + currentStudentNo + "','" + currentCourse + "','" + $("#profileUser").html() + "')\">View</button></td>";
                            //Change status if completed                           
                            if (checkCompleteAdvice(XMLrows[i].getElementsByTagName("advType")[0].innerHTML, currentStudentNo) == true) {
                                row.childNodes[0].innerHTML = "Finished (Pending Verification)";
                                if (checkAdvValidation(currentStudentNo) == true) {
                                    row.childNodes[0].innerHTML = "<p style='color: green'>Completed</p>";
                                }
                            }

                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function checkAdvValidation(studNo) {
            var isValidated = false;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceList WHERE studNo = '" + studNo + "'" }),
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

                    if (XMLrows[0].getElementsByTagName("advCheck")[0].innerHTML == "1") {
                        isValidated = true;
                    }
                }
            });
            return isValidated;
        }

        function checkNotif(studNo) {
            var found = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT * FROM tblNotifs WHERE studNo = '" + studNo + "';" }),
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

                    //Check if Completed
                    if (XMLrows.length > 0) {
                        if (XMLrows[0].getElementsByTagName("notified")[0].innerHTML == "1") {
                            found = "1";
                        }
                        else {
                            found = true;
                        }
                    }
                    else {
                        found = false;
                    }
                },
            });
            return found;
        }

        function checkCompleteAdvice(adviceName, studNo) {
            var completed = false;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT COUNT(*),(SELECT COUNT(*) FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "') FROM tblAdviceListSteps WHERE studNo = '" + studNo + "' AND adviceName = '" + adviceName + "';" }),
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

                    //Check if Completed
                    if (XMLrows[0].getElementsByTagName("Column1")[0].innerHTML == XMLrows[0].getElementsByTagName("Column2")[0].innerHTML) {
                        completed = true;
                    }
                },
            });
            return completed;
        }

        function loadClassifAve(studNo, currentCurr) {
            //Get Prediction Container
            predictionContainer = document.getElementById("predictionContainer");
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT Distinct subjClassi from tblSubj WHERE currCode = '" + currentCurr + "' AND subjClassi IS NOT NULL " }),
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
                    //If there is Classification
                    if (XMLrows.length > 0) {
                        predictionContainer.className = "";
                        predictionContainer.innerHTML = "";
                        for (var i = 0; i < XMLrows.length; i++) {
                            predictionContainer.innerHTML += "<div class='info-box bg-purple'>" +
                                "<span class='info-box-icon'><i class='fa fa-book'></i></span>" +
                                "<div class='info-box-content'>" +
                                "<span class='info-box-text'>" + XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML + "</span>" +
                                "<span class='info-box-number'>Average: " + getAve(XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML, currentStudentNo) + "</span>" +
                                "<div class='progress'>" +
                                "<div class='progress-bar' style='width: 85%'></div>" +
                                "</div>" +
                                "<span class='progress-description'>" +
                                "<button class='btn bg-orange btn-flat btn-xs' onclick=\"getPredictions('" + XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML + "','" + getAve(XMLrows[i].getElementsByTagName("subjClassi")[0].innerHTML, currentStudentNo) + "')\">View Subjects</button>" +
                                "</span>" +
                                "</div>" +
                                "</div>";
                        }
                    }

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function getAve(classif, studNo) {
            var classifAve = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT AVG(CAST(tblGrades.gradesGrade AS DECIMAL(3,2))) FROM tblSubj INNER JOIN tblGrades ON tblSubj.subjID = tblGrades.subjID INNER JOIN tblStud ON tblGrades.studNo = tblGrades.studNo WHERE subjClassi = '" + classif + "' AND tblStud.studNo = '" + studNo + "' AND tblGrades.studNo = '" + studNo + "' AND tblGrades.gradesGrade LIKE '%[0-9]%'" }),
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
                    if (XMLrows[0].getElementsByTagName("Column1")[0] != null) {
                        classifAve = XMLrows[0].getElementsByTagName("Column1")[0].innerHTML.substring(0, 5);
                    }
                    else {
                        classifAve = "No Grades on " + classif;
                    }

                },
                failure: function (response) {
                    alert(response.d);
                }
            });

            return classifAve;
        }

        function getPredictions(classif, ave) {
            var predictedRange;
            //Grade
            if (parseFloat(ave) >= 1.00 && parseFloat(ave) <= 1.124) predictedRange = "1.00 - 1.25"; //1.00 
            else if (parseFloat(ave) >= 1.125 && parseFloat(ave) <= 1.374) predictedRange = "1.00 - 1.50"; //1.25 
            else if (parseFloat(ave) >= 1.375 && parseFloat(ave) <= 1.624) predictedRange = "1.25 - 1.75"; //1.50 
            else if (parseFloat(ave) >= 1.625 && parseFloat(ave) <= 1.874) predictedRange = "1.50 - 2.00"; //1.75 
            else if (parseFloat(ave) >= 1.875 && parseFloat(ave) <= 2.124) predictedRange = "1.75 - 2.25"; //2.00 
            else if (parseFloat(ave) >= 2.125 && parseFloat(ave) <= 2.374) predictedRange = "2.00 - 2.50"; //2.25 
            else if (parseFloat(ave) >= 2.375 && parseFloat(ave) <= 2.624) predictedRange = "2.25 - 2.75"; //2.50 
            else if (parseFloat(ave) >= 2.625 && parseFloat(ave) <= 2.874) predictedRange = "2.50 - 3.00"; //2.75 
            else if (parseFloat(ave) >= 2.875 && parseFloat(ave) <= 3.124) predictedRange = "2.75 - 5.00"; //3.00 
            else if (parseFloat(ave) >= 3.125) predictedRange = "3.00 - 5.00"; //5.00

            $.confirm({
                title: 'Grades Prediction',
                icon: 'fa fa-book',
                type: 'purple',
                columnClass: 'large',
                content: "<div class='row' style='width: 100%'><div class='col-md-6'><div class='bg-purple text-center pad'><h4>Range of Grades Prediction<p>for</p><p>" + classif + "</p></h4><p><h2>" + predictedRange + "</h2></p></div></div>" +
                    "<div class='col-md-6'><h4 class='bg-purple pad'>Subjects Predicted</h4><table class='table table-striped predictSubjTable'><tr><th>Subject</th></tr></tr></table></div>" +
                    "</div>" +
                    "<div class='row' style='width: 100%'><div class='col-md-12'><h4 class='bg-purple pad'>Previous Subjects</h4><table class='table table-striped previousPredict'><tr><th>Subject</th><th>Grade</th></tr></table></div>" + "</div>",
                onOpenBefore: function () {
                    if (predictedRange == undefined) {
                        this.$content.html("<div class='text-center text-muted'><h3>No Grades on " + classif + "</h3></div>");
                    }
                },
                onContentReady: function () {
                    //////////////////////////////////FOR PREDIECTED SUBJECT
                    var predictSubjTable = document.getElementsByClassName("predictSubjTable")[0];
                    $.ajax({
                        type: 'POST',
                        url: 'studentHome.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: "SELECT * FROM tblSubj WHERE subjID NOT IN ( SELECT subjID FROM tblGrades WHERE studNo = '" + currentStudentNo + "') AND currCode = '" + currentCurr + "' AND Subjclassi = '" + classif + "';" }),
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
                            //If there is Classification
                            if (XMLrows.length > 0) {
                                for (var i = 0; i < XMLrows.length; i++) {
                                    var row = predictSubjTable.insertRow(-1);
                                    row.innerHTML = "<td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + " - " + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td>";
                                }
                            }
                            else {
                                var row = predictSubjTable.insertRow(-1);
                                row.innerHTML = "<td>No Subjects Left</td>";
                            }

                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                    /////////////////////////////////FOR SUBJECTS PART OF THE PREDICTION
                    var previousPredict = document.getElementsByClassName("previousPredict")[0];
                    $.ajax({
                        type: 'POST',
                        url: 'studentHome.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: "SELECT * FROM tblSubj INNER JOIN tblGrades ON tblSubj.subjID = tblGrades.subjID INNER JOIN tblStud ON tblGrades.studNo = tblGrades.studNo  WHERE subjClassi = '" + classif + "' AND tblStud.studNo = '" + currentStudentNo + "' AND tblGrades.studNo = '" + currentStudentNo + "'" }),
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
                            for (var i = 0; i < XMLrows.length; i++) {
                                var row = previousPredict.insertRow(-1);
                                row.innerHTML = "<td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + " - " + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td>" + XMLrows[i].getElementsByTagName("gradesGrade")[0].innerHTML + "<td></td>";
                            }

                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });

                }
            })
        }

        function loadPetitions(studNo) {
            var loadPetitionContainer = document.getElementById("loadPetitionContainer");
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/loadPetitions',
                async: false,
                data: JSON.stringify({ studNo: studNo }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");
                    //Get Schedule Container
                    var enrollSched = document.getElementById("enrollSched");
                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    //Return if no Records FOund
                    if (XMLrows.length == 0) {
                        return;
                    }
                    //Clear Petition Container
                    loadPetitionContainer.innerHTML = "";
                    loadPetitionContainer.className = "box-body";
                    for (var i = 0; i < XMLrows.length; i++) {
                        if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Pending") {
                            loadPetitionContainer.innerHTML += "<div class='alert bg-orange  alert-dismissible'>" +
                                "<h4><i class='icon fa  fa-hourglass-o'></i>" + getEquivSubjCode(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</h4>" +
                                "Status: " + XMLrows[i].getElementsByTagName("petApp")[0].innerHTML +
                                "</div>";
                        }
                        else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Approved") {
                            loadPetitionContainer.innerHTML += "<div class='alert alert-success  alert-dismissible'>" +
                                "<h4><i class='icon fa  fa-check'></i>" + getEquivSubjCode(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</h4>" +
                                "Status: " + XMLrows[i].getElementsByTagName("petApp")[0].innerHTML +
                                "</div>";
                        }
                        else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "VPAA Pending") {
                            loadPetitionContainer.innerHTML += "<div class='alert bg-aqua alert-dismissible'>" +
                                "<h4><i class='icon fa  fa-hourglass-o'></i>" + getEquivSubjCode(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</h4>" +
                                "Status: " + XMLrows[i].getElementsByTagName("petApp")[0].innerHTML +
                                "<br><br><p style='text-align: right'><button class='btn btn-info btn-sm' style='filter: contrast(150%)'>View Info</button></p>" +
                                "</div>";
                        }
                        else if (XMLrows[i].getElementsByTagName("petApp")[0].innerHTML == "Rejected") {
                            loadPetitionContainer.innerHTML += "<div class='alert alert-danger  alert-dismissible'>" +
                                "<h4><i class='icon fa  fa-exclamation'></i>" + getEquivSubjCode(XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML) + "</h4>" +
                                "Status: " + XMLrows[i].getElementsByTagName("petApp")[0].innerHTML +
                                "<br><br><p style='text-align: right'><button class='btn btn-danger btn-sm' onclick=\"searchSubjOffering('" + XMLrows[i].getElementsByTagName("petSubjID")[0].innerHTML + "')\" style='filter: contrast(150%)'>View Subject Offering</button></p>" +
                                "</div>";
                        }
                    }

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function loadEnrollSched(courseCode) {
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/loadEnrollSched',
                async: false,
                data: JSON.stringify({ courseCode: courseCode }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");
                    //Get Schedule Container
                    var enrollSched = document.getElementById("enrollSched");
                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");

                    if (XMLrows.length == 0) {
                        enrollSched.innerHTML = "<div class='text-center text-muted'><h1><i class='fa fa-file-o'></i></h1><h3>No Schedule</h3></div>";
                    }
                    else {
                        var unorderedList = document.createElement("ul");
                        unorderedList.className = "nav nav-stacked";
                        for (var i = 0; i < XMLrows.length; i++) {
                            var listItem = document.createElement("li");
                            var eventStartFormat = new Date(XMLrows[i].getElementsByTagName("eventStart")[0].innerHTML);
                            var eventEndFormat = new Date(XMLrows[i].getElementsByTagName("eventEnd")[0].innerHTML);
                            eventStartFormat = (eventStartFormat.getMonth() + 1) + '/' + eventStartFormat.getDate() + '/' + eventStartFormat.getFullYear();
                            eventEndFormat = (eventEndFormat.getMonth() + 1) + '/' + eventEndFormat.getDate() + '/' + eventEndFormat.getFullYear();
                            if (eventStartFormat == eventEndFormat) {
                                listItem.innerHTML = "<a href='#'>" + XMLrows[i].getElementsByTagName("eventName")[0].innerHTML + "<span class='pull-right'>" + eventStartFormat + "</span></a>";
                            }
                            else {
                                listItem.innerHTML = "<a href='#'>" + XMLrows[i].getElementsByTagName("eventName")[0].innerHTML + "<span class='pull-right'>" + eventStartFormat + " - " + eventEndFormat + "</span></a>";
                            }

                            unorderedList.appendChild(listItem);
                        }
                        enrollSched.appendChild(unorderedList);

                    }

                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function loadProfile(studNo) {
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/loadProfile',
                async: false,
                data: JSON.stringify({ studNo: studNo }),
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

                    document.getElementById("profileUser").innerHTML = XMLrows[0].getElementsByTagName("studLast")[0].innerHTML + ", " + XMLrows[0].getElementsByTagName("studFirst")[0].innerHTML + " " + XMLrows[0].getElementsByTagName("studMiddle")[0].innerHTML;
                    //document.getElementById("dropdownName").innerHTML = XMLrows[0].getElementsByTagName("studLast")[0].innerHTML + ", " + XMLrows[0].getElementsByTagName("studFirst")[0].innerHTML + " " + XMLrows[0].getElementsByTagName("studMiddle")[0].innerHTML;
                    document.getElementById("profileStudNo").innerHTML = XMLrows[0].getElementsByTagName("studNo")[0].innerHTML;

                    document.getElementById("profCourse").innerHTML = XMLrows[0].getElementsByTagName("courseCode")[0].innerHTML;
                    document.getElementById("profCurr").innerHTML = XMLrows[0].getElementsByTagName("studCurr")[0].innerHTML;
                    currentCurr = XMLrows[0].getElementsByTagName("studCurr")[0].innerHTML;
                    document.getElementById("profContact").innerHTML = XMLrows[0].getElementsByTagName("studContact")[0].innerHTML;
                    document.getElementById("profEmail").innerHTML = XMLrows[0].getElementsByTagName("studEmail")[0].innerHTML;
                    document.getElementById("profImage").src = XMLrows[0].getElementsByTagName("studPic")[0].innerHTML;
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        //Grades String
        var gradeStr = "";
        $(document).ready(function () {
            $('#rootwizard').bootstrapWizard({
                onNext: function (tab, navigation, index) {
                    /////DECLARE CURRENT YEAR AND SECTION
                    var currentSec = "";
                    var currentYear = "";
                    if (index == 1) {
                        if (gradeStr == "") {
                            $.alert({
                                icon: "fa fa-exclamation",
                                title: "Alert",
                                content: "Upload a Grade",
                                type: "red"
                            });
                            return false;
                        }
                        else {
                            //Put File Contents to Div
                            var gradeSheetContent = document.createElement("div");
                            gradeSheetContent.innerHTML = gradeStr;
                            /////////////////////////////////////VALIDATE GRADE
                            var searchStudNo = gradeSheetContent.getElementsByClassName("regu");
                            for (var i = 0; i < searchStudNo.length; i++) {
                                if (searchStudNo[i].innerHTML.includes("Welcome,")) {
                                    if (searchStudNo[i].childNodes[1].innerHTML.includes(currentStudentNo)) {
                                        //Continue
                                    }
                                    else {
                                        $.alert("Please upload your own Grade sheet.");
                                        return false;
                                    }
                                }
                            }
                            //Get Sems
                            var sem = gradeSheetContent.getElementsByClassName("regu");
                            var content = "";
                            var gradesContent = document.getElementById("gradesContent");
                            gradesContent.innerHTML = "";
                            for (var i = 4; i < sem.length; i++) {
                                //Add Sem Year And Sem
                                var semYearAndSem = sem[i].parentNode.parentNode.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling;
                                var semYear = strip(semYearAndSem.getElementsByTagName("td")[1].innerHTML);
                                var semSem = strip(semYearAndSem.getElementsByTagName("td")[3].innerHTML);

                                var semContainer = document.createElement("div");
                                semContainer.innerHTML = "<div class='row'><div class='col-md-6'><div class='form-group'><label>Year</label><input class='form-control' value='" + semYear + "' disabled></div></div><div class='col-md-6'><div class='form-group'><label>Semester</label><input class='form-control' value='" + semSem + "' disabled></div></div></div>";
                                semContainer.className = 'semContainer';
                                //Create Sem Table
                                var tbl = document.createElement("table");
                                tbl.className = "table table-striped";
                                //Add Header
                                var headerRow = tbl.insertRow(-1);
                                headerRow.innerHTML = "<th>Subject Code</th><th>Subject Name</th><th>Section</th><th>Final Grade</th><th>Final Grade Status</th><th>Found in Curr</th>";
                                //Get All Subject Row
                                var subj = sem[i].getElementsByTagName("tr");
                                for (var j = 0; j < subj.length; j++) {
                                    if (subj[j].className != "tableheader") {
                                        //Create Subject Row
                                        var row = tbl.insertRow(-1);
                                        //Create SubjCode Cell
                                        var subjCode = row.insertCell(-1);
                                        subjCode.innerHTML = subj[j].cells[1].innerHTML;
                                        var subjName = row.insertCell(-1);
                                        subjName.innerHTML = subj[j].cells[2].childNodes[0].innerHTML;
                                        var subjSec = row.insertCell(-1);
                                        subjSec.className = "subjSec";
                                        subjSec.innerHTML = subj[j].cells[5].innerHTML;
                                        var subjFGrade = row.insertCell(-1);
                                        subjFGrade.innerHTML = subj[j].cells[6].innerHTML;
                                        var subjFGradeStat = row.insertCell(-1);
                                        subjFGradeStat.innerHTML = subj[j].cells[7].innerHTML;
                                        var subjFound = row.insertCell(-1);
                                        if (checkGradeOnCurr(currentCurr + " " + subjCode.innerHTML, currentCurr) == true) {
                                            row.style.background = "#00A65A";
                                            row.style.color = "#FFFFFF";
                                            subjFound.className = 'text-center';
                                            subjFound.innerHTML = "<i class='fa fa-check'></i>";
                                        }
                                        else {
                                            row.style.background = "#686868";
                                            row.style.color = "#FFFFFF";
                                            subjFound.className = 'text-center UNVALIDATED';
                                            subjFound.innerHTML = "<button class='btn btn-default' onclick='validateSubjCurr(this)'>Validate</button>";
                                        }

                                        if (subjFGradeStat.innerHTML == "F") {
                                            row.style.background = "#FF0000";
                                            row.style.color = "#FFFFFF";
                                        }
                                        //If Theres subject with no grade
                                        if (subjFGradeStat.innerHTML == "") {
                                            tbl.innerHTML = "<div class='text-center'><h3><i>Grades on this Semester is not Complete</i></h3></div>";
                                            break;
                                        }
                                    }
                                }
                                semContainer.appendChild(tbl);
                                gradesContent.appendChild(semContainer);
                                var hr = document.createElement("hr");
                                gradesContent.appendChild(hr);
                            }
                        }
                    }


                    if (index == 2) {
                        //VALIDATE COLUMNS
                        var columnsToValidate = document.getElementById("tab2").getElementsByTagName("td");
                        for (var i = 0; i < columnsToValidate.length; i++) {
                            if (columnsToValidate[i].className == "text-center UNVALIDATED") {
                                //$.alert("Some subjects are still not validated.");
                                columnsToValidate[i].childNodes[0].focus();
                                columnsToValidate[i].parentNode.className = "animated shake";
                                setTimeout(function () { columnsToValidate[i].parentNode.className = ""; }, 1000);
                                return false;
                            }
                        }
                        //GET SEMESTERS
                        var semesters = document.getElementsByClassName('semContainer');
                        var SQLInsert = "BEGIN TRAN BEGIN TRY  ";
                        SQLInsert += "DELETE FROM tblGrades WHERE studNo = '" + currentStudentNo + "';";
                        for (var i = 0; i < semesters.length; i++) {
                            var tbl = semesters[i].getElementsByTagName("table");
                            if (tbl[0].innerHTML.includes("Grades on this Semester is not Complete") == false) {
                                var year = semesters[i].childNodes[0].childNodes[0].childNodes[0].childNodes[1].value;
                                var currentSem = semesters[i].childNodes[0].childNodes[1].childNodes[0].childNodes[1].value;
                                var rows = tbl[0].rows;
                                //Get VALUES 
                                for (var j = 1; j < rows.length; j++) {
                                    var insertSubjID = getEquivSubjID(rows[j].getElementsByTagName("td")[0].innerHTML, currentCurr);
                                    //alert(rows[j].getElementsByTagName("td")[0].innerHTML);
                                    SQLInsert += "INSERT INTO tblGrades VALUES('" + currentStudentNo + "','" + insertSubjID + "','" + rows[j].getElementsByTagName("td")[3].innerHTML + "','" + rows[j].getElementsByTagName("td")[4].innerHTML + "','" + year + "','" + currentSem + "','" + rows[j].getElementsByTagName("td")[2].innerHTML + "');";
                                }
                            }
                        }
                        currentSec = document.getElementsByClassName("subjSec")[0].innerHTML;
                        SQLInsert += "UPDATE tblStud SET studSec = '" + currentSec + "' WHERE studNo = '" + currentStudentNo + "'";
                        SQLInsert += "UPDATE tblStud SET studYear = (select count(distinct gradesYear)  from tblGrades where studNo = '" + currentStudentNo + "') WHERE studNo = '" + currentStudentNo + "'";
                        SQLInsert += "	COMMIT END TRY BEGIN CATCH SELECT ERROR_MESSAGE() AS ErrorMessage; ROLLBACK END CATCH";
                        console.log(SQLInsert);
                        if (executeToSQL(SQLInsert) == true) {
                            //Advice Tab
                            var tab3 = document.getElementById("tab3");
                            tab3.innerHTML = "";

                            ////////////////////////////// CHECK LIST OF ADVICE
                            $.ajax({
                                type: 'POST',
                                url: 'studentHome.aspx/universalQuery',
                                async: false,
                                data: JSON.stringify({ SQL: "Select * From tblAdvice ;" }),
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
                                        for (var i = 0; i < XMLrows.length; i++) {
                                            //IF Advice matched on students grade show advice
                                            if (checkAdviceTriggers(XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML) == true) {
                                                showAdviceSteps(XMLrows[i].getElementsByTagName("adviceName")[0].innerHTML);
                                            }
                                        }
                                    }
                                },
                                failure: function (response) {
                                    alert(response.d);
                                }
                            });


                            //////////////////////////////Check For Returnee
                            //if (checkReturnee(currentStudentNo) == true) {
                            //    var returneeContainer = document.createElement("div");
                            //    var stepsList = getAdviceStep('Returnee / Readmission');
                            //    var stepsContent = "";
                            //    for (var i = 0; i < stepsList.length; i++) {
                            //        stepsContent += "<li>" + stepsList[i] + "</li>";
                            //    }
                            //    returneeContainer.innerHTML = "<div class='box box-solid'>" +
                            //        "<div class='box-header with-border'>" +
                            //        "<i class='fa fa-file-o'></i>" +
                            //        "<h3 class='box-title'>Returnee / Readmission</h3>" +
                            //        "</div>" +
                            //        "<div class='box-body'>" +
                            //        "<ol>" + stepsContent + "</ol>" +
                            //        "<hr style='height: 1px; background-color: #C1C1C1; border: none'>" +
                            //        "<p>Chairpersons Note:</p>" +
                            //        "<p>" + getNotes('Returnee / Readmission', currentCourse).replace(/&lt;br&gt;/g, '') + "</p>" +
                            //        "</div>" +
                            //        "</div>";
                            //    tab3.appendChild(returneeContainer);
                            //    var SQL = "INSERT INTO tblAdviceList VALUES('" + currentStudentNo + "','Returnee / Readmission',null,0);";
                            //    //DONT ADD TO SQL IF EXIST
                            //    if (searchStudAdvList(currentStudentNo, 'Returnee / Readmission') == false) {
                            //        if (updateAndInsert(SQL) == true) {
                            //            ///SUCCESS
                            //        }
                            //        else {
                            //            //FAILED
                            //        }
                            //    }
                            //}


                            ///////////////////////////////////Check For Scholastic Delinquent

                            //if (getFailedSubj(currentStudentNo).length >= 4) {
                            //    var scholDeContainer = document.createElement("div");
                            //    var stepsList = getAdviceStep('Scholastic Delinquent');
                            //    var stepsContent = "";
                            //    for (var i = 0; i < stepsList.length; i++) {
                            //        stepsContent += "<li>" + stepsList[i] + "</li>";
                            //    }
                            //    scholDeContainer.innerHTML = "<div class='box box-solid'>" +
                            //        "<div class='box-header with-border'>" +
                            //        "<i class='fa fa-file-o'></i>" +
                            //        "<h3 class='box-title'>Scholastic Delinquency</h3>" +
                            //        "</div>" +
                            //        "<div class='box-body'>" +
                            //        "<ol>" + stepsContent + "<ol>" +
                            //        "<hr style='height: 1px; background-color: #C1C1C1; border: none'>" +
                            //        "<p>Chairpersons Note:</p>" +
                            //        "<p>" + getNotes('Scholastic Delinquent', currentCourse).replace(/&lt;br&gt;/g, '') + "</p>" +
                            //        "</div>" +
                            //        "</div>";
                            //    tab3.appendChild(scholDeContainer);
                            //    var SQL = "DELETE FROM tblAdviceList WHERE advType = 'Scholastic Delinquent' AND studNo = '" + currentStudentNo + "'; INSERT INTO tblAdviceList VALUES('" + currentStudentNo + "','Scholastic Delinquent',null,0);";
                            //    //DONT ADD IF EXIST
                            //    if (searchStudAdvList(currentStudentNo, 'Scholastic Delinquent') == false) {
                            //        if (updateAndInsert(SQL) == true) {
                            //            ///SUCCESS
                            //        }
                            //        else {
                            //            //FAILED
                            //        }
                            //    }
                            //}


                            ///////////////////////////////Check For Petitions
                            //if (getFailedSubj(currentStudentNo).length > 0) {
                            //    var subjs = getFailedSubj(currentStudentNo);
                            //    petitionList = document.createElement("ul");
                            //    petitionList.className = 'product-list product-list-in-box';
                            //    for (var i = 0; i < subjs.length; i++) {
                            //        petitionList.innerHTML += "<li class='item'>" +
                            //            "<div class='product-info' style='margin-left:0'>" +
                            //            "<a class='product-title'>" + getEquivSubjCode(subjs[i]) +
                            //            "<button class='btn btn-success pull-right' onclick='enlistPetition(this,currentStudentNo,currentCourse)' value='" + subjs[i] + "'>Enlist</button></a>" +
                            //            "</div>" +
                            //            "</li>";
                            //    }
                            //    //Generate Subjects to Petitions
                            //    var petitionContainer = document.createElement("div");
                            //    petitionContainer.innerHTML = "<div class='box box-solid'>" +
                            //        "<div class='box-header with-border'>" +
                            //        "<i class='fa fa-file-o'></i>" +
                            //        "<h3 class='box-title'>Subjects to Petition</h3>" +
                            //        "</div>" +
                            //        "<div class='box-body'>" +
                            //        "<ul class='products-list product-list-in-box'>" +
                            //        petitionList.innerHTML +
                            //        "</ul>" +
                            //        "</div>" +
                            //        "</div>";
                            //    tab3.appendChild(petitionContainer);

                            //}

                            if (tab3.innerHTML == "") {
                                tab3.innerHTML = "<div class='text-center'><br><br><i class='fa fa-info-circle fa-5x'></i><p>No advice available, but you can check your Grades Prediction</p></div>";
                            }
                        }
                        else {
                            $.alert("Error Occured please try again");
                            return false;
                        }
                    }

                    if (index == 3) {
                        tab4.innerHTML = "";
                        //GET STUDENTS LATEST SEMESTER
                        var petitionContainer = document.createElement("div");
                        petitionContainer.innerHTML = "<div class='box box-solid'>" +
                            "<div class='box-header with-border'>" +
                            "<i class='fa fa-file-o'></i>" +
                            "<h3 class='box-title'>Subjects to Petition</h3>" +
                            "</div>" +
                            "<div class='box-body bodyPetition'>" +
                            "<ul class='products-list product-list-in-box'>" +
                            "</ul>" +
                            "</div>" +
                            "</div>";


                        //CREATE PRIORITY CONTAINERS
                        var extremePrioCont = document.createElement("div");
                        extremePrioCont.innerHTML = "<div class='box box-danger box-solid'>" +
                            "<div class='box-header with-border'>" +
                            "<h3 class='box-title'>Subjects to Petition (High Priority)</h3>" +
                            "<div class='box-tools pull-right'>" +
                            "<button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i>" +
                            "</button>" +
                            "</div>" +
                            "</div>" +
                            "<div class='box-body bodyHigh'>" +
                            "</div>" +
                            "</div>";

                        var mediumPrioCont = document.createElement("div");
                        mediumPrioCont.innerHTML = "<div class='box box-warning box-solid'>" +
                            "<div class='box-header with-border'>" +
                            "<h3 class='box-title'>Subjects to Petition (Medium Priority)</h3>" +
                            "<div class='box-tools pull-right'>" +
                            "<button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i>" +
                            "</button>" +
                            "</div>" +
                            "</div>" +
                            "<div class='box-body bodyMed'>" +
                            "</div><div class='overlay'><i class='fa fa-lock'></i></div>" +
                            "</div>";

                        var lowPrioCont = document.createElement("div");
                        lowPrioCont.innerHTML = "<div class='box box-success box-solid'>" +
                            "<div class='box-header with-border'>" +
                            "<h3 class='box-title'>Subjects to Petition (Low Priority)</h3>" +
                            "<div class='box-tools pull-right'>" +
                            "<button type='button' class='btn btn-box-tool' data-widget='collapse'><i class='fa fa-minus'></i>" +
                            "</button>" +
                            "</div>" +
                            "</div>" +
                            "<div class='box-body bodyLow'>" +
                            "</div><div class='overlay'><i class='fa fa-lock'></i></div>" +
                            "</div>";

                        //CHECK FAILING GRADES
                        var failedSubjs = getFailedSubj(currentStudentNo);

                        for (var i = 0; i < failedSubjs.length; i++) {
                            var highFlag = 0;
                            var medFlag = 0;
                            var lowFlag = 0;
                            //CREATE CONTAINERS
                            if (countPostReq(failedSubjs[i]) >= 2 && highFlag == 0) {
                                $(petitionContainer).find(".bodyPetition").append(extremePrioCont);
                                highFlag = 1;
                            }
                            else if (countPostReq(failedSubjs[i]) == 1 && medFlag == 0) {
                                $(petitionContainer).find(".bodyPetition").append(mediumPrioCont);
                                medFlag = 1;
                            }
                            else if (countPostReq(failedSubjs[i]) == 0 && lowFlag == 0) {
                                $(petitionContainer).find(".bodyPetition").append(lowPrioCont);
                                lowFlag = 1;
                            }

                            //ADD SUBJECT TO CONTAINERS
                            if (countPostReq(failedSubjs[i]) >= 2) {
                                $(extremePrioCont).find(".bodyHigh").append("<div class='small-box bg-red'>" +
                                    "<div class='inner'>" +
                                    "<h3>" + getEquivSubjCode(failedSubjs[i]) + "</h3>" +
                                    "<p>" + getEquivSubjName(failedSubjs[i]) + "</p>" +
                                    "</div>" +
                                    "<div class='icon'>" +
                                    "<i class='ion ion-person-add'></i>" +
                                    "</div>" +
                                    "<a href='javascript:void(0)' onclick=\"enlistPetition(this,'" + failedSubjs[i] + "','" + currentStudentNo + "','" + currentCourse + "')\" class='small-box-footer'>" +
                                    "Enlist Petition <i class='fa fa-arrow-circle-right'></i>" +
                                    "</a>" +
                                    "</div></div>");
                            }
                            else if (countPostReq(failedSubjs[i]) == 1) {
                                $(mediumPrioCont).find(".bodyMed").append("<div class='small-box bg-yellow'>" +
                                    "<div class='inner'>" +
                                    "<h3>" + getEquivSubjCode(failedSubjs[i]) + "</h3>" +
                                    "<p>" + getEquivSubjName(failedSubjs[i]) + "</p>" +
                                    "</div>" +
                                    "<div class='icon'>" +
                                    "<i class='ion ion-person-add'></i>" +
                                    "</div>" +
                                    "<a href='javascript:void(0)' onclick=\"enlistPetition(this,'" + failedSubjs[i] + "','" + currentStudentNo + "','" + currentCourse + "')\" class='small-box-footer'>" +
                                    "Enlist Petition <i class='fa fa-arrow-circle-right'></i>" +
                                    "</a>" +
                                    "</div>");
                            }
                            else if (countPostReq(failedSubjs[i]) == 0) {
                                $(lowPrioCont).find(".bodyLow").append("<div class='small-box bg-green'>" +
                                    "<div class='inner'>" +
                                    "<h3>" + getEquivSubjCode(failedSubjs[i]) + "</h3>" +
                                    "<p>" + getEquivSubjName(failedSubjs[i]) + "</p>" +
                                    "</div>" +
                                    "<div class='icon'>" +
                                    "<i class='ion ion-person-add'></i>" +
                                    "</div>" +
                                    "<a href='javascript:void(0)' onclick=\"enlistPetition(this,'" + failedSubjs[i] + "','" + currentStudentNo + "','" + currentCourse + "')\" class='small-box-footer'>" +
                                    "Enlist Petition <i class='fa fa-arrow-circle-right'></i>" +
                                    "</a>" +
                                    "</div>");
                            }

                        }


                        tab4.appendChild(petitionContainer);
                    }

                    // Set the name for the next tab


                },
                onFinish: function (tab, navigation, index) {
                    window.location.href = "studentHome.aspx";
                },
                onTabShow: function (tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index + 1;
                    var $percent = ($current / $total) * 100;
                    $('#rootwizard .progress-bar').css({ width: $percent + '%' });
                },
                onTabClick: function (tab, navigation, index) {
                    return false;
                }
            });
        });

        function checkAdviceTriggers(adviceName) {
            var matched = true;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "Select * From tblAdviceTrigger where adviceName = '" + adviceName + "';" }),
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
                        for (var i = 0; i < XMLrows.length; i++) {
                            //Check Subj Failed Percentage
                            if (XMLrows[i].getElementsByTagName("trigName")[0].innerHTML == "Subject Failed") {
                                if (subjFailed(currentStudentNo, XMLrows[0].getElementsByTagName("param1")[0].innerHTML, XMLrows[0].getElementsByTagName("param2")[0].innerHTML) == false) {
                                    matched = false;
                                    break;
                                }
                            }
                            else if (XMLrows[i].getElementsByTagName("trigName")[0].innerHTML == "Returnee") {
                                if (returnee(currentStudentNo) == false) {
                                    matched = false;
                                    break;
                                }
                            }

                            else if (XMLrows[i].getElementsByTagName("trigName")[0].innerHTML == "GPA") {
                                if (gpa(currentStudentNo, XMLrows[i].getElementsByTagName("param1")[0].innerHTML, XMLrows[i].getElementsByTagName("param2")[0].innerHTML) == false) {
                                    matched = false;
                                    break;
                                }
                            }

                            else if (XMLrows[i].getElementsByTagName("trigName")[0].innerHTML == "Graduating") {
                                if (grad(currentStudentNo, currentCurr) == false) {
                                    matched = false;
                                    break;
                                }
                            }
                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return matched;
        }

        function showAdviceSteps(adviceName) {
            //Show steps
            var advContainer = document.createElement("div");
            var stepsList = getAdviceStep(adviceName);
            var stepsContent = "";
            for (var i = 0; i < stepsList.length; i++) {
                stepsContent += "<li>" + stepsList[i] + "</li>";
            }
            advContainer.innerHTML = "<div class='box box-solid'>" +
                "<div class='box-header with-border'>" +
                "<i class='fa fa-file-o'></i>" +
                "<h3 class='box-title'>" + adviceName + "</h3>" +
                "</div>" +
                "<div class='box-body'>" +
                "<ol>" + stepsContent + "<ol>" +
                "<hr style='height: 1px; background-color: #C1C1C1; border: none'>" +
                "<p>Chairpersons Note:</p>" +
                "<p>" + getNotes(adviceName, currentCourse).replace(/&lt;br&gt;/g, '') + "</p>" +
                "</div>" +
                "</div>";
            tab3.appendChild(advContainer);
            var currDate = new Date().toISOString().slice(0, 19).replace('T', ' ');
            var SQL = "DELETE FROM tblAdviceList WHERE advType = '" + adviceName + "' AND studNo = '" + currentStudentNo + "'; INSERT INTO tblAdviceList VALUES('" + currentStudentNo + "','" + adviceName + "',null,0); INSERT INTO tblRptAdvice VALUES('" + currentStudentNo + "','" + adviceName + "','" + currDate + "')";
            //DONT ADD IF EXIST
            if (searchStudAdvList(currentStudentNo, adviceName) == false) {
                if (updateAndInsert(SQL) == true) {
                    ///SUCCESS
                }
                else {
                    //FAILED
                }
            }
        }

        function searchStudAdvList(studno, adviceName) {
            var found = false;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "Select * From tblAdviceList where studNo = '" + studno + "' AND advType = '" + adviceName + "';" }),
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
                        found = true;
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return found;
        }

        function executeToSQL(insertString) {
            var OK;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/executeToSQL',
                data: JSON.stringify({
                    sqlString: insertString,
                }),
                async: false,
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    if (response.d == "ok") {
                        OK = true;
                    }
                    else
                        OK = false;
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
            return OK;
        }

        function getEquivSubjID(subjCode, curr) {
            var equivSubjID = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/getEquivSubjID',
                async: false,
                data: JSON.stringify({ subjCode: subjCode, currCode: curr }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    if (xml.getElementsByTagName("subjid")[0] != null) {
                        equivSubjID = xml.getElementsByTagName("subjid")[0].innerHTML;
                    }
                    else {
                        //
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return equivSubjID;
        }

        function getEquivSubjCode(subjID) {
            var equivSubjCode = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/getEquivSubjCode',
                async: false,
                data: JSON.stringify({ subjID: subjID }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    if (xml.getElementsByTagName("subjcode")[0] != null) {
                        equivSubjCode = xml.getElementsByTagName("subjcode")[0].innerHTML;
                    }
                    else {
                        //
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return equivSubjCode;
        }

        function getEquivSubjName(subjID) {
            var equivName = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/getEquivSubjCode',
                async: false,
                data: JSON.stringify({ subjID: subjID }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    if (xml.getElementsByTagName("subjname")[0] != null) {
                        equivName = xml.getElementsByTagName("subjname")[0].innerHTML;
                    }
                    else {
                        //
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return equivName;
        }

        function checkGradeOnCurr(subjID, curr) {
            var found;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/checkGradeOnCurr',
                async: false,
                data: JSON.stringify({ subjID: subjID, currCode: curr }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    if (xml.getElementsByTagName("subjid")[0] != null) {
                        found = true;
                    }
                    else {
                        found = false
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return found;
        }

        function validateSubjCurr(elem) {
            row = elem.parentNode.parentNode;
            $.confirm({
                title: 'Validate Subject Code <h6>This subject code was not found in your curriculum</h6>',
                icon: 'fa fa-search',
                type: 'orange',
                content: "<div class='form-group'>" +
                    "<label>Select Equivalent Subject Code</label>" +
                    "<select class='form-control selectSubj'>" +
                    "</select>" +
                    "</div>",
                buttons: {
                    Confirm: {
                        btnClass: 'btn btn-success',
                        action: function () {
                            //Change Subject Code
                            row.getElementsByTagName("td")[0].innerHTML = this.$content.find('.selectSubj').val();
                            row.getElementsByTagName("td")[5].className = "text-center";
                            row.style.background = "#00A65A";
                            elem.className = "btn btn-success";
                        }
                    },
                    cancel: {}
                },
                onContentReady: function () {
                    $.ajax({
                        type: 'POST',
                        url: 'studentHome.aspx/getEquivSubj',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ currCode: currentCurr }),
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
                                var selectCourse = document.getElementsByClassName("selectSubj")[0];
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

        //Removes HTML formatting
        function strip(html) {
            var tmp = document.createElement("DIV");
            tmp.innerHTML = html;
            return tmp.textContent || tmp.innerText || "";
        }

        //On Upload Grade
        document.getElementById("gradeSheet").onchange = function (evt) {
            gradeStr = "";
            if (!window.FileReader) return; // Browser is not compatible
            //debugger;
            var reader = new FileReader();

            reader.onload = function (evt) {
                if (evt.target.readyState != 2) return;
                if (evt.target.error) {
                    alert('Error while reading file');
                    return;
                }

                filecontent = evt.target.result;

                gradeStr = evt.target.result;

            };

            reader.readAsText(evt.target.files[0]);
        };

        function updateAndInsert(SQLstring) {
            var success;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/updateAndInsert',
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

        function changeProfileImage(elem) {
            elem.parentNode.parentNode.parentNode.style.display = "none";
            document.getElementById("uploadPictureContainer").style.display = "block";
        }

        function uploadImage(elem) {
            var uploadBtn = document.createElement("input");
            uploadBtn.type = 'file';
            uploadBtn.accept = "image/*";
            uploadBtn.click();

            var croppieUpload;
            uploadBtn.onclick = function () {
                var CroppieContainer = document.getElementsByClassName("CroppieContainer")[0];
                $(CroppieContainer).croppie('destroy');
                CroppieContainer.innerHTML = "";
            }
            //Trigger The Upload
            uploadBtn.onchange = function (e) {
                var CroppieContainer = document.getElementsByClassName("CroppieContainer")[0];
                $(CroppieContainer).croppie('destroy');
                CroppieContainer.innerHTML = "";
                var files = e.target.files;
                var reader = new FileReader();
                reader.readAsDataURL(files[0]);
                reader.onload = function () {
                    croppieUpload = $(CroppieContainer).croppie({
                        viewport: {
                            width: 200,
                            height: 200,
                            type: 'circle'
                        },
                        boundary: {
                            width: 300,
                            height: 300
                        },
                        url: decodeURI(reader.result),
                    });

                };
                reader.onerror = function (error) {
                    console.log('Error: ', error);
                };
            }
            //Ok Upload
            var confirmImage = document.getElementsByClassName("confirmImage")[0];
            confirmImage.onclick = function () {
                //Validate if Has Image
                if (confirmImage.parentNode.parentNode.childNodes[1].outerHTML.includes("cr-boundary")) {
                    croppieUpload.croppie('result', 'base64').then(function (base64) {
                        console.log(base64);
                        $.ajax({
                            type: 'POST',
                            url: 'studentHome.aspx/updatePic',
                            async: false,
                            data: JSON.stringify({ base64: base64, studNo: currentStudentNo }),
                            contentType: 'application/json; charset=utf-8',
                            dataType: 'json',
                            success: function (response) { // NO RETURN ON UPDATE     

                            },
                            failure: function (response) {
                                alert(response.d);
                            }
                        });
                        elem.parentNode.parentNode.parentNode.style.display = "None";
                        window.location.href = "studentHome.aspx";
                    });
                }
                else {
                    $.alert("Please Upload an Image");
                }

            }

        }

        //Change Profile
        function changeProfile(elem) {
            var studFirst;
            var studMiddle;
            var studLast;
            var studContact;
            var studEmail;
            var studCurrPassword;
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/loadProfile',
                async: false,
                data: JSON.stringify({ studNo: currentStudentNo }),
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

                    studFirst = XMLrows[0].getElementsByTagName("studFirst")[0].innerHTML;
                    studMiddle = XMLrows[0].getElementsByTagName("studMiddle")[0].innerHTML;
                    studLast = XMLrows[0].getElementsByTagName("studLast")[0].innerHTML;
                    studContact = XMLrows[0].getElementsByTagName("studContact")[0].innerHTML;
                    studEmail = XMLrows[0].getElementsByTagName("studEmail")[0].innerHTML;
                    studCurrPassword = XMLrows[0].getElementsByTagName("studPass")[0].innerHTML;
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            $.confirm({
                title: "Edit Profile",
                icon: "fa fa-edit",
                type: "purple",
                columnClass: 'large',
                content: "<div class='row' style='width: 100%'><div class='col-md-6'><div class='form-group'><label>First Name</label><input class='form-control studFirst' type='text' value='" + studFirst + "'></div>" +
                    "<div class='form-group'><label>Middle Name</label><input class='form-control studMiddle' type='text' value='" + studMiddle + "'></div>" +
                    "<div class='form-group'><label>Last Name</label><input class='form-control studLast' type='text' value='" + studLast + "'></div>" +
                    "<div class='form-group'><label>Contact</label><input class='form-control studContact' type='text' value='" + studContact + "'></div>" +
                    "<div class='form-group'><label>Email</label><input class='form-control studEmail' type='text' value='" + studEmail + "'></div></div>" +
                    "<div class='col-md-6'><div class='form-group'><label>Current Password</label><input class='form-control studCurrPass' type='password' value=''></div>" +
                    "<div class='form-group'><label>New Password</label><input class='form-control studNewPass' type='password' value=''></div>" +
                    "<div class='form-group'><label>Confirm New Password</label><input class='form-control studConfNewPass' type='password' value=''></div></div></div>",
                buttons: {
                    confirm: {
                        btnClass: 'btn bg-purple',
                        action: function () {
                            //Update Info
                            //Get Values
                            var editStudFirst = this.$content.find(".studFirst").val();
                            var editStudMiddle = this.$content.find(".studMiddle").val();
                            var editStudLast = this.$content.find(".studLast").val();
                            var editStudContact = this.$content.find(".studContact").val();
                            var editStudEmail = this.$content.find(".studEmail").val();

                            var editStudCurrPass = this.$content.find(".studCurrPass").val();
                            var editStudNewPass = this.$content.find(".studNewPass").val();
                            var editStudConfNewPass = this.$content.find(".studConfNewPass").val();


                            if (editStudCurrPass.length > 0) {
                                //Enable Editing
                                if (editStudNewPass.length > 0 && editStudNewPass != "") {
                                    if (editStudNewPass == editStudConfNewPass) {
                                        //New Password Match with Confirm
                                        if (editStudCurrPass == studCurrPassword) {
                                            //Edit With Changing Password
                                            var updateSQL = ("UPDATE tblStud SET studPass = '" + editStudNewPass + "', studFirst = '" + editStudFirst + "', studMiddle = '" + editStudMiddle + "', studLast = '" + editStudLast + "', studContact = '" + editStudContact + "', studEmail ='" + editStudEmail + "' WHERE studNo = '" + currentStudentNo + "'");

                                            if (updateAndInsert(updateSQL) == true) {
                                                $.alert("Student info update success");
                                                setTimeout(function () { window.location.href = 'studentHome.aspx'; }, 1500);
                                            }
                                            else {
                                                $.alert("Student info update failed");
                                            }
                                        }
                                        else {
                                            $.alert("Confirm Password Incorrect");
                                            return false;
                                        }
                                    }
                                    else {
                                        $.alert("Confirm Password does not match");
                                        return false
                                    }
                                }
                                else {
                                    $.alert("New password must not be blank");
                                    return false;
                                }
                            }
                            else {
                                //Edit Without Changing Password
                                var updateSQL = ("UPDATE tblStud SET studFirst = '" + editStudFirst + "', studMiddle = '" + editStudMiddle + "', studLast = '" + editStudLast + "', studContact = '" + editStudContact + "', studEmail ='" + editStudEmail + "' WHERE studNo = '" + currentStudentNo + "'");

                                if (updateAndInsert(updateSQL) == true) {
                                    $.alert("Student info update success");
                                    setTimeout(function () { window.location.href = 'studentHome.aspx'; }, 1500);
                                }
                                else {
                                    $.alert("Student info update failed");
                                }
                            }

                        },
                    },
                    cancel: {}
                }
            });
        }

        var readAnnounSQL = "";
        var readAnnounFlag = false;

        function viewAnnoun() {
            var viewAnnoun = document.getElementById("viewAnnoun");
            viewAnnoun.innerHTML = "";
            $.ajax({
                type: 'POST',
                url: 'studentHome.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT CAST(CASE WHEN announceCode NOT IN (SELECT announceCode FROM tblAnnounceCheck WHERE studNo = '" + currentStudentNo + "')THEN 0 ELSE 1 END AS int) as seen, * FROM tblAnnounce WHERE courseCode = '" + currentCourse + "' order by seen asc, announceDate desc" }),
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
                        var countUnread = 0;
                        for (var i = 0; i < XMLrows.length; i++) {
                            //CONVERT TIME MINUTES
                            var announDate = new Date($(XMLrows[i]).find('announceDate').html());
                            var h = announDate.getHours();
                            var m = announDate.getMinutes();

                            if ($(XMLrows[i]).find('seen').html() == '0') {
                                viewAnnoun.innerHTML += "<li style='background: #EDF2FA'>" +
                                    "<a href='#'>" +
                                    "<div class='pull-left'>" +
                                    "<img src='../../dist/img/user2-160x160.jpg' class='img-circle' alt='User Image'>" +
                                    "</div>" +
                                    "<h4>" +
                                    $(XMLrows[i]).find("announceSubj").html() +
                                    "<small><i class='fa fa-clock-o'></i>" + h + ":" + m + "</small>" +
                                    "</h4>" +
                                    "<p>" + $(XMLrows[i]).find('announceDesc').html() + "</p>" +
                                    "</a>" +
                                    "</li>";
                                readAnnounSQL += "INSERT INTO tblAnnounceCheck(announceCode,studNo) VALUES (" + $(XMLrows[i]).find("announceCode").html() + ",'" + currentStudentNo + "') ";

                                countUnread++;
                            }
                            else {
                                viewAnnoun.innerHTML += "<li>" +
                                    "<a href='#'>" +
                                    "<div class='pull-left'>" +
                                    "<img src='../../dist/img/user2-160x160.jpg' class='img-circle' alt='User Image'>" +
                                    "</div>" +
                                    "<h4>" +
                                    $(XMLrows[i]).find("announceSubj").html() +
                                    "<small><i class='fa fa-clock-o'></i>" + h + ":" + m + "</small>" +
                                    "</h4>" +
                                    "<p>" + $(XMLrows[i]).find('announceDesc').html() + "</p>" +
                                    "</a>" +
                                    "</li>";
                            }
                        }
                        if (countUnread > 0) {
                            $(announNum).html(countUnread);
                        }
                    }
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        }

        function readAnnoun() {
            if (readAnnounFlag == false) {
                //TANGGALIN ANG NUMBER SA ANNOUN
                $(announNum).html("");
                //INSERT UNG MGA D PA NABABASA
                if (updateAndInsert(readAnnounSQL) == true) {
                    //SUCCESS
                }
                readAnnounFlag = true;
            }
            else {
                //NABASA NA
            }
        }

        function viewAllGrades() {
            $.confirm({
                icon: 'fa fa-list-ul',
                title: "View Grades",
                content: "<div style='width: 800px; margin: auto;' class='pad'><canvas id='myChart' style='background: white;'></canvas></div>",
                type: "purple",
                columnClass: "col-lg-12",
                buttons: {
                    close: {}
                },
                onOpenBefore: function () {
                    //////////GET LABELS
                    var chartLabels = [];
                    var chartValues = [];
                    $.ajax({
                        type: 'POST',
                        url: 'adminStudentView.aspx/universalQuery',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ SQL: "select distinct gradesYear,gradesSem,ROUND(AVG(CAST(tblGrades.gradesGrade AS DECIMAL(3,2))),2) as average from tblGrades WHERE studNo = '" + currentStudentNo + "' AND gradesGrade LIKE '%[0-9]%' GROUP BY gradesYear,gradesSem ORDER BY gradesYear asc, gradesSem asc;" }),
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
                                //PUSH LABELS
                                for (var i = 0; i < XMLrows.length; i++) {
                                    chartLabels.push($(XMLrows[i]).find("gradesYear").html() + " " + $(XMLrows[i]).find("gradesSem").html());
                                    chartValues.push($(XMLrows[i]).find("average").html().substring(0, 4));
                                }
                            }
                        },
                    });
                    //////////GENERATE PERFORMANCE CHART
                    var ctx = document.getElementById('myChart').getContext('2d');

                    var myChart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: chartLabels,
                            datasets: [{
                                label: "Averages",
                                backgroundColor: 'rgba(255, 99, 132,0)',
                                borderColor: '#605CA8',
                                data: chartValues,
                            }]
                        },
                        options: {
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        reverse: true,
                                        suggestedMin: 1,
                                        stepSize: .5
                                    }
                                }],
                                xAxes: [{
                                    ticks: {
                                        reverse: true,
                                        stepSize: 1
                                    }
                                }]
                            }
                        }
                    });

                    var outerThis = this;
                    ////////////////////////////////GET ALL GRADES
                    $.ajax({
                        type: 'POST',
                        url: 'adminStudentView.aspx/universalQuery',
                        contentType: 'application/json; charset=utf-8',
                        data: JSON.stringify({ SQL: "Select *  from tblSubj Where currCode = '" + currentCurr + "' order by subjYear desc,subjSem desc" }),
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
                                var grade = getSubjGrade(currentStudentNo, XMLrows[i].getElementsByTagName("subjID")[0].innerHTML);
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
    </script>
</body>
</html>

