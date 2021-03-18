<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
  <!-- Meta -->
  <meta charset="utf-8">
  <title>Log in - Musiqua</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Css -->
  <link rel='stylesheet'  href='resources/css/login.css' type='text/css' media='all' />
  <link href="resources/css/fonts.css" rel="stylesheet" type="text/css"  media="all" />

</head>
<body>

  <!--Header-->
  <header class="header default">
    <div class=" left-part">
      <a class="logo scroll" href="index.html">
        <h1 class="mb-0 uppercase">musiqua.</h1>
      </a>
    </div>
    <div class="right-part">
      <nav class="main-nav">
        <ul class="main-menu list-inline">
          <li><a class="scroll list-inline-item" href="indexServlet">Home</a></li>
          <li class="block-helper">
            <a href="#" class="scroll">Help</a>
          </li>
        </ul>
      </nav>
    </div>
  </header>

<section>
  <div class="content_log_in">
    <div class="row_log_in">
      <div class="col_log_in">
        <a href="#" class="btn btn-block btn-facebook" role="button">
          Continue with Facebook
        </a>
      </div>
    </div>
    <div class="row_log_in">
      <div class="col_log_in">
        <a href="#" class="btn btn-block btn-black btn-apple" role="button">
          Continue with Apple
        </a>
      </div>
    </div>
    <div class="row_log_in">
      <div class="col_log_in">
        <a class="btn btn-block btn-default btn-google" role="button">
          Continue with Google
        </a>
      </div>
    </div>

    <div class="row_log_in">
      <div class="col_log_in">
        <div class="divider_login">
          <strong class="divider_login-title">or</strong>
        </div>
      </div>
    </div>

    <form method="post">

      <div class="row_log_in">
        <div class="col_log_in">
          <label for="login-username" >
            Email address
          </label>
          <input type="text" class="form-control" name="email" value="email" id="login-username" placeholder="Email address" autocapitalize="off">
        </div>
      </div>

      <div class="row_log_in">
        <div class="col_log_in">
          <label for="login-password" >
            Password
          </label>
          <input type="password" class="form-control" name="password" value="password" id="login-password" placeholder="Password"  autocomplete="off">
        </div>
      </div>

      <div class="row_log_in">
        <div class="col_log_in">
          <p>
            <a id="reset-password" href="#">Forgot your password?</a>
          </p>
        </div>
      </div>

      <div class="row_log_in">
        <div class="col-sm-log-in">
          <button type="submit" class="btn btn-block btn-green" id="login-button">Log In</button>
        </div>
      </div>
    </form>

    <div id="sign-up-section">
      <div class="row_log_in">
        <div class="col_log_in">
          <div class="row_log_in">
            <div class="col_log_in">
              <div class="divider_login">
              </div>
            </div>
          </div>
          <div class="row_log_in text-center">
            <h2>Don't have an account?</h2>
          </div>
          <div>
            <div class="row_log_in">
              <div class="col_log_in">
                <a id="sign-up-link" class="btn btn-block btn-default" role="button" href="SignUpServlet">Sign up for Musiqua</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
