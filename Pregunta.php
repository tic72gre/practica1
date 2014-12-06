<?php
class Pregunta {
    public  $bien;
    public function mostarpreguntas(){
        echo"<form method='POST' action='' >";
        for($y=1; $y<=10; $y++){
            $id=rand(1,25);
            $sql="select * from preguntas where idp=$id";
            $consulta=mysql_query($sql)or die("Error de consulta");
            $pregunta=mysql_result($consulta,0,'pregunta');
            $a=mysql_result($consulta,0,'idp');
            echo"$y.-$pregunta <br><input type='hidden' name='id$y' id='$id$y' value='$a'/> <input type='radio' value='1' name='p$y' id='p$y'>Verdadero<input type='radio' value='0' name='p$y' id='p$y'>Falso <br> ";
        }
        echo"<input type='submit' name='submit' id='submit' VALUE='Evaluar' /></form>";
    }
    public function validarpreguntas($idp,$respuesta){
        $sql="select respuesta from preguntas where idp=$idp";
        $consulta=mysql_query($sql)or die("Error de consulta");
        $res=mysql_result($consulta,0,'respuesta');
        $b=$this->bien;
        if($res==$respuesta){
            $b=$b+1;
            $this->bien=$b;
        }
    }
    public function modificaCalificacion($idu,$calificacion){
        $sql="select * from calificaciones where idu=$idu";
        $consulta=mysql_query($sql)or die("Error de consulta".mysql_error());
        $cuantos=mysql_num_rows($consulta);
        if($cuantos>0){
            $cal=mysql_result($consulta,0,'calf');
            if($cal<$calificacion){
                $sql2="UPDATE calificaciones SET calf='$calificacion' WHERE idu=$idu";
                $consulta2=mysql_query($sql2)or die("Error de consulta".mysql_error());
                echo"Tu Nueva Calificacion de $calificacion ha sido registrada.<br><a href='?url=cuestionario'>Volverlo a Intentar</a> ";
            }else{
                echo"Tu calificion no ha sido modificada<br><a href='?url=cuestionario'>Volverlo a Intentar</a> ";
            }
        }
        else{
            $sql3="insert into calificaciones(idu,calf) values ($idu,$calificacion)";
            $consulta3=mysql_query($sql3)or die("Error de consulta".mysql_error());
            echo"Tu Calificación de $calificacion ha sido registrada.<br><a href='?url=cuestionario'>Nueva Oportunidad</a> ";
        }
    }
}