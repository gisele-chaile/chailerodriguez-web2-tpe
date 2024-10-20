<?php
class GenerosModelo{

    private $db;

    function __construct(){
        $this->db=$this->conectarse();

    }

    private function conectarse() {
        $db = new PDO('mysql:host=localhost;'.'dbname=db_biblioteca;charset=utf8', 'root', '');
        return $db;

    }
    
    public function obtenerGeneros(){

        $query = $this->db->prepare("SELECT * FROM genero");
        $query->execute();

        $generos = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
            
            return $generos;

    }
    
    public function obtenerGenero($id){
        //obtengo un objeto del arreglo, pasando por parámetro el id que corresponda
        $query = $this->db->prepare('SELECT * FROM genero WHERE ID_genero = ?');
        //id=? para evitar inyección sql
        $query->execute([$id]);

        $genero = $query->fetch(PDO::FETCH_OBJ);

        return $genero;
    }
    function agregarGenero($nombre,$descripcion,$generosrelacionados){
    
        $query= $this->db->prepare('INSERT INTO genero(Nombre, Descripcion, Relacionado) VALUES(?,?,?) ');
        $query->execute([$nombre,$descripcion,$generosrelacionados]);
        
        $id = $this->db->lastInsertId();
        return $id;
        
    }

    function borrarGenero($id){
        $query=$this->db->prepare('DELETE FROM genero WHERE ID_genero = ?');
        $query->execute([$id]);
    }
    public function editarGenero($id, $nombre, $descripcion, $generosrelacionados) {
        // Validaciones simples
        if (empty($id) || empty($nombre)) {
            throw new Exception("El ID y el nombre no pueden estar vacíos.");
        }
    
        // Preparar la consulta SQL
        $query = $this->db->prepare('UPDATE genero SET nombre = ?, descripcion = ?, Relacionado = ? WHERE ID_genero = ?');
    
        try {
            // Ejecutar la consulta con los parámetros proporcionados
            return $query->execute([$nombre, $descripcion, $generosrelacionados, $id]);
        } catch (Exception $e) {
            // Manejo de errores
            throw new Exception("Error al editar género: " . $e->getMessage());
        }
    }
    
    public function actualizarGenero($nombre, $descripcion, $generosrelacionados ) {      
            $query = $this->db->prepare('UPDATE genero SET Nombre = ?, Descripcion = ?, Relacionado = ?, WHERE ID_genero = ?');
            $query->execute([$nombre, $descripcion, $generosrelacionados ]);
        } 

    
 }

 
