<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <?php require_once '../head.php'; ?>
  <title>CodeCamp - Warme dranken</title>
</head>

<?php
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM acteurs where id = 3';
    $statement = $conn->prepare($query);
    $statement->execute();
    $GeorgeClooney = $statement->fetch(PDO::FETCH_ASSOC);
?>

<body class="warmedranken">
  <header>
    <?php require_once '../header.php'; ?>
  </header>

  <main>
    <div class="wrapper">
      <div class="drinks hot-drinks">
        <h1>De warme dranken</h1>
        <h3>Koffie</h3>

        <a href="<?php echo $base_url; ?>/acteurs/acteurs.php?id=<?php echo $GeorgeClooney['id']; ?>"><?php echo $GeorgeClooney['naam']; ?></a>

        <div class="drink-body">
          <div class="img-container">
            <img class="dranken-img img-left" src="<?php echo $base_url; ?>/img/dranken/koffie.jpg" alt="Koffie">
          </div>
          <p>Koffie is een meestal warm genuttigde drank, die wordt bereid op basis van water en gedroogde en gebrande pitten van de koffieplant (Coffea spp.) die vanwege hun vorm koffiebonen worden genoemd. Koffie bevat het stimulerende middel cafeïne. De meeste soorten in het geslacht Coffea komen van nature voor in tropisch Afrika en op de eilanden in de Indische Oceaan. Ze vinden hun oorsprong in Ethiopië, Jemen en Soedan.</p>
        </div>

        <h3>Latte</h3>
        <div class="drink-body">
          <p>Een caffè latte of latte is een in veel Europese en Amerikaanse gelegenheden geserveerde koffiedrank, gemaakt met espresso en warme melk. Vermoedelijk ligt de oorsprong in de Verenigde Staten, waar de drank uitgevonden zou zijn om de espresso uit de opkomende koffiemachines wat te verzachten. In Italie wordt de term niet of nauwelijks gebruikt. Wie latte bestelt, krijgt melk.</p>
          <div class="img-container">
            <img class="dranken-img img-right" src="<?php echo $base_url; ?>/img/dranken/latte.jpg" alt="Latte">
          </div>
        </div>

        <h3>Thee</h3>
        <div class="drink-body">
          <div class="img-container">
            <img class="dranken-img img-left" src="<?php echo $base_url; ?>/img/dranken/thee.jpg" alt="Thee">
          </div>
          <p>Thee is een warme drank die wordt gemaakt door infusie van de gedroogde bladeren van de theeplant Camellia sinensis. Alle als thee verkochte producten die niet van deze plant afkomstig zijn (bijvoorbeeld kamillethee of rooibos), zijn dan ook geen echte thee maar kruidenthee.</p>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php'; ?>
  </footer>

</body>

</html>
