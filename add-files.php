<?php
require_once 'function/common.php';
require_once 'function/error.php';
require_once 'function/query.php';
require_once 'classe/TextUtils.php';



$title_name = $_POST['nom'];
$video = $_POST['video'];
$descriptif = $_POST['descriptif'];

if(isset($_FILES)){
    $file = $_FILES['image'];
    
}



['filename' => $uploadFilename, 'extension' => $uploadFileExt] = pathinfo($file['name']);
$filename = $uploadFilename . '' . TextUtils::randomString(25) . '.' . $uploadFileExt;

$destination = __DIR__ . '/uploads/' . $filename;

if (move_uploaded_file($file['tmp_name'], $destination))
{
    echo "Fichier uploader";
    
}



try {
    $pdo = getConnection();
} catch (PDOException $e) {
    echo "Erreur lors de la connexion à la base de données";
    exit;
}

require_once __DIR__ .'/function/connectiondb.php';

$upload= getUpload($title_name, $video, $filename, $descriptif);

redirect('remerciement.php');