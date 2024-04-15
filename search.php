<?php 

require_once 'function/query.php';
require_once 'function/error.php';
require_once 'layout/header.php';

$search = $_GET['search'];

if (isset($_GET['search'])) {
    $searchQuery = $_GET['search']; // Récupérer la valeur de recherche depuis la superglobale $_GET

    // Appeler la fonction getSearch() avec la valeur de recherche
    $searchResult = getSearch($searchQuery);

    if ($searchResult) {
        // Le résultat de la recherche est disponible
        // Faites quelque chose avec le résultat, par exemple l'afficher
        echo "Résultat de la recherche : ";
        
    } else {
        // Aucun résultat trouvé
        echo "Aucun résultat trouvé pour la recherche!";
    }
}



foreach ($searchResult as $search){
                            
    ?>
   <div class="col-lg-4">
       <div class="mb-4 shadow-inner">
           <div class="card ">
               <h2 class="text-center"><?php echo $search['titre_name']?></h2>
               <div class="text-center">
               <img src="logo/<?php echo $search['image'] ?>" alt="">
               </div>    
               <div class="card-body">
                 <h5 class="card-title"><?php ?></h5>
                 <p class="card-text"><?php ?></p>
                 <a class="btn btn-primary" href="tutoriels.php?id=<?php echo $search['cours_id']; ?>" role="button"><?php ?>Accéder</a>

               </div>
           </div>
           
       
       </div>
   </div>
   <?php }?>    




<?php
