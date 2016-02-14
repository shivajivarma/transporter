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
    <link rel="shortcut icon" type=image/png href=${pageContext.request.contextPath}/assets/favicon.ico>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/dist/css/skins/skin-blue.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/iCheck/all.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/adminlte/plugins/datatables/dataTables.bootstrap.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
      </c:choose>
      <%@include file="components/footer.html"%>

    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="/assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/knob/jquery.knob.js"></script>
    <!-- InputMask -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/input-mask/jquery.inputmask.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/iCheck/icheck.min.js"></script>
    <!-- DataTables -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/dist/js/app.min.js"></script>
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

            userApp.load('${pageContext.request.userPrincipal.name}');

        });
	</script>
    <script>
      $(function () {
        //Enable iCheck plugin for checkboxes
        //iCheck for checkbox and radio inputs
        $('.trip-tickets input[type="checkbox"]').iCheck({
          checkboxClass: 'icheckbox_flat-blue',
          radioClass: 'iradio_flat-blue'
        });

        //Enable check and uncheck all functionality
        $(".checkbox-toggle").click(function () {
          var clicks = $(this).data('clicks');
          if (clicks) {
            //Uncheck all checkboxes
            $(".trip-tickets input[type='checkbox']").iCheck("uncheck");
            $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
          } else {
            //Check all checkboxes
            $(".trip-tickets input[type='checkbox']").iCheck("check");
            $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
          }
          $(this).data("clicks", !clicks);
        });

      });
    </script>
    <!-- page script -->
    <script>
      $(function () {
        function filterGlobal () {
            $('#example2').DataTable().search(
                    $('#global_filter').val(),
                    false,
                    false
            ).draw();
        }

        table = $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });

        $('#global_filter').on( 'keyup click', function () {
          filterGlobal();
        } );
      });
    </script>
  </body>
</html>
