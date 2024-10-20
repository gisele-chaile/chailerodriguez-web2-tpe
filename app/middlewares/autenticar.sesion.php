<?php
    function autenticarSesion($respuesta){
    session_start();
    if(isset($_SESSION['ID_usuario'])){
        $respuesta->usuario = new stdClass();
        $respuesta->usuario->ID_usuario = $_SESSION['ID_usuario'];
        $respuesta->usuario->usuario = $_SESSION['ususario'];
        return;
    }
   }
   
    