<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentRegister.aspx.cs" Inherits="studentRegister" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/favicon.ico">

    <title>Register | SR</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="assets/img/favicon.png" />

    <!--     Fonts and icons     -->
    <link href="dist/css/materialRoboto.css" rel="stylesheet" />
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />

    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-bootstrap-wizard.css" rel="stylesheet" />
    <link href="dist/css/jquery-confirm.min.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />


</head>

<body onload="getCourses()">
    <div class="image-container set-full-height" style="background: purple">

        <!--  Made With Material Kit  -->
        <a href="http://demos.creative-tim.com/material-kit/index.html?ref=material-bootstrap-wizard" class="made-with-mk">
            <div class="brand">MK</div>
            <div class="made-with">Made with <strong>Material Kit</strong></div>
        </a>

        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <!--      Wizard container        -->
                    <!--      Wizard container        -->
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="purple" id="wizardProfile">
                            <form action="" method="">
                                <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->

                                <div class="wizard-header">
                                    <h3 class="wizard-title">Student Recommender
		                        	</h3>
                                    <h5>Create your Student Account</h5>
                                </div>
                                <div class="wizard-navigation" style="pointer-events: none">
                                    <ul>
                                        <li><a href="#" data-toggle="tab">Basic Info</a></li>
                                        <li><a href="#" data-toggle="tab">Course</a></li>
                                        <li><a href="#" data-toggle="tab">Account Info</a></li>
                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="bInfo">
                                        <div class="row">
                                            <h4 class="info-text">Let's start with the Basic Information</h4>
                                            <div class="col-sm-3 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label class="control-label">First Name <small class="required">(Required)</small></label>
                                                    <input type="text" class="form-control" id="studFirst" onkeyup="validateField(this,3);validateAll()">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label">Middle Name</label>
                                                    <input type="text" class="form-control" id="studMiddle">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <label class="control-label">Last Name <small class="required">(Required)</small></label>
                                                    <input type="text" class="form-control" id="studLast" onkeyup="validateField(this,3);validateAll()">
                                                </div>
                                            </div>
                                            <div class="col-sm-3 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label class="control-label">Birthday <small class="required">(Required)</small></label>
                                                    <input type="date" class="form-control" id="studBirth" onkeyup="validateDOB(this);validateAll()" onchange="validateDOB(this);validateAll()">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <label class="control-label">Email <small class="required">(Required)</small></label>
                                                    <input type="text" class="form-control" id="studEmail" onkeyup="validateEmail(this);validateAll()">
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group">
                                                    <label class="control-label">Contact <small class="required">(Required)</small></label>
                                                    <input type="text" class="form-control" onkeyup="validateContact(this);validateAll()" id="studContact" data-inputmask='"mask": "99999999999"' data-mask>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group has-success">
                                                    <label class="control-label">Gender <small class="required">(Required)</small></label>
                                                    <select class="form-control" id="studGender">
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="course">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text">Please Select a Course</h4>
                                            </div>
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <div class="form-group">
                                                    <label class="control-label">Courses</label>
                                                    <select class="form-control" id="courseSelect" onchange="getCurr(this)">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <div class="form-group">
                                                    <label class="control-label">Curriculum</label>
                                                    <select class="form-control" id="currSelect">
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="acInfo">
                                        <h4 class="info-text">Please fill up your Account Information.</h4>
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <div class="form-group">
                                                    <label class="control-label">Student No. <small class="required">(Required)</small></label>
                                                    <input type="text" class="form-control" onkeyup="validateStudNo(this);validateFinish()" id="studNo" data-inputmask='"mask": "9999-99999-AA-9"' data-mask>
                                                    <small class="form-text text-muted">Username must be minimum of 5 characters</small>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <div class="form-group">
                                                    <label class="control-label">Password <small class="required">(Required)</small></label>
                                                    <input type="password" class="form-control" id="studPass" onkeyup="validatePassword(this, 6);validateFinish()">
                                                    <small class="form-text text-muted">Password must be minimum of 6 characters</small>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <div class="form-group">
                                                    <label class="control-label">Confirm Password <small class="required">(Required)</small></label>
                                                    <input type="password" class="form-control" id="studCPass" onkeyup="validateCPassword(this);validateFinish()" disabled>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' onclick="nextTab()" id="btnNext" class='btn btn-next btn-fill btn-primary btn-wd' name='next' value='Next' disabled />
                                        <input type='button' onclick="finishTab()" id="btnFin" class='btn btn-finish btn-fill btn-primary btn-wd' name='finish' value='Finish' disabled />
                                    </div>

                                    <div class="pull-left">
                                        <input type='button' onclick="prevTab()" class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- wizard container -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!--  big container -->

        <div class="footer">
            <div class="container text-center">
                Made with <i class="fa fa-heart heart"></i>by Group Name</a>
	       
            </div>
        </div>
    </div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.bootstrap.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="assets/js/material-bootstrap-wizard.js"></script>

<!-- Jquery Confirm js -->
<script src="dist/js/jquery-confirm.min.js"></script>

<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>

<script>
    //Money Euro
    $("[data-mask]").inputmask();
