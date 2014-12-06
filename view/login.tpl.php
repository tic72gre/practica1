<?php
require('conexion.php');
require('Usuario.php');
$usuario=new Usuario();
if(isset($_POST['submit'])){
    $user=$_POST['user'];
    $psw=$_POST['contra'];
    $usuario->validar($user,$psw);
}else{
?>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--<link rel="icon" href="../../favicon.ico">-->

        <title>Cuestionario</title>

        <!-- Bootstrap core CSS -->
       

        <!-- Custom styles for this template -->
        <link href="bootstrap/css/signin.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="bootstrap/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="bootstrap/js/ie-emulation-modes-warning.js"></script>

    </head>

    <body>

    <div class="container">

        <form class="form-signin" role="form"  method="POST" action="">
            <h2 class="form-signin-heading"><center><font size='8' color='#red'>Bienvenido</h2></center>
			<center><tr><td><img src="images/login.png" width="250" height="250">
            <center><input type="text" class="form-control" placeholder="user name" name="user" required autofocus></center>
            <center><input type="password" class="form-control" placeholder="password" name="contra" required></center>
            <!-- <label class="checkbox">
                 <input type="checkbox" value="remember-me"> Remember me
             </label>-->
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" id="submit">Entrar</button>
        </form>
        <?php echo("<center><font color='#0000' size=4 >".$mensaje."</font></center>"); ?>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap/js/ie10-viewport-bug-workaround.js"></script>
    </body>
    </html>
<?php
}
?>
