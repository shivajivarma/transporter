<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

      <!-- iCheck -->
      <link rel="stylesheet" href="/assets/adminlte/plugins/iCheck/square/blue.css">

      <%@include file="components/shim.html"%>

  </head>
<body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="${pageContext.request.contextPath}/"><b><%=resource.getLabel("app.title")%></b><%=resource.getLabel("app.version")%></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

		<c:if test="${not empty error}"><div class="alert alert-danger" role="alert">${error}</div></c:if>
		<c:if test="${not empty info}"><div class="alert alert-info" role="alert">${info}</div></c:if>

		<form name='loginForm' action="<c:url value='/signin' />" method='POST'>

			<div class="form-group has-feedback">
				<input type='text' name='username' class="form-control" placeholder="username"><span class="fa fa-user form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input type='password' name='password' class="form-control" placeholder="Password"><span class="fa fa-key form-control-feedback"></span>
			</div>
			<div>
				<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
			</div><!-- /.col -->

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

		</form>

        <!--a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a-->

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <%@include file="components/scripts.html"%>
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/assets/adminlte/plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
