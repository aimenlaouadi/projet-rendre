<?php
require_once 'layout/header.php';
?>





<main>
<form style="width: 22rem;" method="POST" action="add-files.php" enctype="multipart/form-data">
  <!-- Name input -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form5Example1">Nom du cours</label>
        <input type="text" id="form5Example1" class="form-control" name="nom" placeholder="Nom" />
    </div>

  <!-- Email input -->
    <div data-mdb-input-init class="form-outline mb-4">
      <label class="form-label" for="form5Example2">Vidéo</label>
      <input type="text" id="form5Example2" name="video" class="form-control" placeholder="Video" />
    </div>
  
    <div data-mdb-input-init class="form-outline mb-4">
        <label for="formFileMultiple" class="form-label">files</label>
        <input class="form-control" type="file"  name="image" id="formFileMultiple" multiple />
    </div>


   <!-- Message input -->
   <div data-mdb-input-init class="form-outline mb-4">
       <label class="form-label" for="form6Example7">Votre message</label>
        <textarea class="form-control" id="form6Example7" rows="4" name="descriptif" placeholder="Nom"></textarea>
    </div>


  <div>
    
    <input type="submit" value="Envoyer"  class="btn btn-primary btn-block mb-4 mt-3"/>
    
 </div>

  
</form>

</main>
















<?php
require_once 'layout/footer.php';?>