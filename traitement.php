<?php 

require_once 'function/query.php';
require_once 'function/error.php';
require_once 'function/common.php';


if (!isset($_POST['email'])){
    redirect('contact.php');
}


$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$email = $_POST['email'];
$message = $_POST['message'];


if (empty($email)){
    redirect('contact.php?error=' . FIELD_EMPTY);
    
}

if (filter_var($email, FILTER_VALIDATE_EMAIL) === false){
    redirect('contact.php?error=' .EMAIL_INVALID);
}


try {
    $pdo = getConnection();
} catch (PDOException $e) {
    echo "Erreur lors de la connexion à la base de données";
    exit;
}


require_once __DIR__ .'/function/connectiondb.php';


$insert= getinser($nom, $prenom, $email, $message);


redirect('remerciement.php');
