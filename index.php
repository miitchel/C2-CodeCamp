<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once 'head.php' ?>
  <title>CodeCamp</title>
</head>

<?php 
    require_once 'backend/conn.php';
    $query = 'SELECT * FROM songteksten';
    $statement = $conn->prepare($query);
    $statement->execute();
    $songteksten = $statement->fetchAll(PDO::FETCH_ASSOC);
    
    require_once 'backend/conn.php';
    $query = 'SELECT * FROM filmpersonages';
    $statement = $conn->prepare($query);
    $statement->execute();
    $filmpersonages = $statement->fetchAll(PDO::FETCH_ASSOC);
    
    require_once 'backend/conn.php';
    $query = 'SELECT * FROM gereedschap';
    $statement = $conn->prepare($query);
    $statement->execute();
    $gereedschappen = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<body>
  <header>
    <?php require_once 'header.php' ?>
  </header>

  <main>
    <div class="wrapper">
      <div class="clock" id="clock">
        00:00
      </div>

      <div class="content-preview">
        <div class="preview">
          <h2>Songtekst</h2>
          <div class="preview-body">
            <?php $item = $songteksten[array_rand($songteksten)]; 
            
              require 'preview.php';
            ?>
            
          </div>
        </div>

        <div class="preview">
          <h2>Film</h2>
          <div class="preview-body">
            <?php $item = $filmpersonages[array_rand($filmpersonages)]; 
              
              require 'preview.php';
            ?>
          </div>
        </div>

        <div class="preview">
          <h2>Gereedschap</h2>
          <div class="preview-body">
            <?php $item = $gereedschappen[array_rand($gereedschappen)]; 
              
              require 'preview.php';
            ?>
          </div>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once 'footer.php' ?>
  </footer>

</body>

</html>
