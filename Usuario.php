<?php
class Usuario {
    public function validar($usuario,$psw){
        $contra=$psw;
        $sql="select * from usuarios where usuario='$usuario' and contrasena='$contra'";
        $query=mysql_query($sql)or die("Error de consulta");
        $cuantos=mysql_num_rows($query);
        if($cuantos>0){
            $idu=mysql_result($query,'0','idu');
            setcookie('idcue',$idu);
            print "<meta http-equiv='refresh' content='0; url=?url=cuestionario'>";
        }else{
            print "<meta http-equiv='refresh' content='0; url='>";
        }
    }
} 