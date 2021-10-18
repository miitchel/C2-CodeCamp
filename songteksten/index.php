<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp - songteksten</title>
</head>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <?php
      $query = "SELECT * FROM songteksten";
      $statement = $conn->prepare($query);
      $statement->execute();
      $songteksten = $statement->fetchAll(PDO::FETCH_ASSOC);
    ?>

  <main>
    <div class="wrapper">
      <h1>Songteksen</h1>

      <div class="items">
        <ul>
          <?php foreach($songteksten as $songtekst): ?>
          <li>
            <a href="songtekst.php?id=<?php echo $songtekst['id']; ?>"><?php echo $songtekst['artiest'] ?> - <?php echo $songtekst['titel'] ?></a>
          </li>
          <?php endforeach ?>
        </ul>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
