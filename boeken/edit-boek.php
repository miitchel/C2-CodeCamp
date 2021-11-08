<?php
session_start();
require_once '../backend/config.php';
$username = $_SESSION['user_name'];
if (!isset($_SESSION['user_id'])){
  $msg = "Je moet eerst inloggen!";
    header("Location: $base_url/account/login.php?msg=$msg");
    exit;
}

elseif
(!($username == "contentleverancier") && !($username == "salesmanager"))
{
    $msg = "Alleen als content leverancier of sales manager kan je de boeken wijzigen.";
    header("Location: $base_url/boeken/index.php?msg=$msg");
    exit;
}

?>
<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp - boek</title>
</head>

<?php
      $id = $_GET['id'];
      $query = "SELECT * FROM boeken WHERE id = :id";
      $statement = $conn->prepare($query);
      $statement->execute([":id" => $id]);
      $boek = $statement->fetch(PDO::FETCH_ASSOC);
      ?>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>
  
  <main>
    <div class="wrapper">
    <form action="../backend/boekenController.php" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="action" value="update">
      <input type="hidden" name="id" value="<?php echo $id; ?>">
          <h2><?php echo $boek['titel'] ?></h2>
          <p>Auteur: <strong><?php echo $boek['auteur'] ?></strong></p>
          <p>Aantal pagina's: <strong><?php echo $boek['paginas'] ?></strong></p>

          <?php if ($_SESSION['user_name'] == "contentleverancier"){?>
          <label for="beschrijving"><h4 style="font-size: 22px;">Boek beschrijving:</h4></label>
          <textarea style="font-family: 'Roboto';" id="beschrijving" name="beschrijving" rows="8" cols="100"><?php echo $boek['beschrijving'] ?></textarea>`
          <?php } elseif ($_SESSION['user_name'] == "salesmanager") {?>
          
          <label for="beschrijving"><h4 style="font-size: 22px;">Boek beschrijving:</h4></label>
          <p><?php echo $boek['beschrijving'] ?></p>
          <?php }?>
          
          <?php if ($_SESSION['user_name'] == "salesmanager"){?>
          <label for="prijs"><p style="font-size: 25px">Prijs:</p></label>
          <input type="text" name="prijs" id="prijs" value="<?php echo $boek['prijs']; ?>"><br>
          <?php } elseif ($_SESSION['user_name'] == "contentleverancier") {?>
            <p style="font-size: 25px">Prijs: €<?php echo $boek['prijs'] ?>
            <p></p>
          <?php }?>
          <input type="submit" value="Boek aanpassen">  
        </form>
        </div> 
    </div>
  </main>
  
  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>