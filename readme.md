
# Projet Laouadi Aimen site de cours

## Site index [index.php](index.php)
j'ai require la connection et l'appel aux fonctions sur la page query.
J'ai réalisé ma page de manière statique en faisant une structure de base. Par la suite, j'ai pris une nav et un footer sur le site [ https://mdbootstrap.com/] tout en respectant l'inclusion de fichiers avec un dossier layout ou se trouve le footer et header[footer.php](layout/footer.php). 

Ensuite, j'ai voulu rendre mon site dynamique en créant un fichier [query.php](function/query.php), ou j'ai stocker chaque fonction dont j'avais besoin. 

### fonction qui selectionne tous les cours dans la bdd
```
function get_coursall() {

    $pdo = getConnection();

    $sql = "SELECT * FROM cours";
   
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
  
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
```

Avec cette fonction j'ai souhaité mettre en avant  toutes mes compétences acquises  en cours, en amont créer une connection grâce à une fonction getconnection, que je pourrais utiliser sur plusieurs pages et qui permettra de sécuriser ma connexion. 

Je suis passé par la création d'une fonction get_coursall ce qui m'a permis d'accéder à ma base de données et  d'efectuer une requete SELECT qui selectionne toute les données sur la table cours. Par la suite, j'ai créé une requête préparé et je retourne un Fetchall qui me retourne toutes les données. Mon but étant  toujours de mettre en avant mes compétences. J'ai aussi créé une boucle foreach qui m'a permis.

 $coursall = get_coursall(); 
foreach ($coursall as $cours){
                            
?>


### Gèrer ma page de manière dynamique
Pour rendre ma page dynamique, j'ai  fais des echo.

Sur cette même page, j'ai effectué ma superglobale ce qui a identifié chaque cours dans une page tutoriel en fonction de l'id correspondant dans ma base de donnée.
<a class="btn btn-primary" href="tutoriels.php?id=<?php echo $cours['cours_id']; ?>" role="button"><?php ?>Accéder aux tutos</a>

j'ai utilisé le paramètre id= cours de ma table avec l'idée correspondante.


## Page tutoriels [tutoriels.php](tutoriels.php)
J'ai require la connection et l'appel aux fonctions sur la page query.
J'ai fais appel au paramtre get au debut de ma page ainsi qu'a la fonction cours.
Ce qui fais appel à un seul cours grace au fetch seul à chaque fois que je veux l'afficher. Sur cette même page j'ai fais en sorte de gérer dynamiquement la video et le descriptif de chaque cours.

function get_cours(int $id) {

    $pdo = getConnection();

    $sql = "SELECT * FROM cours WHERE cours_id = :id";
   
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        'id' => $id
    ]);
  
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }

## Formulaire de contact [contact.php](contact.php)
J'ai voulu avoir un formulaire de contact ou les utilisateurs peuvent m'écrire et je recois sur la bdd les messages. Sur chaque input du formulaire j'ai attribué un name que je recupère sur la page rebond.
Pour cela j'ai utilisé la methode POST pour ne pas afficher les données directement sur l'url et utilisé une page rebond que j'ai nommé traitement.php. 

### Page rebond du formulaire de contact traitement.php
J'ai require les fonctions les cas d'erreur et la redirection.

Dans un premier temps j'ai géré les cas d'erreurs avec le !isset qui vas checker si l'e-mail n'est pas défini. Je me suis alors redirigé sur la page contact ou j'ai recupéré chaque élément du formulaire grâce aux $_POST['avec le paramtère name du formulaire'], que j'ai affecté à une variable que j'utiliserais plus tard.

J'ai géré le cas d'erreur. Soit l'e-mail est vide soit il n'est pas valide. Dans ce cas, je réceptionne un message d'erreur que je definis dans une page error avec des constantes qui correspondes aux messages d'erreurs.

J'ai effectué un try et catch pour éviter tous les cas d'erreur liés à la connection.

J'ai require la connection à la bdd et j'ai fais appel à la fonction inser qui me permet d'inserer le nom prenom e-mail et message dans la bdd. Par la suite, j'ai mis une page redirection avec des remerciements.

## formulaire search [search.php](search.php)
j'ai crée un formulaire de recherche dans ma navbar j'ai crée un cas d'exeption j'ai tous detailler dan sle fichier ensuite jai créer une boucle foreach pour afficher les resultats de la recherche avec l'interface de ma page index.php.

## upload [upload.php](upload.php)
J'ai créé un formulaire d'upload ou j'ai mis un emethod pos avec un fichier rebond add-files et j'ai suivi la procedures pour les fichiers en mettant un enctype="multipart/form-data". Le but est de récuperer toutes les données de mon formulaire dans chaque name du $_POST. Ensuite, j'ai mis un isset et j'ai géré de maniere aleatoire le nom d'un fichier. EPour finir, j'ai fais en sorte d'affecter un chemin pour le téléchargement du fichier et j'ai créé une condition pour indiquer à chaque étape le téléchargement d'un fichier. Il ira dans le dossier upload.


## Conection à la base de données
Dans cette partie j'ai exporté ma bdd dans le dossier config.
identifiant: hb_pe8_pdo
 mot de passe: GaxfRc/igjo6os*J