</script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>

<script>
    function finishTab() {
        //Get Values
        var studNo = document.getElementById("studNo").value;
        var studPass = document.getElementById("studPass").value;
        var courseCode = document.getElementById("courseSelect").value;
        var studFirst = document.getElementById("studFirst").value;
        var studMiddle = document.getElementById("studMiddle").value;
        var studLast = document.getElementById("studLast").value;
        var studBirth = document.getElementById("studBirth").value;
        var studEmail = document.getElementById("studEmail").value;
        var studContact = document.getElementById("studContact").value;
        var studGender = document.getElementById("studGender").value;
        var studCurr = document.getElementById("currSelect").value;

        var insertSQL = "INSERT INTO tblStud(studNo,studPass,courseCode,studFirst,studMiddle,studLast,studBirth,studEmail,studContact,studGender,studCurr,studYear,studPic) VALUES ('" + studNo + "','" + studPass + "','" + courseCode + "','" + studFirst + "','" + studMiddle + "','" + studLast + "','" + studBirth + "','" + studEmail + "','" + studContact + "','" + studGender + "','" + studCurr + "',null,'data:image/png;base64,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');";



        if (updateAndInsert(insertSQL) == true) {
            $.confirm({
                title: 'Registration Complete!',
                content: 'Thank you for registering.',
                icon: 'fa fa-thumbs-up',
                type: 'purple',
                buttons: {
                    goToLogin: {
                        btnClass: 'btn btn-primary',
                        action: function () { window.location.href = "studentLogin.aspx"; },
                        text: 'Go to login',
                    }
                }
            });
        }
        else {
            $.confirm({
                title: 'Alert!',
                content: 'Student No. Already Exist.',
                icon: 'fa fa-exclamation',
                type: 'red',
                buttons: {
                    ok: {
                        btnClass: 'btn btn-danger',
                        action: function () { },
                    }
                }
            });
        }
    }
    function prevTab() {
        var tab = document.getElementsByClassName("moving-tab")[0].innerHTML;

        if (tab == "Course") {
            document.getElementById("bInfo").className = "tab-pane active";
            document.getElementById("course").className = "tab-pane";
        }
        else if (tab == "Account Info") {
            document.getElementById("course").className = "tab-pane active";
            document.getElementById("acInfo").className = "tab-pane";
        }
    }

    function nextTab() {
        var tab = document.getElementsByClassName("moving-tab")[0].innerHTML;

        if (tab == "Basic Info") {
            document.getElementById("bInfo").className = "tab-pane";
            document.getElementById("course").className = "tab-pane active";
            getCurr(document.getElementById("courseSelect"));
        }
        else if (tab == "Course") {
            document.getElementById("course").className = "tab-pane";
            document.getElementById("acInfo").className = "tab-pane active";
        }

    }
    function validateAll() {
        setTimeout(function () {
            //Get All (Required) Fields
            var bInfo = document.getElementById("bInfo");
            var reqFields = bInfo.getElementsByClassName("required");
            var canContinue = true
            for (var i = 0; i < reqFields.length; i++) {
                if (reqFields[i].parentNode.parentNode.className == "form-group has-error" ||
                    reqFields[i].parentNode.parentNode.className == "form-group is-empty" ||
                    reqFields[i].parentNode.parentNode.className == "form-group" ||
                    reqFields[i].parentNode.parentNode.className == "form-group label-floating") {
                    canContinue = false;
                }
            }

            if (canContinue == true) {
                document.getElementById("btnNext").disabled = false;
            }

            else if (canContinue == false) {
                document.getElementById("btnNext").disabled = true;
            }
        }, 50)
    }

    function validateFinish() {
        setTimeout(function () {
            //Get All (Required) Fields
            var bInfo = document.getElementById("acInfo");
            var reqFields = bInfo.getElementsByClassName("required");
            var canContinue = true
            for (var i = 0; i < reqFields.length; i++) {
                if (reqFields[i].parentNode.parentNode.className == "form-group has-error" ||
                    reqFields[i].parentNode.parentNode.className == "form-group is-empty" ||
                    reqFields[i].parentNode.parentNode.className == "form-group") {
                    canContinue = false;
                }
            }

            if (canContinue == true) {
                document.getElementById("btnFin").disabled = false;
            }

            else if (canContinue == false) {
                document.getElementById("btnFin").disabled = true;
            }
        }, 50)
    }

    function validateField(elem, minlen) {
        //validate
        setTimeout(function () {
            if (elem.value.length >= minlen) {
                elem.parentNode.className = "form-group has-success";
            }
            else if (elem.value.length < minlen && elem.value.length > 0) {
                elem.parentNode.className = "form-group has-error";
            }
            else if (elem.value.length == 0) {
                elem.parentNode.className = "form-group";
            }
        }, 100);

    }

    function validateDOB(elem) {
        if (elem.value == "") {
            elem.parentNode.className = "form-group";
        }
        else if (elem.value != null) {
            elem.parentNode.className = "form-group has-success";
        }
        else if (elem.value == null) {
            elem.parentNode.className = "form-group has-error";
        }
    }

    function validateEmail(elem) {
        //validate
        setTimeout(function () {
            if (elem.value.length > 0 && elem.value.includes("@") && elem.value.includes(".")) {
                elem.parentNode.className = "form-group has-success";
            }
            else if (elem.value.length == 0) {
                elem.parentNode.className = "form-group";
            }
            else {
                elem.parentNode.className = "form-group has-error";
            }
        }, 10);
    }

    function validateContact(elem) {

        setTimeout(function () {
            if (elem.value.length > 0 && elem.value.includes("_") == false) {
                elem.parentNode.className = "form-group has-success";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
            }
            else if (elem.value.includes("_") && isNumeric(elem.value)) {
                elem.parentNode.className = "form-group has-error";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
            }
            else {
                elem.parentNode.className = "form-group";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
            }
        }, 1);
    }

    function isNumeric(input) {
        let str = String(input);
        for (let i = 0; i < str.length; i++) {
            console.log(str.charAt(i));
            if (!isNaN(str.charAt(i))) {           //if the string is a number, do the following
                return true;
            }
        }
    }

    function validateStudNo(elem) {
        setTimeout(function () {
            if (elem.value.length > 0 && elem.value.includes("_") == false) {
                elem.parentNode.className = "form-group has-success";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
            }
            else if (elem.value.includes("_") && isNumeric(elem.value)) {
                elem.parentNode.className = "form-group has-error";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
            }
            else {
                elem.parentNode.className = "form-group";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
            }
        }, 1)
    }

    function validatePassword(elem, minlen) {
        //validate
        setTimeout(function () {
            if (elem.value.length >= minlen) {
                elem.parentNode.className = "form-group has-success";
                document.getElementById("studCPass").disabled = false;
                document.getElementById("studCPass").value = "";
                document.getElementById("studCPass").parentNode.className = "form-group";
            }
            else if (elem.value.length < minlen && elem.value.length > 0) {
                elem.parentNode.className = "form-group has-error";
                document.getElementById("studCPass").disabled = true;
                document.getElementById("studCPass").value = "";
                document.getElementById("studCPass").parentNode.className = "form-group";
            }
            else if (elem.value.length == 0) {
                elem.parentNode.className = "form-group";
                document.getElementById("studCPass").disabled = true;
                document.getElementById("studCPass").value = "";
                document.getElementById("studCPass").parentNode.className = "form-group";
            }
        }, 10);
    }

    function validateCPassword(elem) {
        //Get Password
        var studPass = document.getElementById("studPass");
        setTimeout(function () {
            if (elem.value != studPass.value && elem.value != "") {
                elem.parentNode.className = "form-group has-error";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
            }
            else if (elem.value == studPass.value) {
                elem.parentNode.className = "form-group has-success";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
            }
            else if (elem.value == "") {
                elem.parentNode.className = "form-group";
                elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
            }
        }, 10);
    }

    function getCourses() {
        var courseSelect = document.getElementById("courseSelect");
        $.ajax({
            type: 'POST',
            url: 'studentRegister.aspx/getCourses',
            async: false,
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                xml = document.createElement("div");
                xml.innerHTML = response.d;
                var courseCodes = xml.getElementsByTagName("coursecode");
                var courseNames = xml.getElementsByTagName("coursename");

                //PUT to SQL
                for (var i = 0; i < courseCodes.length; i++) {
                    var opt = document.createElement("option");
                    opt.value = courseCodes[i].innerHTML;
                    opt.innerHTML = courseCodes[i].innerHTML + " - " + courseNames[i].innerHTML;
                    courseSelect.appendChild(opt);
                }

            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

    function getCurr(elem) {
        var courseCode = elem.value;
        $.ajax({
            type: 'POST',
            url: 'studentRegister.aspx/getCurr',
            async: false,
            data: JSON.stringify({ courseCode: courseCode }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                var text = response.d;
                var parser, xmlDoc;
                parser = new DOMParser();
                xmlDoc = parser.parseFromString(text, "text/xml");

                //Get Rows From XML
                var XMLrows = xmlDoc.getElementsByTagName("Table");

                var currSelect = document.getElementById("currSelect");
                currSelect.innerHTML = "";

                if (XMLrows.length == 0) {
                    document.getElementById("btnNext").disabled = true;
                    var opt = document.createElement("option");
                    opt.innerHTML = "No Curriculums on this course Added yet";
                    currSelect.appendChild(opt);
                }
                else {
                    document.getElementById("btnNext").disabled = false;
                    //Add Curr to select
                    for (var i = 0; i < XMLrows.length; i++) {
                        var opt = document.createElement("option");
                        opt.innerHTML = XMLrows[i].getElementsByTagName("currName")[0].innerHTML;
                        opt.value = XMLrows[i].getElementsByTagName("currCode")[0].innerHTML;
                        currSelect.appendChild(opt);
                    }
                }
            },
            failure: function (response) {
                success = false;
            }
        });
    }

    function updateAndInsert(SQLstring) {
        var success;
        $.ajax({
            type: 'POST',
            url: 'studentRegister.aspx/updateAndInsert',
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
</html>

