<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentLogin.aspx.cs" Inherits="studentLogin" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Student Login | SR
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="dist/css/materialRoboto.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="../assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet" />
    <%--Animate--%>
    <link href="dist/css/animate.css" rel="stylesheet" />
</head>

<body class="login-page sidebar-collapse">
    <div class="page-header" style="background: purple;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 ml-auto mr-auto">
                    <div class="card card-login">
                        <form class="form" runat="server">
                            <div class="card-header card-header-primary text-center">
                                <h4 class="card-title">Student Recommender</h4>
                            </div>
                            <p class="description text-center">Student Login</p>
                            <div class="card-body">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">face</i>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Student No..." data-inputmask='"mask": "9999-99999-AA-9"' data-mask></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                    </div>
                                    <asp:TextBox TextMode="Password" ID="passcode" runat="server" class="form-control" placeholder="Password..."></asp:TextBox>
                                </div>
                            </div>
                            <div class="footer" style="padding-bottom: 20px;">
                                <asp:LinkButton ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block" Style="width: 80%; margin-left: auto; margin-right: auto;" OnClick="btnLogin_Click" AutoPostback="false"></asp:LinkButton>
                                <a href="studentRegister.aspx" class="btn btn-primary btn-block" style="width: 80%; margin-left: auto; margin-right: auto;">Register</a>
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
                            <a href="adminLogin.aspx">Admin
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
    <!-- InputMask -->
    <script src="plugins/input-mask/jquery.inputmask.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <%--BootStrap Notify--%>
    <script src="dist/js/bootstrap-notify.js"></script>

    <script>
        //Money Euro
        $("[data-mask]").inputmask();

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
    <script>

</script>
</body>

</html>
