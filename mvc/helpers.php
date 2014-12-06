<?php
/**
 * Created by PhpStorm.
 * User: Alfredo N
 * Date: 21/10/14
 * Time: 05:20 PM
 */
function view ($plantilla,$variables = array()){
    extract($variables);
    require("views/".$plantilla.".tpl.php");
}
function controller($nombre){
    if(empty($nombre)){
        $nombre="home";
    }
    $archivo="controllers/$nombre.php";
    if(file_exists($archivo)){
        require($archivo);
    }else{
        echo("Error archivo no encontrado");
    }

}