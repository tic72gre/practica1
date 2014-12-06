<?php
error_reporting(0);
require("Pregunta.php");
require("conexion.php");
$pregunta = new Pregunta();
if(isset($_POST['submit'])){
    for($y=1; $y<=10; $y++){
        $id=$_REQUEST["id$y"];
        $re=$_REQUEST["p$y"];
        $pregunta->validarpreguntas($id,$re);
        //$co=$pregunta->bien;
        //echo"$co";
        if($y==10){
            $co=$pregunta->bien;
           // echo"$co";
            $idu=$_COOKIE['idcue'];
            $pregunta->modificaCalificacion($idu,$co);
        }
    }
}else{
    ?>
    <html>
    <head>
        <title>Cuestionario</title>
        <meta charset="utf-8">
    </head>
    <body>
    <h1><?=$mensaje?></h1>
    <?php
    $pregunta->mostarpreguntas();
    ?>
    </body>
    </html>
    <?php
}

?>
