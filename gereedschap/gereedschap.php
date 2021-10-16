<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp - Gereedschap</title>
</head>

<?php
  $query = "SELECT * FROM gereedschap WHERE id = :id";
  $statement = $conn->prepare($query);
  $statement->execute([
    ":id" => $_GET['id'],
  ]);
  $gereedschap = $statement->fetch(PDO::FETCH_ASSOC);
?>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">

    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
