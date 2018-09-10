<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="adminLogin" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Admin Login | SR
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <%--    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />--%>
    <link href="dist/css/materialRoboto.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="../assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet" />
    <%--Animate--%>
    <link href="dist/css/animate.css" rel="stylesheet" />
    <!--JQuery Confirm CSS-->
    <link rel="stylesheet" href="dist/css/jquery-confirm.min.css">
</head>

<body class="login-page sidebar-collapse">
    <div class="page-header " style="background: #d18800">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 ml-auto mr-auto">
                    <div class="card card-login">
                        <form class="form" runat="server">
                            <div class="card-header card-header-warning text-center">
                                <h4 class="card-title">Student Recommender</h4>
                            </div>
                            <p class="description text-center">Admin Login</p>
                            <div class="card-body">
                                <div class="input-group has-warning">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">face</i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txbUser" runat="server" class="form-control" placeholder="Username..."></asp:TextBox>
                                </div>
                                <div class="input-group has-warning">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txbPass" TextMode="Password" runat="server" class="form-control" placeholder="Password..."></asp:TextBox>
                                </div>
                                <div class="text-center">
                                    <a href="#" style="color: darkgoldenrod" onclick="forgotPassword()">Forgot your password?</a>
                                </div>
                            </div>
                            <div class="footer" style="padding-bottom: 20px;">
                                <asp:LinkButton ID="btnLogin" runat="server" class="btn btn-warning btn-block" Style="width: 80%; margin-left: auto; margin-right: auto;" OnClick="btnLogin_Click">Login</asp:LinkButton>
                                <a href="adminRegister.aspx" class="btn btn-warning btn-block" style="width: 80%; margin-left: auto; margin-right: auto;">Register</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <nav class="float-left">
                    <ul>
                        <li>
                            <a href="superAdminLogin.aspx">Super Admin
                            </a>
                        </li>
                        <li>
                            <a href="studentLogin.aspx">Students
                            </a>
                        </li>
                        <li>
                            <a href="#">About
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </footer>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
    <script src="../assets/js/plugins/moment.min.js"></script>
    <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
    <script src="../assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
    <!--	Plugin for Sharrre btn -->
    <script src="../assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
    <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/material-kit.js?v=2.0.4" type="text/javascript"></script>
    <%--JQuery Confirm JS--%>
    <script src="dist/js/jquery-confirm.min.js"></script>
    <%--BootStrap Notify--%>
    <script src="dist/js/bootstrap-notify.js"></script>
    <script>
        document.getElementsByTagName("body")[0].onload = function () {
            var url_string = window.location.href;
            var url = new URL(url_string);
            var c = url.searchParams.get("incorrectPass");
            if (c == "true") {
                notifyIncorrect();
            }

        }
        //Notify
        function notifyIncorrect() {
            $.notify({
                // options
                icon: 'fa fa-exclamation-circle',
                message: 'Incorrect Username or Password.'
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

                });
        }

        function forgotPassword() {
            $.confirm({
                columnClass: "col-md-5",
                type: "orange",
                icon: "fa fa-question-circle",
                title: "Forgot Password?",
                content: "<div class='input-group has-warning text-center'><input type='text' id='adminUsername' class='form-control' style='width: 80%;margin-right: auto;margin-left: auto;' placeholder='Enter your Username'>" +
                    "</div>",
                buttons: {
                    sendToEmail: {
                        text: 'Send to Email',
                        btnClass: 'btn-warning',
                        action: function () {
                            var adminUsername = this.$content.find('#adminUsername').val();
                            sendToEmail(adminUsername);
                        }
                    },
                    cancel: {

                    }
                }
            });
        }

        function sendToEmail(adminUsername) {
            var found = false;
            var email = "";
            var password = "";
            $.ajax({
                type: 'POST',
                url: 'adminLogin.aspx/getEmail',
                async: false,
                data: JSON.stringify({ adminUsername: adminUsername }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                async: false,
                success: function (response) {
                    //Convert XML to HTML element
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;
                    if (xml.getElementsByTagName("adminemail")[0] != null) {
                        email = xml.getElementsByTagName("adminemail")[0].innerHTML;
                        password = xml.getElementsByTagName("adminPassword")[0].innerHTML;
                        found = true;
                    }
                },
                failure: function (response) {
                    alert(Response.d);
                }
            });

            if (found == true) {
                //Send Email
                $.ajax({
                    type: 'POST',
                    url: 'adminLogin.aspx/sendEmail',
                    async: false,
                    data: JSON.stringify({ emailAddress: email, password: password }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    async: false,
                    success: function (response) {
                        if (response.d == true) {
                            $.confirm({
                                theme: 'modern',
                                icon: 'fa fa-check',
                                type: 'green',
                                title: 'Success',
                                content: "Password set to your email.",
                                autoClose: 'ok|1000',
                                buttons: {
                                    ok: {
                                        isHidden: true
                                    }
                                }

                            });
                        }
                        else {
                            $.confirm({
                                theme: 'modern',
                                icon: 'fa fa-exclamation',
                                type: 'red',
                                title: 'Failed',
                                content: "Sending Failed.",
                                autoClose: 'ok|1000',
                                buttons: {
                                    ok: {
                                        isHidden: true
                                    }
                                }

                            });
                        }
                    },
                    failure: function (response) {
                        alert(Response.d);
                    }
                });
            }
            else {
                $.alert("Username not found");
            }
        }
    </script>
</body>

</html>
