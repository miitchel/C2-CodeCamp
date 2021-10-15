<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp</title>
</head>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>
  
  <main>
    <div class="wrapper">
      <?php
      $id = $_GET['id'];
      $query = "SELECT * FROM songteksten WHERE id = :id";
      $statement = $conn->prepare($query);
      $statement->execute([":id" => $id]);
      $songtekst = $statement->fetch(PDO::FETCH_ASSOC);
      ?>


      <h1><?php echo $songtekst['artiest'] ?> - <?php echo $songtekst['titel'] ?></h1>
      <pre><?php 
          if($songtekst['songtekst'] == "[Instrumental]"){
            echo "Instrumentaal nummer";
          }
          else{
            echo $songtekst['songtekst'];
          }
        ?>
      </pre>
    </div>
  </main>
  
  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
