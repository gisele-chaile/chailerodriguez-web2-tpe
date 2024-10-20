<?php
require_once 'app/modelos/usuario.modelo.php';
require_once 'app/vistas/usuario.vista.php';

class UsuarioControlador {
    private $modelo;
    private $vista;

    public function __construct() {
        $this->modelo = new UsuarioModelo();
        $this->vista = new UsuarioVista();
    }

    public function mostrarLogin() {
        // Muestro el formulario de login
        return $this->vista->mostrarLogin();
    }

    public function login() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') { 
            if (!isset($_POST['usuario']) || empty($_POST['usuario'])) {
                return $this->vista->mostrarLogin('Debe ingresar un nombre de usuario');
            }
    
            if (!isset($_POST['contraseña']) || empty($_POST['contraseña'])) {
                return $this->vista->mostrarLogin('Ingrese una contraseña válida');
            }
    
            $usuario = $_POST['usuario'];
            $contraseña = $_POST['contraseña'];
    
            //Comprobar que el usuario está en la base de datos
            $usuarioFromDB = $this->modelo->obtenerUsuario($usuario);

            if($usuarioFromDB && password_verify($contraseña, $usuarioFromDB->contraseña)){ 

                $_SESSION['ID_usuario'] = $usuarioFromDB->ID_usuario;
                $_SESSION['usuario'] = $usuarioFromDB->usuario;
                $_SESSION['mensaje'] = 'Has iniciado sesión correctamente';
          
            // if($usuarioFromDB){ 
            // var_dump($usuarioFromDB);
            // var_dump(password_verify($contraseña, $usuarioFromDB->contraseña));
            // }
        } else {
                return $this->vista->mostrarLogin('Datos incorrectos');
            }
        }else{
            
            header('Location: ' . BASE_URL . 'mostrar-login');
   }
    }

    public function logout() {
        session_start(); 
        session_destroy(); 
        header('Location: ' . BASE_URL );
    }
}


   