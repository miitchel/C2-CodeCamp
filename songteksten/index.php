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
      $query = "SELECT * FROM songteksten";
      $statement = $conn->prepare($query);
      $statement->execute();
      $songteksten = $statement->fetchAll(PDO::FETCH_ASSOC);
      ?>


      <h1>Songteksen</h1>
      <div class="songteksten-menu">
        <?php foreach($songteksten as $songtekst): ?>
        <a href="songtekst.php?id=<?php echo $songtekst['id']; ?>"><?php echo $songtekst['artiest'] ?> - <?php echo $songtekst['titel'] ?></a>
        <?php endforeach ?>
      </div>
    </div>
  </main>
  
  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
