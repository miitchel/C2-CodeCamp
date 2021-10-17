<!DOCTYPE html>
<html lang="en">

<head>
  <?php require_once '../head.php'; ?>
  <title>Informatie pagina over filmpersonages</title>
</head>

<?php
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM filmpersonages';
    $statement = $conn->prepare($query);
    $statement->execute();
    $personages = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<body>

  <header>
    <?php require_once '../header.php'; ?>
  </header>

  <main>
    <div class="wrapper">
      <h1>Filmpersonages</h1>
      <div class="items">
        <ul>
          <?php foreach($personages as $personage): ?>
          <li>
            <a href="filmpersonage.php?id=<?php echo $personage['id']; ?>"><?php echo $personage['naam']; ?></a>
          </li>
          <?php endforeach; ?>
        </ul>
      </div>
    </div>
  </main>
  
  <footer>
    <?php require_once '../footer.php'; ?>
  </footer>
  
</body>

</html>
