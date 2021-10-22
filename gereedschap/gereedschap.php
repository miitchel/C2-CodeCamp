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
  
  $query = "SELECT * FROM gereedschap";
  $statement = $conn->prepare($query);
  $statement->execute([]);
  $gereedschappen = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">
      <h1><?php echo $gereedschap['naam']; ?></h1>
      
      <div class="content-body">
        <pre><?php echo $gereedschap['beschrijving'];?>
        </pre>
        
        <div>
          <img class="item-img" src="../img/gereedschap/<?php echo $gereedschap['afbeelding'] ?>" alt="Afbeelding van <?php echo $gereedschap['naam']; ?>">
        </div>
      </div>
      
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
