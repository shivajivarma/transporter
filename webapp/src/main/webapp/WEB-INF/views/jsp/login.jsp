<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page import = "codemons.transporter.utils.WebPropertiesUtil" %>
<% WebPropertiesUtil resource=WebPropertiesUtil.getInstance(); %>
<c:set var="themePath" scope="session" value="${pageContext.request.contextPath}/assets/frameworks/adminLTE"/>
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
    <link rel="stylesheet" href="${themePath}/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${themePath}/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${themePath}/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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

		<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>

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

    <!-- jQuery 2.1.4 -->
    <script src="${themePath}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="${themePath}/bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="${themePath}/plugins/iCheck/icheck.min.js"></script>
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
