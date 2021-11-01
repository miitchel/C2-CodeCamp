<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp - songtekst</title>
</head>

<?php
      $id = $_GET['id'];
      $query = "SELECT * FROM songteksten WHERE id = :id";
      $statement = $conn->prepare($query);
      $statement->execute([":id" => $id]);
      $songtekst = $statement->fetch(PDO::FETCH_ASSOC);
      
      $query = "SELECT * FROM songteksten";
      $statement = $conn->prepare($query);
      $statement->execute([]);
      $songteksten = $statement->fetchAll(PDO::FETCH_ASSOC);
      ?>

<body style="background: <?php echo $songtekst['achtergrondkleur'] ?>">
  <header>
    <?php require_once '../header.php' ?>
  </header>
  
  <main>
    <div class="wrapper">

      <h1><?php echo $songtekst['artiest'] ?> - <?php echo $songtekst['titel'] ?></h1>
      
      <pre <?php if(isset($songtekst['textkleur'])): echo "style='color: {$songtekst['textkleur']}'"; endif; ?>><?php 
          if($songtekst['songtekst'] == "[Instrumental]"){
            echo "Dit is een instrumentaal nummer";
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
