<!DOCTYPE html>
<html lang="nl">

<?php
  $id = $_GET["id"];
  require_once '../backend/conn.php';
  $query = 'SELECT * FROM filmpersonages WHERE id = ' . $id;
  $statement = $conn->prepare($query);
  $statement->execute();
  $personage = $statement->fetch(PDO::FETCH_ASSOC);
  
  $query = "SELECT * FROM filmpersonages";
  $statement = $conn->prepare($query);
  $statement->execute([]);
  $personages = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<head>
  <?php require_once '../head.php' ?>
  <title><?php $personage['naam']; ?></title>
</head>

<body style="background-color: <?php echo $personage['kleur']?>">
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">
      <h1><?php echo $personage['naam']; ?></h1> 
      
      <div class="buttons-previous-next">
        <?php if ($_GET['id'] > 1): ?>
          <a href="filmpersonage.php?id=<?php echo $_GET['id'] - 1; ?>">< Vorige</a>
        <?php endif; ?>
        
        <?php if ($_GET['id'] < count($personages)): ?>
          <a href="filmpersonage.php?id=<?php echo $_GET['id'] + 1; ?>">Volgende ></a>
        <?php endif; ?>
      </div>
      
      <div class="content-body">
        <pre><?php echo $personage['beschrijving']; ?>
        </pre>

        <div>
          <img class="item-img" src="../img/filmpersonages/<?php echo $personage['afbeelding']; ?>" alt="Afbeelding voor <?php echo $personage['naam']; ?>">
        </div>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
