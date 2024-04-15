<?php
require_once __DIR__ .'/../function/connectiondb.php';




function get_coursall() {

    $pdo = getConnection();

    $sql = "SELECT * FROM cours";
   
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
  
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }



  function get_cours(int $id) {

    $pdo = getConnection();

    $sql = "SELECT * FROM cours WHERE cours_id = :id";
   
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        'id' => $id
    ]);
  
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }
  



function getinser($nom, $prenom, $email, $message) {
    $pdo = getConnection();
    $sql = "INSERT INTO formulaire(Nom, Prénom, Email, Message) VALUES (?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute([$nom, $prenom, $email, $message]);

    header('Location: remerciement.php');
    
    return $stmt;
}


function getSearch(){
    $pdo = getConnection();
    $search = $_GET['search']; 

    $sql = "SELECT * FROM cours WHERE titre_name LIKE :search"; 

    $stmt = $pdo->prepare($sql);
    $stmt->execute(['search' => '%' . $search . '%']); 

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}


function getUpload($titre_name, $video, $image, $descriptif) {
    $pdo = getConnection();
    $sql = "INSERT INTO cours(titre_name, video, image, descriptif) VALUES (?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql); 
    $stmt->execute([$titre_name, $video, $image, $descriptif]);


    return $stmt;
}
