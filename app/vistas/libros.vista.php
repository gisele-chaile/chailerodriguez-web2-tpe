<?php
class LibrosVista {
    //public $libros = null;
    private $usuario = null;

    public function __construct($usuario){
        //$this->libros = $libros;
        $this->usuario =$usuario;
    }

    public function mostrarLibros($libros){
        $count = count($libros); //cantidad de libros
        require 'templates/lista.libros.phtml';
    }

    public function mostrarLibro($libro){
        require 'templates/mostrar.libro.phtml';
    }

    public function mostrarLibroPorGenero($genero, $libros){
        require 'templates/genero.phtml';
    }

    public function listarLibros($libros){
        require 'templates/listar.libros.phtml';
    }

    public function mostrarFormulario($generos, $libro = null){ //si libro es null se muestra el formulario vacío 
        require 'templates/formulario.libro';
    }
    
    public function mostrarError($error){
        require 'templates/error.phtml';
    }


    public function editarLibro($libro){
    require 'templates/formulario.libro.phtml';  
    }

    public function agregarLibro(){
        require 'templates/formulario.libro.phtml';
    }

    public function actualizarLibro($libros){
        require 'templates/listar.libros.phtml';
    }


}