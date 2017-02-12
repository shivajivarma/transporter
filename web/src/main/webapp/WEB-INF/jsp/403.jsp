<%@ page import = "codemons.transporter.utils.WebPropertiesUtil" %>
<% WebPropertiesUtil resource=WebPropertiesUtil.getInstance(); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${title}</title>

    <%@include file="components/imports.html"%>

    <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/dist/css/skins/_all-skins.min.css">

    <%@include file="components/shim.html"%>

</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="${pageContext.request.contextPath}/" class="navbar-brand"><b><%=resource.getLabel("app.title")%></b><%=resource.getLabel("app.version")%></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container">

      <!-- Main content -->
      <section class="content">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">HTTP Status 403 - Access is denied</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              ${msg}
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        <b>Version</b> 1.0
      </div>
      <strong>Copyright &copy; 2015 <a href="http://codemons.com">Codemons</a>.</strong> All rights
      reserved. Based on <a href="https://almsaeedstudio.com/">AdminLTE</a>.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

<%@include file="components/scripts.html"%>

<!-- SlimScroll -->
<script src="${pageContext.request.contextPath}/assets/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/assets/adminlte/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/assets/adminlte/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/assets/adminlte/dist/js/demo.js"></script>
</body>
</html>
