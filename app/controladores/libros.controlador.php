<?php
require_once 'app/modelos/libros.modelo.php';
require_once 'app/vistas/libros.vista.php';
require_once 'app/modelos/generos.modelo.php';


class LibrosControlador {
    private $modelo;
    private $vista;
    private $generosModelo;

    public function __construct($respuesta = null) {
        $this->modelo = new LibrosModelo();
        $this->vista = new LibrosVista($respuesta ? $respuesta->usuario:null);
        $this->generosModelo = new GenerosModelo();
        
    }

    public function mostrarLibros(){
        $libros = $this->modelo->obtenerLibros();
        $generos = $this->generosModelo->obtenerGeneros();


        foreach ($libros as $libro){
            foreach($generos as $aux){
                if($aux->ID_genero == $libro->ID_genero){
                    $libro->genero = $aux;
                }
            }
        }

        if(!empty($libros))
            return $this->vista->mostrarLibros($libros);
        else
        return $this->vista->mostrarError('No existe');
    }

    public function mostrarLibro($id){
        $libro = $this->modelo->obtenerLibro($id);
        return $this->vista->mostrarLibro($libro);
    }

    public function mostrarLibrosPorGenero($id){
        $libros= $this->modelo->librosPorGenero($id);
        $generos=$this->generosModelo->obtenerGeneros();

        foreach ($libros as $libro) {
            foreach($generos as $aux){
                if($aux->ID_genero == $libro->ID_genero){
                    $libro->genero = $aux;
                }
            }
        }
    }

    public function listarLibros(){
        $libros= $this->modelo->obtenerLibros();
        $generos = $this->generosModelo->obtenerGeneros();
        foreach ($libros as $libro){
            foreach($generos as $aux){
                if($aux->ID_genero == $libro->ID_genero){
                    $libro->genero = $aux;
                }
            }
        }
    }


    public function agregarLibro(){
        if (!isset($_POST['titulo']) || empty($_POST['titulo'])){
            return $this->vista->mostrarError('Por favor ingrese un nombre');
        }
        if (!isset($_POST['autor']) || empty($_POST['autor'])){
            return $this->vista->mostrarError('Por favor complete el autor');
        }
        if (!isset($_POST['reseña']) || empty($_POST['reseña'])){
            return $this->vista->mostrarError('Por favor complete la reseña');
        }
        if (!isset($_POST['año']) || empty($_POST['año'])){
            return $this->vista->mostrarError('Por favor complete el año de publicación');
        }
        if (!isset($_POST['genero']) || empty($_POST['genero'])){
            return $this->vista->mostrarError('Por favor complete el género');
        }


        $titulo = $_POST['titulo'];
        $autor = $_POST['autor'];
        $reseña = $_POST['reseña'];
        $año = $_POST['año'];
        $id_genero = $_POST['genero'];

        $id = $this->modelo->agregarLibro($titulo, $autor, $reseña, $año, $id_genero);
        header('Location: ' . BASE_URL . 'mostrar-libros');
    }

    public function editarLibro($id) {
        $libro = $this->modelo->obtenerLibro($id);

        if (!$libro) {
            return $this->vista->mostrarError("No existe el libro");
        }
        
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        //Si el formulario ha sido enviado
            if (!isset($_POST['titulo']) || empty($_POST['titulo'])) {
                return $this->vista->mostrarError('Por favor ingrese el títuo');
            }
            if (!isset($_POST['autor']) || empty($_POST['autor'])) {
                return $this->vista->mostrarError('Por favor ingrese el autor');
            }
            if (!isset($_POST['reseña']) || empty($_POST['reseña'])) {
                return $this->vista->mostrarError('Por favor ingrese la reseña');
            }
        
            if (!isset($_POST['año']) || empty($_POST['año'])) {
                return $this->vista->mostrarError('Por favor ingrese el año');
            } 
            //Obtengo los nuevos valores
            $titulo = $_POST['titulo'];
            $autor = $_POST['autor'];
            $reseña = $_POST['reseña'];
            $año = $_POST['año'];
            $genero = $_POST['id_genero'];

            $this->modelo->actualizarLibro($id, $titulo, $autor, $reseña, $año, $genero);

            header('Location: ' . BASE_URL . 'mostrar-libros');
        }
        else{
            $this->mostrarFormulario($libro); 
        }
    }

    public function mostrarFormulario($libro = null){
        $generos = $this->generosModelo->obtenerGeneros();
        $this->vista->mostrarFormulario($generos, $libro);
    }


    public function eliminarLibro($id){
        $libro = $this->modelo->obtenerLibro($id);
        if (!$libro){
            return $this->vista->mostrarError("No existe el libro con el id=$id");
        }
        $this->modelo->eliminarLibro($id);
        header('Location: ' . BASE_URL . 'mostrar-libros');
    }

}