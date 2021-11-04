<!DOCTYPE html>
<html lang="en">

<head>
  <?php require_once '../head.php'; ?>
  <title>CodeCamp - Frisdrank</title>
</head>

<?php
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM filmpersonages WHERE id = 4';
    $statement = $conn->prepare($query);
    $statement->execute();
    $JamesBond = $statement->fetch(PDO::FETCH_ASSOC);
?>

<body class="frisdrank">
  <header>
    <?php require_once '../header.php'; ?>
  </header>

  <main>
    <div class="wrapper">
      <div class="drinks">
        <h1>De frisdranken</h1>
        <h3>Cola</h3>
        
        <a href="<?php echo $base_url; ?>/filmpersonages/filmpersonage.php?id=<?php echo $JamesBond['id']; ?>"><?php echo $JamesBond['naam']; ?></a>
        
        <p>Cola is een koolzuurhoudende frisdrank. Het smaakt zoet (maar is qua pH zuur) en bevat circa 28-32 mg cafeïne per 33 cl. Andere belangrijke ingrediënten zijn vanille, kaneel, karamel en citroen. Anders dan de meeste frisdranken bevat het geen citroenzuur, maar fosforzuur. Dieetcola bevat zowel fosforzuur als citroenzuur. Er bestaan naast suikervrije ook cafeïnevrije colavarianten.</p>
        <h3>Seven Up</h3>
        <p>7Up (of Seven-Up) is een frisdrankmerk van Dr Pepper Snapple Group in de Verenigde Staten en PepsiCo in de rest van de wereld.</p>
        <h3>Sinas</h3>
        <p>Sinas is in Nederland de benaming voor de doorgaans gele of oranje, meestal koolzuurhoudende frisdrank met sinaasappelsmaak. Zoals de meeste frisdranken bevat sinas veel suiker of in de light-versie kunstmatige zoetstoffen. Het gehalte aan sinaasappelsap bedraagt ten minste 4%. Bekende merken zijn Fanta (van de Coca-Cola Company) en Sisi (Vrumona); Orangina onderscheidt zich doordat er werkelijk vruchtvlees in zit.</p>
      </div>
    </div>
  </main>

  <footer>
    <?php require_once '../footer.php'; ?>
  </footer>

</body>

</html>
