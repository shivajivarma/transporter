<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page import = "codemons.transporter.utils.WebPropertiesUtil" %>
<% WebPropertiesUtil resource=WebPropertiesUtil.getInstance(); %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title><%=resource.getLabel("app.title")%></title>

      <%@include file="components/imports.html"%>

      <!-- AdminLTE Skins. Choose a skin from the css/skins
           folder instead of downloading all of them to reduce the load. -->
      <link rel="stylesheet" href="/assets/adminlte/dist/css/skins/skin-blue.min.css">
      <!-- iCheck -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/iCheck/flat/blue.css">
      <!-- Morris chart -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/morris/morris.css">
      <!-- jvectormap -->
      <link rel="stylesheet"
            href="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
      <!-- Date Picker -->
      <link rel="stylesheet"
            href="/assets/adminlte/plugins/datepicker/datepicker3.css">
      <!-- Daterange picker -->
      <link rel="stylesheet"
            href="/assets/adminlte/plugins/daterangepicker/daterangepicker-bs3.css">
      <!-- bootstrap wysihtml5 - text editor -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

      <%@include file="components/shim.html"%>

  </head>
  <body class="hold-transition skin-blue sidebar-mini">
	<c:url value="/logout" var="logoutUrl" />
	    <form action="${logoutUrl}" method="post" id="signoutForm">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	     </form>
    <div class="wrapper">

      <%@include file="components/admin/header.html"%>

      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="/assets/adminlte/dist/img/avatar.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>${pageContext.request.userPrincipal.name}</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>

			<li class="active">
			  <a href="#dashboard">
				<i class="fa fa-dashboard"></i> <span>Dashboard</span>
			  </a>
			</li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-dashboard"></i> Home</a></li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <h2>Admin Panel Under construction. Will be coming as part of Transporter 1.5</h2>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <%@include file="components/footer.html"%>

    </div><!-- ./wrapper -->

    <%@include file="components/scripts.html"%>
    <%@include file="components/js/morris.html"%>
    <!-- Sparkline -->
    <script src="/assets/adminlte/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="/assets/adminlte/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="/assets/adminlte/moment.min.js"></script>
    <script src="/assets/adminlte/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="/assets/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="/assets/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="/assets/adminlte/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/assets/adminlte/dist/js/app.min.js"></script>
	<script>
		$('#signout').on('click', function(){
			$('#signoutForm').submit();
		});
	</script>
  </body>
</html>
