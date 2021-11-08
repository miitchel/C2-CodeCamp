<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<?php
  $id = $_GET["id"];
  require_once '../backend/conn.php';
  $query = 'SELECT * FROM acteurs WHERE id = ' . $id;
  $statement = $conn->prepare($query);
  $statement->execute();
  $acteur = $statement->fetch(PDO::FETCH_ASSOC);
  
  $query = "SELECT * FROM acteurs";
  $statement = $conn->prepare($query);
  $statement->execute([]);
  $acteurs = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp - <?php $acteur['naam']; ?></title>
</head>

<body style="background-color: <?php echo $acteur['achtergrondkleur']?>">
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">
      <h1><?php echo $acteur['naam']; ?></h1> 
      <div class="content-body">
        <pre><?php echo $acteur['beschrijving']; ?>
        </pre>

        <div>
          <img class="item-img" src="../img/acteurs/<?php echo $acteur['afbeelding']; ?>" alt="Afbeelding voor <?php echo $acteur['naam']; ?>">
        </div>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
