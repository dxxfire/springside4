<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
  import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>登录页</title>
</head>

<body>
  <form id="loginForm" action="${ctx}/login" method="post"
    class="form-horizontal">
    <%
      String error = (String) request
    					.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
    			if (error != null) {
    %>
    <div class="alert alert-error input-medium controls">
      <button class="close" data-dismiss="alert">×</button>
      登录失败，请重试.
    </div>
    <%
      }
    %>
    <div class="form-group">
      <div class="col-md-1">
        <label for="username" class="control-label">用户名:</label>
      </div>
      <div class="col-md-2">
        <input type="text" class="form-control" name="username"
          id="username" placeholder='请输入用户名'>
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-1">
        <label for="password" class="control-label">密码:</label>
      </div>
      <div class="col-md-2">
        <input type="password" class="form-control" name="password"
          id="password" placeholder='请输入密码'>
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-1">
        <button class="btn btn-info" type="submit">登录</button>
      </div>
      <div class="col-md-2">
        <button class="btn btn-default" type="reset">重置</button>
      </div>
    </div>
  </form>

  <script>
      $(document).ready(function() {
        $("#loginForm").validate();
      });
    </script>
</body>
</html>
