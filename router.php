// tabla de ruteo

// mostrar-libros  -> LibrosControlador->mostrarLibros();
// mostrar-libro  -> LibrosControlador->mostrarLibro();
// mostrar-generos  -> GenerosControlador->mostrarGeneros();
// mostrar-genero  -> GenerosControlador->mostrarGenero();
// libro-genero  -> LibrosControlador->mostrarLibrosPorGenero();
// listar-libros  -> LibrosControlador->listarLibros();
// listar-generos  -> GenerosControlador->listarGeneros();
// formulario-libros  -> LibrosControlador->mostrarFormulario();
// formulario-generos  -> GenerosControlador->mostrarFormulario();
// agregar-libro  -> LibrosControlador->agregarLibro();
// agregar-genero -> GenerosControlador->agregarGenero();
// eliminar-libro  -> LibrosControlador->eliminarLibro();
// eliminar-genero -> GenerosControlador->eliminarGenero();
// editar-libro  -> LibrosControlador->editarLibro();
// editar-genero -> GenerosControlador->editarGenero();
// mostrar-login  -> UsuarioControlador->mostrarLogin();
// login  -> UsuarioControlador->login();
// logout  -> UsuarioControlador->logout();

<?php
require_once 'libreria/respuesta.php';
require_once 'app/middlewares/autenticar.sesion.php';
require_once 'app/middlewares/verificar.sesion.php';
require_once 'app/controladores/generos.controlador.php';
require_once 'app/controladores/libros.controlador.php';
require_once 'app/controladores/usuario.controlador.php';

//defino la base url para la construccion de links semanticos 

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$respuesta = new Respuesta();

$action = 'mostrar-libros'; // accion por defecto si no se envia ninguna
if (!empty( $_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la acccion

$parametros = explode("/", $action );

//determina que camino seguir segun la accion
switch ($parametros[0]){
    case 'mostrar-libros': 
        //autenticarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->mostrarLibros();
        break;
    case 'mostrar-generos':
            //autenticarSesion($respuesta);
            $controlador = new GenerosControlador($respuesta);
            $controlador->mostrarGeneros();
            break;
    case 'mostrar-libro':
        $controlador = new LibrosControlador();
        $controlador->mostrarLibro($parametros[1]);
    case 'mostrar-genero':
        $controlador = new GenerosControlador($respuesta);
        $controlador->mostrarGenero($parametros[1]);
        break;
    case 'libro-genero':
        $controlador = new LibrosControlador($respuesta);
        $controlador->mostrarLibrosPorGenero($parametros[1]);
        break;  
    case 'listar-libros':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->listarLibros();
        break;
    case 'listar-generos':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new GenerosControlador($respuesta);
        $controlador->listarGeneros();
    case 'formulario-libro':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->mostrarFormulario();
        break; 
     case 'formulario-libro':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->mostrarFormulario();
        break;
    case 'formulario-genero':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new GenerosControlador($respuesta);
        $controlador->mostrarFormulario();
        break;
    case 'agregar-libro':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->agregarLibro();
        break;
    case 'agregar-genero':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new GenerosControlador($respuesta);
        $controlador->agregarGenero();
        break;

    case 'eliminar-libro':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->eliminarLibro($parametros[1]);
        break;
    case 'eliminar-genero':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new GenerosControlador($respuesta);
        $controlador->eliminarGenero($parametros[1]);
        break;
    case 'editar-libro':
        autenticarSesion($respuesta);
        verificarSesion($respuesta);
        $controlador = new LibrosControlador($respuesta);
        $controlador->editarLibro($parametros[1]);
    case 'editar-genero':
        autenticarSesion($respuesta);    
        verificarSesion($respuesta);
        $controlador = new GenerosControlador($respuesta);
        $controlador->editarGenero($parametros[1]);

    case 'mostrar-login':
        $controlador = new UsuarioControlador();
        $controlador->mostrarLogin();
        break;

    case'login':
        $controlador = new UsuarioControlador();
        $controlador->login();
        break;
        
    case 'logout':
        $controlador = new UsuarioControlador();
        $controlador->logout($usuario);
        break;

        default: 
            echo "404 Page Not Found"; 
            break;
    
    }
 


