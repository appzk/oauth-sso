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
        <h2 class="form-signin-heading">OAUTH 2.0 (Client Application) </h2>
        <a href="http://localhost/oauth/index.php/Oauth2/authUser/login?response_type=code&client_id=testclient&redirect_uri=http://localhost/oauth/index.php/Oauth2/client&state=xyz&scope=userinfo"><button class="btn btn-lg btn-primary btn-block" type="submit">LogIn From Client</button></a>
        <br/>
        <?php if (isset($_SESSION['is_login']) and $_SESSION['is_login'] != NULL) {?>
        <a href="http://localhost/oauth/index.php/Oauth2/authUser/logout"><button class="btn btn-lg btn-primary btn-block" type="submit">LogOut From Client</button></a>
        <?php } ?>
    </div> <!-- /container -->
</body>
</html>