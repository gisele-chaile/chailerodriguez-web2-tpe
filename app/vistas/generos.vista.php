<?php

class GenerosVista {
    //public $generos = null;
    private $usuario = null;
    
    public function __construct($usuario){
        $this->usuario = $usuario;
    }

    public function mostrarGeneros($generos){
        $count = count($generos); //cantidad de generos
        require 'templates/lista.generos.phtml';

    }
    public function mostrarGenero($genero){
        require 'templates/mostrar.genero.phtml';
    }

    public function listarGeneros($generos){
        require 'templates/listar.generos.phtml';
    }
    

    public function mostrarFormulario($genero = null){
        require 'templates/formulario.genero.phtml';
    }

    public function mostrarError($error){
        require 'templates/error.phtml';
    }


    public function editarGenero($nombre,$descripcion,$generosrelacionaos,$id){
        require 'templates/formulario.editar.genero.php';
    }
    public function agregarGenero($nombre,$descripcion,$generosrelacionaos,$id){
        require 'templates/formulario.agregar.genero.phtml';
    }
}




