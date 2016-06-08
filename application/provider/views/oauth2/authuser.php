<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>:X:</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="As we do,as you know.">
    <meta property="og:type" content="website">
    <meta property="og:title" content="">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="">
    <meta property="og:description" content="">
    <meta name="twitter:title" content="">
    <link rel="publisher" href="">
    <link href="http://localhost/oauth/assert/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <form class="form-signin" method="POST">
        <h2 class="form-signin-heading">OAUTH 2.0 (Provider Application) : Please sign in </h2>
        <?php  if (isset($error) and $error != NULL) {?>
        <div class="alert alert-danger" role="alert">
        <?php echo $error;?>
        </div>
        <?php }?>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="input" class="form-control"  name="username" value="user" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" class="form-control md-4" name="password" value="pass" placeholder="Password">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>

        <p class="help-block ">Uri : </p>
        <a href="http://localhost/oauth/index.php/Oauth2/authUser/login?response_type=code&client_id=testclient&redirect_uri=http://localhost/oauth/index.php/Oauth2/client&state=xyz&scope=userinfo">http://localhost/oauth/index.php/Oauth2/authUser/login?response_type=code&client_id=testclient&redirect_uri=http://localhost/oauth/index.php/Oauth2/client</a>
    </div> <!-- /container -->
</body>
</html>