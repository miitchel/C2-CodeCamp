<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp</title>
</head>

<?php
      $id = $_GET['id'];
      $query = "SELECT * FROM songteksten WHERE id = :id";
      $statement = $conn->prepare($query);
      $statement->execute([":id" => $id]);
      $songtekst = $statement->fetch(PDO::FETCH_ASSOC);
      ?>

<body style="background: <?php echo $songtekst['kleur'] ?>">
  <header>
    <?php require_once '../header.php' ?>
  </header>
  
  <main>
    <div class="wrapper">

      <h1><?php echo $songtekst['artiest'] ?> - <?php echo $songtekst['titel'] ?></h1>
      <a href="songtekst.php?id=<?php echo $songtekst['id'] -1; ?>">Terug</a>
      <a href=
      
      <?php if (null !==($songtekst['id'] +1)) { echo
      'songtekst.php?id=<?php echo $songtekst[\id\] +1; ?>';}
      else {
        return;
      }
      ?>>Volgende</a>
      
      
      <pre><?php 
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
