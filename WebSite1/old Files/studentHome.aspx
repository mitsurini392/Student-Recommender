<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentHome.aspx.cs" Inherits="studentHome" %>

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
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
  <link rel="stylesheet" href="dist/css/skins/skin-purple.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
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
<body class="hold-transition skin-purple sidebar-mini">
<form runat="server">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b>R</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg" style="font-size: 80%"><b>Student&nbspRecommender</span>
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
        <div class="pull-left info" style="color: white; border:0;">
          <p><asp:Label ID="lbLastName" Text="null" runat="server"></asp:Label>,
              <asp:Label ID="lbFirstName" Text="null" runat="server"></asp:Label>&nbsp
              <asp:Label ID="lbMiddleName" Text="null" runat="server"></asp:Label>
          </p>
          <p><asp:Label ID="lbUser" Text="null" runat="server"></asp:Label></p>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">NAVIGATION</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active" ><a href="#"><i class="fa fa-user"></i> <span>Home</span></a></li>
        <li><a href="studentGrade.aspx"><i class="fa fa-file"></i> <span>Grades</span></a></li>
        <li><a href="#"><i class="fa fa-tasks"></i> <span>Advice</span></a></li>
        <br />
         <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnLogout_Click" ><i class="fa fa-power-off"></i> <span>Logout</span></asp:LinkButton></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Home
        <small>...</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

       <div class="row">
       <%--Profile Widget--%>
           <div class="col-lg-4">
          <div class="box box-widget widget-user-2">
            <div class="widget-user-header bg-purple">
              <!-- /.widget-user-image -->
              <h3 id="profileName" runat="server">null</h3>
              <h5 id="studNo" runat="server">null</h5>
            </div>
            <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a href="#">Year Level <span class="pull-right" id="studYear" runat="server" >null</span></a></li>
                <li><a href="#">Section <span class="pull-right" id="studSection" runat="server">null</span></a></li>
                <li><a href="#">Last Average<span class="pull-right" id="studLastAverage" runat="server">null</span></a></li>
                  <li><a href="#">Contact<span class="pull-right" id="studContact" runat="server">null</span></a></li>
                <li><a href="#">Email Address<span class="pull-right" id="studEmail" runat="server">null</span></a></li>
                <li><button type="button" class="btn bg-purple btn-flat margin" data-toggle="modal" data-target="#editModal">Edit</button></li>
              </ul>
            </div>
          </div>
        </div>
        <%--End of Profile Widget--%>

        <div class="col-lg-8">
            <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Average Chart</h3>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="myChart" width="400" height="250"></canvas>

              </div>
            </div>
            <!-- /.box-body -->
          </div>
        </div>

       </div>

        <!-- Button trigger modal -->


        <!-- Edit Profile Modal -->
        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
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
<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.bundle.js"></script>
<script src="plugins/chartjs/Chart.bundle.min.js"></script>
<%--Get Student Chart Scripts--%>
<script src="dist/js/studentChart.js"></script>
<script>
$('#editProfileModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

</script>
<%--Page Script--%>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</form>
</body>
</html>
