<%@ Page Language="C#" AutoEventWireup="true" CodeFile="superAdminLogin.aspx.cs" Inherits="superAdminLogin" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <title>Super Admin Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <!--  Fonts and icons  -->
    <!--     Fonts and icons     -->
    <link href="dist/css/materialRoboto.css" rel="stylesheet" />
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">--%>

    <!-- Material Kit CSS -->
    <link href="assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />

    <%--Animate--%>
    <link href="dist/css/animate.css" rel="stylesheet" />
    <%--Font Awesome--%>
    <link href="dist/css/font-awesome.min.css" rel="stylesheet" />

</head>
<body class="login-page sidebar-collapse">

    <div class="page-header" data-parallax="true" style="background-color: darkred">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 ml-auto mr-auto">
                    <div class="card card-login">
                        <form class="form" runat="server">
                            <div class="card-header card-header-danger text-center">
                                <h4 class="card-title">Student Recommender</h4>
                            </div>
                            <p class="description text-center">Super Admin Login</p>
                            <div class="card-body">
                                <div class="input-group has-danger">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">face</i>
                                        </span>
                                    </div>
                                    <asp:TextBox runat="server" ID="txbUsername" class="form-control" placeholder="Username"></asp:TextBox>
                                </div>
                                <div class="input-group has-danger">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                    </div>
                                    <asp:TextBox runat="server" ID="txbPassword" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="footer" style="padding-bottom: 20px;">
                                <asp:Button runat="server" ID="btnLogin" class="btn btn-danger btn-block" Style="width: 80%; margin-left: auto; margin-right: auto;" Text="Login" OnClick="btnLogin_Click" />
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
                            <a href="adminLogin.aspx">Admin
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
                <div class="copyright float-right">
                    Made with....
                </div>
            </div>
        </footer>
    </div>



    <!--   Core JS Files   -->
    <script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
    <script src="assets/js/plugins/moment.min.js"></script>
    <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
    <script src="assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
    <!--  Google Maps Plugin  -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
    <script src="assets/js/material-kit.js?v=2.0.4" type="text/javascript"></script>
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
    </script>
</body>
</html>
