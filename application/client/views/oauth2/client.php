<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Client 1</title>
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
        <h2 class="form-signin-heading">OAUTH 2.0 (Client 1 Application) </h2>
        
        <?php if (isset($_SESSION['is_login']) and $_SESSION['is_login'] != NULL) {?>
        <a href="http://localhost/oauth/provider.php/Oauth2/authUser/logout/?url=http://localhost/oauth/client.php/Oauth2/client"><button class="btn btn-lg btn-primary btn-block" type="submit">LogOut From Client 1</button></a>
        <?php }else{ ?>
        <a href="http://localhost/oauth/provider.php/Oauth2/authUser/login?response_type=code&client_id=testclient&redirect_uri=http://localhost/oauth/client.php/Oauth2/client&state=xyz&scope=userinfo"><button class="btn btn-lg btn-primary btn-block" type="submit">LogIn From Client 1</button></a>
        <?php } ?>
    </div>
</body>
</html>