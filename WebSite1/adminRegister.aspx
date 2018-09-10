<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminRegister.aspx.cs" Inherits="adminRegister" %>

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

<body>
	<div class="image-container set-full-height" style="background: orange">

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
		            <div class="wizard-container">
		                <div class="card wizard-card" data-color="orange" id="wizard">
			                <form action="" method="">
			                <!--        You can switch " data-color="rose" "  with one of the next bright colors: "blue", "green", "orange", "purple"        -->

		                    	<div class="wizard-header">
		                        	<h3 class="wizard-title">
		                        		Student Recommender
		                        	</h3>
									<h5>Create your Administrator Account</h5>
		                    	</div>
								<div class="wizard-navigation" style="pointer-events: none">
									<ul>
			                            <li><a href="#" data-toggle="tab" id="btnCode">Admin Code</a></li>
			                            <li><a href="#" data-toggle="tab" id="btnBInfo">Basic Info</a></li>
                                        <li><a href="#" data-toggle="tab">Account Info</a></li>
			                        </ul>
								</div>

		                        <div class="tab-content">
		                            <div class="tab-pane active" id="code">
		                            	<div class="row">
	                                        <div class="col-sm-12">
		                                        <h4 class="info-text">Please enter the&nbsp;<b>Registration Code</b>&nbsp;provided</h4>
	                                        </div>
	                                        <br /><br /><br /><br /><br /><br />
	                                        <div class="col-sm-8 col-sm-offset-2">
		                                        <div class="form-group label-floating">
			                                        <label class="control-label">Admin Registration Code</label>
			                                        <input type="text" class="form-control" id="regCode">
		                                        </div>
	                                        </div>
                                        </div> 
		                            </div>
		                            <div class="tab-pane" id="basicInfo">
		                                <h4 class="info-text">Please fill up your Basic Information.</h4>
		                                <div class="row">
		                                	<div class="col-sm-10 col-sm-offset-1">
		                                    	<div class="form-group label-floating has-success">
                                                    <input type="text" id="courseInfo" disabled class="form-control" />
                                                <span class="material-icons form-control-feedback">done</span>
                                                </div>
		                                	</div>
		                                	<div class="col-sm-3 col-sm-offset-1">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">First Name <small>(Required)</small></label>
			                                        <input type="text" class="form-control" id="adminFirst" onkeyup="validateField(this,3)">
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
		                                        </div>
		                                	</div>
                                            <div class="col-sm-4">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Middle Name</label>
			                                        <input type="text" class="form-control" id="adminMiddle">
		                                        </div>
		                                	</div>
                                            <div class="col-sm-3">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Last Name <small>(Required)</small></label>
			                                        <input type="text" class="form-control" id="adminLast" onkeyup="validateField(this,2)">
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
		                                        </div>
		                                	</div>
		                                	<div class="col-sm-5 col-sm-offset-1">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Contact <small>(Required)</small></label>
			                                        <input type="text" class="form-control" onkeyup='validateContact(this)' id="adminContact" data-inputmask='"mask": "99999999999"' data-mask>
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
		                                        </div>
		                                	</div>
		                                	<div class="col-sm-5">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Email <small>(Required)</small></label>
			                                        <input type="email" class="form-control" id="adminEmail" onkeyup="validateEmail(this)">
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
		                                        </div>
		                                	</div>
		                            	</div>
		                            </div>
                                    <div class="tab-pane" id="accountInfo">
		                                <h4 class="info-text">Please fill up your Account Information.</h4>
		                                <div class="row">
		                                	<div class="col-sm-6 col-sm-offset-3">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Username</label>
			                                        <input type="text" class="form-control" id="adminUsername" onkeyup="validateField(this,5)">
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
                                                    <small class="form-text text-muted">Username must be minimum of 5 characters</small>
		                                        </div>
		                                	</div>
                                            <div class="col-sm-6 col-sm-offset-3">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Password</label>
			                                        <input type="password" class="form-control" id="adminPassword" onkeyup="validatePassword(this,6)">
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
                                                    <small class="form-text text-muted">Password must be minimum of 6 characters</small>
		                                        </div>
		                                	</div>
                                            <div class="col-sm-6 col-sm-offset-3">
		                                    	<div class="form-group label-floating">
			                                        <label class="control-label">Confirm Password</label>
			                                        <input type="password" class="form-control" id="adminCPassword" onkeyup="validateCPassword(this)" disabled>
                                                    <span class="form-control-feedback">
                                                        <i class="material-icons"></i>
                                                    </span>
		                                        </div>
		                                	</div>
		                            	</div>
		                            </div>
		                        </div>
		                        <div class="wizard-footer">
	                            	<div class="pull-right">
	                                    <input type='button' onclick="nextTab()" class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Next' />
	                                    <input type='button' onclick="finishTab()" class='btn btn-finish btn-fill btn-warning btn-wd' name='finish' value='Finish' />
	                                </div>
	                                <div class="pull-left">
	                                    <input type='button' onclick="prevTab()" class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
	                                </div>
		                            <div class="clearfix"></div>
		                        </div>
			                </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	        </div><!-- end row -->
	    </div> <!--  big container -->

	    <div class="footer">
	        <div class="container text-center">
	             Made with <i class="fa fa-heart heart"></i> by Group Name</a>
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
            //Declare courseCode
            var currentCourseCode;

            function prevTab() {
                var tab = document.getElementsByClassName("moving-tab")[0].innerHTML;
    
                if (tab == "Basic Info") {
                    document.getElementById("code").className = "tab-pane active";
                    document.getElementById("basicInfo").className = "tab-pane";
                    document.getElementById("accountInfo").className = "tab-pane";
                }

                if (tab == "Account Info") {
                    document.getElementById("code").className = "tab-pane";
                    document.getElementById("basicInfo").className = "tab-pane active";
                    document.getElementById("accountInfo").className = "tab-pane";
                }
            }

            function nextTab() {
                var tab = document.getElementsByClassName("moving-tab")[0].innerHTML;

                if (tab == "Admin Code") {
                    //Get Registration Code Input Box
                    var regCode = document.getElementById("regCode").value;
                    $.confirm({
                        title: 'Validating',
                        icon: 'fa fa-spinner fa-spin',
                        content: '',
                        theme: 'modern',
                        type: 'orange', 
                        autoClose: 'ok|1000',
                        buttons: {
                            ok: {
                                isHidden: true,
                                action: function () {
                                    var courseInfo = getRegCode(regCode);
                                    if (courseInfo != "null") {
                                        //Move Forward
                                        document.getElementById("code").className = "tab-pane";
                                        document.getElementById("basicInfo").className = "tab-pane active";
                                        //CHange Form
                                        var courseInfoBox = document.getElementById("courseInfo");
                                        courseInfoBox.value = courseInfo;
                                    }
                                    else {
                                        $.alert({
                                            title: "Alert!",
                                            icon: "fa fa-exclamation",
                                            type: "red",
                                            content: "Registration Code is invalid or already used",
                                            buttons: {
                                                ok: function () { }
                                            }
                                        });
                                        //Go Back
                                        document.getElementById("code").className = "tab-pane active";
                                        document.getElementById("basicInfo").className = "tab-pane";

                                        document.getElementById("btnCode").click();
                                    }                                  
                                }
                            }
                        }
                    });                  
                }

                if (tab == "Basic Info") {
                    //Get All Require fields
                    var requiredFields = document.getElementById("basicInfo").getElementsByTagName("small");
                    var canContinue = true;
                    //Check for Require Fields
                    for (var i = 0; i < requiredFields.length; i++) {
                        if (requiredFields[i].parentNode.parentNode.getElementsByClassName("material-icons")[0].innerHTML == "") {
                            requiredFields[i].parentNode.parentNode.className = "form-group label-floating has-error";
                            canContinue = false;
                        }
                        else if (requiredFields[i].parentNode.parentNode.getElementsByClassName("material-icons")[0].innerHTML == "clear") {
                            requiredFields[i].parentNode.parentNode.className = "form-group label-floating has-error";
                            requiredFields[i].parentNode.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                            canContinue = false;
                        }
                    }

                    //Basic info has empty required fields
                    if (canContinue == false) {
                        setTimeout(function () { document.getElementById("btnBInfo").click() }, 1);
                        return;
                    }

                    //Go to Next
                    document.getElementById("code").className = "tab-pane";
                    document.getElementById("basicInfo").className = "tab-pane";
                    document.getElementById("accountInfo").className = "tab-pane active";

                }
            }

            function finishTab() {
                var accountInfo = document.getElementById("accountInfo");
                var adminUsername = document.getElementById("adminUsername");
                var adminPassword = document.getElementById("adminPassword");
                var adminCPassword = document.getElementById("adminCPassword");
                var adminFirst = document.getElementById("adminFirst");
                var adminMiddle = document.getElementById("adminMiddle");
                var adminLast = document.getElementById("adminLast"); 
                var adminContact = document.getElementById("adminContact");
                var adminEmail = document.getElementById("adminEmail");

                var canContinue = true;

                if (adminPassword.parentNode.getElementsByClassName("material-icons")[0].innerHTML != "done") {
                    adminPassword.parentNode.className = "form-group label-floating has-error";
                    canContinue = false;
                }

                if (adminCPassword.parentNode.getElementsByClassName("material-icons")[0].innerHTML != "done") {
                    adminCPassword.parentNode.className = "form-group label-floating has-error";
                    canContinue = false;
                }

                if (adminUsername.parentNode.getElementsByClassName("material-icons")[0].innerHTML != "done") {
                    adminUsername.parentNode.className = "form-group label-floating has-error";
                    canContinue = false;
                }

                if (canContinue == true) {

                    var RegisterSQL = "INSERT INTO tblAdmin VALUES('" + adminUsername.value +
                        "','" + adminCPassword.value + "','" + adminFirst.value + "','" + adminMiddle.value + "','" + adminLast.value + "','" + adminContact.value + "','" + adminEmail.value + "','" + currentCourseCode + "');" +
                        "UPDATE tblCourse SET courseStatus = 'YES' WHERE courseCode = '" + currentCourseCode + "';";

                    if (updateAndInsert(RegisterSQL) == true) {
                    $.confirm({
                        title: 'Registration Complete!',
                        content: 'Thank you for registering.',
                        icon: 'fa fa-thumbs-up',
                        type: 'orange',
                        buttons: {
                            goToLogin: {
                                btnClass: 'btn btn-warning',
                                action: function () { window.location.href = "adminLogin.aspx";},
                                text: 'Go to login',
                            }
                        }
                     });
                    }



                }

            }

            function validatePassword(elem,minlen) {
                //validate
                setTimeout(function () {
                    if (elem.value.length >= minlen) {
                        elem.parentNode.className = "form-group label-floating has-success";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
                        document.getElementById("adminCPassword").disabled = false;   
                        document.getElementById("adminCPassword").value = "";
                        document.getElementById("adminCPassword").parentNode.className = "form-group label-floating";
                    }
                    else if (elem.value.length < minlen && elem.value.length > 0) {
                        elem.parentNode.className = "form-group label-floating has-error";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                        document.getElementById("adminCPassword").disabled = true;
                        document.getElementById("adminCPassword").value = "";
                        document.getElementById("adminCPassword").parentNode.className = "form-group label-floating";
                    }
                    else if(elem.value.length == 0) {
                        elem.parentNode.className = "form-group label-floating";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
                        document.getElementById("adminCPassword").disabled = true;
                        document.getElementById("adminCPassword").value = "";
                        document.getElementById("adminCPassword").parentNode.className = "form-group label-floating";
                    }
                },100);

            }

            function validateCPassword(elem) {
                //Get Password
                var adminPassword = document.getElementById("adminPassword");
                setTimeout(function () {
                    if (elem.value != adminPassword.value && elem.value != "") {
                        elem.parentNode.className = "form-group label-floating has-error";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                    }
                    else if (elem.value == adminPassword.value) {
                        elem.parentNode.className = "form-group label-floating has-success";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
                    }
                    else if (elem.value == "") {
                        elem.parentNode.className = "form-group label-floating";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
                    }
                }, 100);
            }

            function validateField(elem,minlen) {
                //validate
                setTimeout(function () {
                    if (elem.value.length >= minlen) {
                        elem.parentNode.className = "form-group label-floating has-success";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
                    }
                    else if (elem.value.length < minlen && elem.value.length > 0) {
                        elem.parentNode.className = "form-group label-floating has-error";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                    }
                    else if(elem.value.length == 0) {
                        elem.parentNode.className = "form-group label-floating";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
                    }
                },500);

            }

            function validateEmail(elem) {
                //validate
                setTimeout(function () {
                    if (elem.value.length > 0 && elem.value.includes("@") && elem.value.includes(".")) {
                        elem.parentNode.className = "form-group label-floating has-success";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
                    }
                    else if (elem.value.length == 0) {
                        elem.parentNode.className = "form-group label-floating";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
                    }
                    else {
                        elem.parentNode.className = "form-group label-floating has-error";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                    }
                },10);
            }

            function validateContact(elem) {
                setTimeout(function () {
                    if (elem.value.length > 0 && elem.value.includes("_") == false) {
                        elem.parentNode.className = "form-group label-floating has-success";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "done";
                    }
                    else if (elem.value.includes("_") && isNumeric(elem.value)) {
                        elem.parentNode.className = "form-group label-floating has-error";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "clear";
                    }
                    else {
                        elem.parentNode.className = "form-group label-floating";
                        elem.parentNode.getElementsByClassName("material-icons")[0].innerHTML = "";
                    }
                },1);
            }

            function isNumeric(input) {
                let str = String(input);
                for( let i = 0; i < str.length; i++){
                          console.log(str.charAt(i));
                    if(!isNaN(str.charAt(i))){           //if the string is a number, do the following
                        return true;
                    }
                }
            }

            function getRegCode(regCode) {
                var courseInfo = "";
                $.ajax({
                    type: 'POST',
                    url: 'adminRegister.aspx/getRegistrationCode',
                    async: false,
                    data: JSON.stringify({ regCode: regCode }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (response) {
                        //Convert XML to HTML element
                        var xml = document.createElement("div");
                        xml.innerHTML = response.d;
                        if (xml.getElementsByTagName("coursecode")[0] != null) {
                            currentCourseCode = xml.getElementsByTagName("coursecode")[0].innerHTML;
                            courseInfo = xml.getElementsByTagName("coursecode")[0].innerHTML + " - " + xml.getElementsByTagName("coursename")[0].innerHTML;                       
                        }
                        else {
                            courseInfo = "null";
                        }
                    },
                    failure: function (response) {
                        alert(Response.d);
                    }
                });

                return courseInfo;
            }

                function updateAndInsert(SQLstring) {
                    var success;
                    $.ajax({
                        type: 'POST',
                        url: 'adminRegister.aspx/updateAndInsert',
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
