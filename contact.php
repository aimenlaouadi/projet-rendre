<?php
$title = "Contact";
require_once __DIR__ . '/layout/header.php'; ?>

<main>
    
    <h1>CONTACTEZ-NOUS</h1>

    
         <!--section3 Contact-->
         <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                        
                        <div class="col-lg-6">
                            <div class=" mb-4 ">
                            
                            <form action="traitement.php" method="POST">
               
                                <legend>Contact</legend>
                                
                                <div class="form-group">
                                <label for="nom">Entrez votre nom</label>
                                <input type="text" class="form-control mt-2" name="nom" placeholder="Entrez votre nom" required>
                                </div>
                                
                                <div class="form-group">
                                <label for="prenom">Entrez votre Prénom</label>
                                <input type="text" class="form-control mt-2" name="prenom" placeholder="Entrez votre Prénom" required>
                                </div>

                                <div class="form-group">
                                <label for="email">Entrez votre email</label>
                                <input type="email" class="form-control mt-2" name="email" placeholder="Entrez votre email" required>
                                </div> 
                                <div class="form-group">
                                <label for="bio">Votre message</label>
                                <textarea class="form-control mt-2" name="message" rows="3" placeholder="Entrez votre message" required></textarea>
                                </div>

                                <div class="form-group mt-4">        
                                <div class="text-white submit">
                                    <input type="submit" value="valider">
                                </div>
                    
              
                            </form>
                            
                            
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class=" mb-4 ">
                            
                            
                            
                            </div>
                        </div>

                        
                </div>
            </div>
        </section>

</main>

<?php require_once __DIR__ . '/layout/footer.php'; ?>
