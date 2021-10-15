<!DOCTYPE html>
<html lang="nl">

<?php
  $id = $_GET["id"];
  require_once '../backend/conn.php';
  $query = 'SELECT * FROM filmpersonages WHERE id = ' . $id;
  $statement = $conn->prepare($query);
  $statement->execute();
  $personage = $statement->fetch(PDO::FETCH_ASSOC);
?>

<head>
  <?php require_once '../head.php' ?>
  <title><?php $personage['naam']; ?></title>
</head>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">
      <h1><?php echo $personage['naam']; ?></h1>
      <pre><?php echo $personage['beschrijving']; ?>
      </pre>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
