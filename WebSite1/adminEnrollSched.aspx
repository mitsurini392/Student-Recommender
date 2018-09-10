<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminEnrollSched.aspx.cs" Inherits="adminEnrollSched" %>

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
                        <li><a href="adminSchedOffering.aspx"><i class="fa fa-clock-o"></i><span>Schedule Offering</span></a></li>
                        <li class="active"><a href="#"><i class="fa fa-calendar-plus-o"></i><span>Event Date</span></a></li>   
                        <li><a href="adminPetitionList.aspx"><i class="fa fa-list"></i><span>Petition Subject</span></a></li>
                        <br />
                        <li><a href="adminAcctSettings.aspx"><i class="fa fa-gear"></i><span>Account Settings</span></a></li>
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
                <h1 style="font-family: 'programme_light'">Event Date
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-5">
                        <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title">Event List</h3>
                            </div>
                            <div class="box-body">
                                <table class="table table-striped" id="eventTable">
                                    <tr>
                                        <th>Event Date</th>
                                        <th>Event Name</th>
                                        <th>Actions</th>
                                    </tr>
                                </table>
                                <button class="btn btn-success pull-right margin" onclick="addEventDialog()">Add Event</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="box box-solid">
                            <div id="calendar"></div>
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
        //Declare Current Course
        var currentCourseCode;

        document.getElementsByTagName("body")[0].onload = function () {
            currentAdminUser = '<%= Session["adminUser"].ToString() %>';
            currentCourseCode = '<%= Session["adminCourse"].ToString() %>';
            loadProfile(currentAdminUser);
            //Initialized Calendar
            loadCalendar();
            //LoadEventList
            loadEventlist(currentCourseCode);
        }

        function loadProfile(adminUsername) {
            $.ajax({
                type: 'POST',
                url: 'adminEnrollSched.aspx/loadProfile',
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
        function loadEventlist(courseCode) {
            var eventTable = document.getElementById("eventTable");
            //Clear Event Table
            eventTable.innerHTML = "<tr><th>Event Dates</th><th>Event Name</th><th>Actions</th></tr>";
            currentCourseCode = courseCode;
            $.ajax({
                type: 'POST',
                url: 'adminEnrollSched.aspx/loadEventlst',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ courseCode: courseCode }),
                dataType: 'json',
                async: false,
                success: function (response) {
                    xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    //get Values
                    var eventID = xml.getElementsByTagName('eventid');
                    var eventName = xml.getElementsByTagName('eventname');
                    var eventstart = xml.getElementsByTagName('eventstart');
                    var eventend = xml.getElementsByTagName('eventend');
                    for (var i = 0; i < eventID.length; i++) {
                        var row = eventTable.insertRow(-1);
                        //Convert Event date format
                        var cell0 = row.insertCell(-1);
                        cell0.innerHTML = eventID[i].innerHTML;
                        cell0.style.display = "none";
                        var eventStartFormat = new Date(eventstart[i].innerHTML);
                        eventStartFormat = (eventStartFormat.getMonth() + 1) + '/' + eventStartFormat.getDate() + '/' + eventStartFormat.getFullYear();
                        var eventEndFormat = new Date(eventend[i].innerHTML);
                        eventEndFormat = (eventEndFormat.getMonth() + 1) + '/' + eventEndFormat.getDate() + '/' + eventEndFormat.getFullYear();
                        var cell1 = row.insertCell(-1);
                        //IF eventdate is 1 day
                        if (eventStartFormat == eventEndFormat) {
                            cell1.innerHTML = eventStartFormat;
                        }
                        else {
                            cell1.innerHTML = eventStartFormat + " - " + eventEndFormat;
                        }
                        var cell2 = row.insertCell(-1);
                        cell2.innerHTML = eventName[i].innerHTML;
                        var cell3 = row.insertCell(-1);
                        cell3.innerHTML = "<div class='btn-group'><button class='btn btn-warning' onclick='editEvent(this)'><i class='fa fa-edit'></i></button><button class='btn btn-danger' onclick='removeEvent(this)'><i class='fa fa-remove'></i></button></div>";
                        //Update Calendar
                        eventEndFormat = new Date(eventEndFormat);
                        eventEndFormat.setDate(eventEndFormat.getDate() + 1);
                        var event = {
                            title: eventName[i].innerHTML,
                            start: new Date(eventStartFormat),
                            end: new Date(eventEndFormat),
                        };
                        $('#calendar').fullCalendar('renderEvent', event, true);
                    }
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });
        }

        function loadCalendar() {
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev, next today',
                    center: 'title',
                    right: 'month'
                },
                displayEventTime: false,
            });
        }

        function addEventDialog() {
            $.confirm({
                title: 'Add Event',
                type: 'green',
                icon: 'fa fa-plus-circle',
                columnClass: 'large',
                content: "<div class='box box-solid'>" +
                    "<div class='box-body'>" +
                    "<div class='form-group'>" +
                    "<input id='AddEventName' type='text' class='form-control' placeholder='Event Name'>" +
                    "</div>" +
                    "<div class='margin pad rounded' style='border: 1px solid #D2D6DE; height: 300px; overflow: auto' >" +
                    "<table style='width: 100%' id='tblAddEvent'>" +
                    "<tr>" +
                    "<td>" +
                    "Start Date" +
                    "</td>" +
                    "<td>" +
                    "End Date" +
                    "</td>" +
                    "</tr>" +
                    "<tr class='date'>" +
                    "<td style='padding: 5px'>" +
                    "<div class='input-group'>" +
                    "<div class='input-group-addon'>" +
                    "<i class='fa fa-calendar'></i>" +
                    "</div>" +
                    "<input type='date' class='form-control addEventStart'>" +
                    "</div>" +
                    "</td style='padding: 5px'>" +
                    "<td>" +
                    "<div class='input-group'>" +
                    "<div class='input-group-addon'>" +
                    "<i class='fa fa-calendar'></i>" +
                    "</div>" +
                    "<input type='date' class='form-control addEventEnd'>" +
                    "</div>" +
                    "</td>" +
                    "</tr>" +
                    "</table>" +
                    "</div>" +
                    "<div class='btn-group pull-right'>" +
                    "<button class= 'btn btn-success' onclick='addDates()' > " +
                    "<i class='fa fa-plus'/>" +
                    "</button>" +
                    "<button class= 'btn btn-danger' onclick='removeDates()' > " +
                    "<i class='fa fa-minus'/>" +
                    "</button>" +
                    "</div>" +
                    "</div>" +
                    "</div>",
                buttons: {
                    Confirm: {
                        btnClass: 'btn btn-success',
                        action: function () { return addEvent() }
                    },
                    Cancel: {
                        btnClass: 'btn btn-default'
                    }
                }
            });
        }
        //Add Dates on Add Event
        function addDates() {
            //Get addEventTable
            var tblAddEvent = document.getElementById("tblAddEvent");
            //Add Row
            var row = tblAddEvent.insertRow(-1);
            row.className = 'date';
            var cell1 = row.insertCell(-1);
            cell1.style.padding = "5px";
            cell1.innerHTML = "<div class='input-group'>" +
                "<div class='input-group-addon'>" +
                "<i class='fa fa-calendar'></i>" +
                "</div>" +
                "<input type='date' class='form-control addEventStart'>" +
                "</div>";
            var cell2 = row.insertCell(-1);
            cell2.style.padding = "5px";
            cell2.innerHTML = "<div class='input-group'>" +
                "<div class='input-group-addon'>" +
                "<i class='fa fa-calendar'></i>" +
                "</div>" +
                "<input type='date' class='form-control addEventEnd'>" +
                "</div>";
        }
        //Remove Dates on Add Event
        function removeDates() {
            //Get addEventTable
            var tblAddEvent = document.getElementById("tblAddEvent");
            var rowCount = tblAddEvent.rows.length;
            if (tblAddEvent.rows[rowCount - 1].className == "date" && rowCount > 2) {
                tblAddEvent.deleteRow(rowCount - 1);
            }

        }
        //Add Event
        function addEvent() {
            //Insert String
            var SQLInsertString = "";
            //Get addEventTable
            var tblAddEvent = document.getElementById("tblAddEvent");
            //Get Values
            AddEventName = document.getElementById("AddEventName").value;
            addEventStart = document.getElementsByClassName("addEventStart");
            addEventEnd = document.getElementsByClassName("addEventEnd");
            //Generate Insert String
            for (var i = 0; i < addEventStart.length; i++) {
                SQLInsertString += "INSERT INTO tblEvent(eventName,eventStart,eventEnd,courseCode) VALUES ('" + AddEventName + "','" + addEventStart[i].value + "',";
                //If addeventend is null
                if (addEventEnd[i].value == "") {
                    SQLInsertString += "'" + addEventStart[i].value + "', '" + currentCourseCode + "'); ";
                }
                else {
                    SQLInsertString += "'" + addEventEnd[i].value + "', '" + currentCourseCode + "'); ";
                }
                //Validation
                if (AddEventName == "") {
                    $.alert("Event Name is Required");
                    SQLInsertString = "";
                    return false;
                }
                if (addEventStart[i].value == "") {
                    $.alert("Event Start is Required");
                    SQLInsertString = "";
                    return false;
                }
            }

            if (updateAndInsert(SQLInsertString) == true) {
                success("Add Event");
                //Refresh Events
                $('#calendar').fullCalendar('removeEvents');
                loadEventlist(currentCourseCode);
                return true;
            }
            else {
                failed("Add Event");
                return true;
            }
        }
        //Edit Event
        function editEvent(elem) {
            //Get Row
            var row = elem.parentNode.parentNode.parentNode;
            //Get eventID
            var eventID = row.childNodes[0].innerHTML;
            //Get event attributes
            $.ajax({
                type: 'POST',
                url: 'adminEnrollSched.aspx/loadEditEvent',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify({ eventID: eventID }),
                dataType: 'json',
                async: false,
                success: function (response) {
                    xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    var eventName = xml.getElementsByTagName("eventName");
                    //Format dates
                    var eventStart = xml.getElementsByTagName("eventStart");
                    var eventStartFormat = new Date(eventStart[0].innerHTML);
                    eventStartFormat = reformatDate(eventStartFormat);
                    var eventEnd = xml.getElementsByTagName("eventEnd");
                    var eventEndFormat = new Date(eventEnd[0].innerHTML);
                    eventEndFormat = reformatDate(eventEndFormat);

                    $.confirm({
                        title: 'Edit Event',
                        icon: 'fa fa-edit',
                        columnClass: 'large',
                        type: 'orange',
                        content: "<table style='width: 100%'>" +
                            "<tr>" +
                            "<td colspan='2'>" +
                            "<input id='editEventName' type='text' class='form-control' placeholder='Event Name' value='" + eventName[0].innerHTML + "'>" +
                            "</td>" +
                            "</tr>" +
                            "<tr>" +
                            "<td style='padding: 5px'>" +
                            "<div class='form-group'>" +
                            "<label>Date masks:</label>" +
                            "<div class='input-group'>" +
                            "<div class='input-group-addon'>" +
                            "<i class='fa fa-calendar'></i>" +
                            "</div>" +
                            "<input id='eventStart' type='date' class='form-control' value='" + eventStartFormat + "'>" +
                            "</div>" +
                            "</div>" +
                            "</td>" +
                            "<td style='padding: 5px'>" +
                            "<div class='form-group'>" +
                            "<label>Date masks:</label>" +
                            "<div class='input-group'>" +
                            "<div class='input-group-addon'>" +
                            "<i class='fa fa-calendar'></i>" +
                            "</div>" +
                            "<input id='eventEnd' type='date' class='form-control' value='" + eventEndFormat + "'>" +
                            "</div>" +
                            "</div>" +
                            "</td>" +
                            "</tr>" +
                            "</table>",
                        buttons: {
                            confirm: {
                                btnClass: 'btn btn-warning',
                                action: function () {
                                    var updateSQLString = "";
                                    var editEventName = this.$content.find('#editEventName').val();
                                    var editEventStart = this.$content.find('#eventStart').val();
                                    var editEventEnd = this.$content.find('#eventEnd').val();
                                    if (editEventName == "") {
                                        $.alert('Event Name cannot be blank');
                                        return false;
                                    }
                                    if (editEventStart == "") {
                                        $.alert('Event Start cannot be blank');
                                        return false;
                                    }

                                    updateSQLString = "UPDATE tblEvent SET eventName = '" + editEventName +
                                        "', eventStart = '" + editEventStart;
                                    //If Event End is blank 
                                    if (editEventEnd == "") {
                                        updateSQLString += "', eventEnd = '" + editEventStart + "' WHERE eventID = " + eventID + ";";
                                    } else
                                        updateSQLString += "', eventEnd = '" + editEventEnd + "' WHERE eventID = " + eventID + ";";

                                    if (updateAndInsert(updateSQLString) == true) {
                                        success("Event edited");
                                        //Refresh Events
                                        $('#calendar').fullCalendar('removeEvents');
                                        loadEventlist(currentCourseCode);
                                    }
                                    else {
                                        failed("Event edited");
                                    }
                                }
                            },
                            cancel: {
                                btnClass: 'btn btn-default'
                            }
                        }
                    })
                },
                failure: function (response) {
                    alert("Connection Failed Refresh Page");
                }
            });

        }
        //Remove Event
        function removeEvent(elem) {
            //Get Row
            var row = elem.parentNode.parentNode.parentNode;
            //Get eventID
            var eventID = row.childNodes[0].innerHTML;
            $.confirm({
                title: 'Remove Event',
                icon: 'fa fa-remove',
                type: 'red',
                theme: 'modern',
                content: 'Events cannot be retrieve after deletion.',
                buttons: {
                    delete: {
                        btnClass: 'btn btn-danger',
                        action: function () {
                            var deleteString = "";
                            deleteString = "DELETE FROM tblEvent WHERE eventID = '" + eventID + "';";
                            if (updateAndInsert(deleteString) == true) {
                                success("Event deleted");
                                //Refresh Events
                                $('#calendar').fullCalendar('removeEvents');
                                loadEventlist(currentCourseCode);
                            }
                            else {
                                failed("Event deleted");
                            }
                        }
                    },
                    cancel: {

                    }
                }
            });
        }

        function reformatDate(dateToFormat) {
            var eventStr = "";
            eventStr += dateToFormat.getFullYear() + "-";
            if ((dateToFormat.getMonth() + 1) < 10) {
                eventStr += "0" + (dateToFormat.getMonth() + 1);
            }
            else {
                eventStr += (dateToFormat.getMonth() + 1);
            }
            if (dateToFormat.getDate() < 10) {
                eventStr += "-0" + (dateToFormat.getDate());
            }
            else {
                eventStr += "-" + (dateToFormat.getDate());
            }
            return eventStr;
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

    </script>
</body>
</html>
