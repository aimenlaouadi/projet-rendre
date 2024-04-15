<?php 
require_once 'function/query.php';
require_once 'layout/header.php';




?>

    

    <main>

       
         <!--section2 imageprésenatation-->
        <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                    <div class="col-lg-6">
                        <div class=" mb-4 mt-5 justify-content-end espace">
                            <h1>Bienvenue  sur ReconversionCode</h1><br>

                            <p>Ce guide dédié à la reconversion professionnelle dans le domaine du développement informatique ! Notre plateforme offre un parcours complet de cours et de tutoriels conçus spécifiquement pour les personnes en reconversion, désireuses d'acquérir de nouvelles compétences dans le monde de la programmation.<br> Que vous veniez d'un secteur différent ou que vous cherchiez simplement à vous perfectionner dans le développement web, nos ressources pédagogiques sont adaptées à tous les niveaux.<br> Grâce à des explications claires et accessibles, accompagnées d'exercices pratiques et de projets réels, vous pourrez progresser à votre rythme et atteindre vos objectifs professionnels.<br> Rejoignez dès maintenant notre communauté bienveillante et passionnée, et lancez-vous dans une nouvelle aventure professionnelle enrichissante grâce à ReconversionCode !</p>
                            
                        </div>
                    </div>

                        <div class="col-lg-6">
                            <div class=" mb-4 ">
                                <img src="img/pexels-kevin-ku-577585(1).jpg" alt="presentation image">
                            </div>
                        </div>

                </div>
            </div>
        </section>

    
        <!--section2 Citation-->
        <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                    <div class="col-lg-12">
                        <div class=" mb-4 mt-5 text-center">
                            

                            <h5>"La plupart des hommes ont un moment dans leur vie où ils peuvent faire de grandes choses, c'est celui où rien ne leur semble impossible."</h5>
                            
                        </div>
                    </div>

                        

                </div>
            </div>
        </section>
     
        

         <!--section2 titre Nos derniers tutos-->
         <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                        
                        <div class="col-lg-2">
                            <div class=" mb-4 ">
                               
                            </div>
                        </div>

                        <div class="col-lg-8 text-center">
                            <div class=" mb-4 mt-3">
                                <h2 class="border-top mb-3"></h2>

                                <h2>Nos derniers tutos</h2>
                            </div>
                        </div>

                        <div class="col-lg-2">
                            <div class=" mb-4 ">
                
                            </div>
                        </div>

                </div>
            </div>
        </section>

           <!--section2 imagedeslanguages-->
           <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                        
                        
                      
                        <!--Affichage des cours en boucle-->

                        <?php 

                        $coursall = get_coursall(); 
                        foreach ($coursall as $cours){
                            
                         ?>
                        <div class="col-lg-4">
                            <div class="mb-4 shadow-inner">
                                <div class="card ">
                                        <h2 class="text-center"><?php echo $cours['titre_name']?></h2>
                                    <div class="text-center">
                                        <img src="logo/<?php echo $cours['image'] ?>" alt="<?php echo $cours['titre_name']?>">
                                    </div>    
                                    <div class="card-body">
                                      <h5 class="card-title"><?php ?></h5>
                                      <p class="card-text"><?php ?></p>
                                      <a class="btn btn-primary" href="tutoriels.php?id=<?php echo $cours['cours_id']; ?>" role="button"><?php ?>Accéder aux tutos</a>

                                    </div>
                                </div>
                                
                            
                            </div>
                        </div>
                        <?php }?>    

                        
                        </div>
                    </div>
                        

                </div>
            </div>
        </section>

        
        

    </main>


<?php require_once 'layout/footer.php';   

       





