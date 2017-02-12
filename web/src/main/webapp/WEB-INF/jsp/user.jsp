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
      <link rel="stylesheet" href="/assets/adminlte/plugins/iCheck/all.css">
      <!-- Morris chart -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/morris/morris.css">
      <!-- jvectormap -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
      <!-- Date Picker -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/datepicker/datepicker3.css">
      <!-- Daterange picker -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/daterangepicker/daterangepicker-bs3.css">
      <!-- bootstrap wysihtml5 - text editor -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
      <!-- DataTables -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/datatables/dataTables.bootstrap.css">




      <%@include file="components/shim.html"%>

  </head>
  <body class="hold-transition skin-blue sidebar-mini">
	<c:url value="/logout" var="logoutUrl" />
	    <form action="${logoutUrl}" method="post" id="signoutForm">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	     </form>
    <div class="wrapper">

      <%@include file="components/user/header.html"%>
      <%@include file="components/user/side-nav.html"%>


      <c:choose>
         <c:when test="${page=='profile'}">
             <%@include file="components/user/profile.html"%>
         </c:when>
          <c:when test="${page=='mytrips'}">
              <%@include file="components/user/mytrips.html"%>
          </c:when>
          <c:otherwise>
              <%@include file="components/user/dashboard.html"%>
          </c:otherwise>
      </c:choose>
      <%@include file="components/footer.html"%>

    </div><!-- ./wrapper -->

    <%@include file="components/scripts.html"%>
    <!-- Morris.js charts -->
    <script src="/assets/adminlte/plugins/raphael-min.js"></script>
    <script src="/assets/adminlte/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="/assets/adminlte/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/assets/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="/assets/adminlte/plugins/knob/jquery.knob.js"></script>
    <!-- Select2 -->
    <script src="/assets/adminlte/plugins/select2/select2.full.min.js"></script>
    <!-- InputMask -->
    <script src="/assets/adminlte/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="/assets/adminlte/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="/assets/adminlte/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- daterangepicker -->
    <script src="/assets/adminlte/plugins/moment.min.js"></script>
    <script src="/assets/adminlte/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="/assets/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="/assets/adminlte/plugins/iCheck/icheck.min.js"></script>
    <!-- DataTables -->
    <script src="/assets/adminlte/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="/assets/adminlte/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="/assets/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="/assets/adminlte/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/assets/adminlte/dist/js/app.min.js"></script>

    <!-- Jquery LoadTemplate -->
    <script src="/assets/adminlte/plugins/mustache.min.js"></script>

    <script src="${pageContext.request.contextPath}/app/user.js"></script>
	<script>
		$('#signout').on('click', function(){
			$('#signoutForm').submit();
		});

        $(function () {
            $("#inputDOB").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            });

            userApp.load('${pageContext.request.userPrincipal.name}', '${page}');
        });
	</script>
  </body>
</html>
