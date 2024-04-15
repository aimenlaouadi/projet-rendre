


<?php

require_once 'layout/header.php';
require_once 'function/query.php';


$id = $_GET['id'];
$service = get_cours($id);
?>

    

    <main>

       
         <!--section2 imageprésenatation-->
        <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                        <div class="col-lg-12">
                            <div class="mt-5 mb-4 text-center">
                                <h1>A savoir</h1>
                                
                            </div>
                        </div>




                        
                        <div class="col-lg-12 text-center">
                            <div class="mt-5 mb-4">
                                <h1><?php echo $service['titre_name'];?></h1><br>
                                
                                <iframe width="560" height="315" src="<?php echo $service['video']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                
                            </div>
                        </div>

                </div>
            </div>
        </section>

    
              
         <!--section2 titre-->
         <section class="section2   imageslider" > <!-- ICI on met si on veut un backgroud à la section en ajoutant sa class -->
            <div class="container-fluid"> <!-- container si on touche pas container-fluid si on touche -->
                <div class="row">
                       
                        
                        <div class="col-lg-12">
                            <div class="border mb-4 text-center">
                                
                                
                                
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="border mb-4 text-center">    
                            <p><?php echo $service['descriptif'];?></p>
                            </div>
                        </div>

                      
                </div>
            </div>
        </section>

       


    </main>


<?php 
require_once 'layout/footer.php';