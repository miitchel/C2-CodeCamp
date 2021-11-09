<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Boeken</title>
</head>

<?php
    $query = "SELECT * FROM boeken `titel`";
    $statement = $conn->prepare($query);
    $statement->execute();
    $boeken = $statement->fetchAll(PDO::FETCH_ASSOC);
    ?>

<body>
    <header>
        <?php require_once '../header.php' ?>
    </header>

    <main>
        <div class="wrapper">
            <?php
            if(isset($_GET['msg']))
            {
                echo "<div class='msg'>" . $_GET['msg'] . "</div>";
            }
            ?>
            <div class="boeken">
                
                <h1>Informatie over boeken</h1>
                <p>Het boek is een veelgebruikte manier om informatie vast te leggen in de vorm van tekst en afbeeldingen en om deze informatie weer te geven, op te slaan en te verspreiden. Het is een document van vaak niet al te kleine omvang. Een boek in traditionele zin is een samengevoegde hoeveelheid papier met tekst, afbeeldingen of allebei. Daarnaast wordt met de term de betreffende informatie, of een soortgelijke verzameling informatie, aangeduid ('een boek schrijven', 'een boek downloaden'). Het woord 'boek' is vermoedelijk afkomstig van het Germaanse woord voor beuk, boche. De omslagen van de eerste boeken werden namelijk gemaakt van een rechthoekig stuk (beuken)hout. Het Griekse woord biblia (boeken) is het meervoud van biblion dat oorspronkelijk 'papyrusje' betekende, het materiaal waarop in de oudheid meestal werd geschreven, en later werd gebruikt als aanduiding van papier, geschrift en boek(rol).</p>
            </div>
            <h1 style="margin-top: 20px">Boeken</h1>
            <div class="boeken-grids">
                <?php foreach($boeken as $boek): ?>
                    <div class="boek-item">
                        <h2><?php echo $boek['titel'] ?></h2>
                        <p>Auteur: <strong><?php echo $boek['auteur'] ?></strong></p>
                        <p>Aantal pagina's: <strong><?php echo $boek['paginas'] ?></strong></p>
                        <h4 style="font-size: 22px;">Boek beschrijving:</h4>
                        <p><?php if(isset($boek['beschrijving'])): echo $boek['beschrijving']; else: echo "<em>Nog niet beschikbaar</em>"; endif ?></p>
                        <p style="font-size: 25px">Prijs: <?php if(($boek['prijs']) == null): echo "<em>nog niet bekend</em>"; else: echo $boek['prijs']; endif ?> </p>
                        <?php if (isset($_SESSION['user_name'])){
                            if($_SESSION['user_name'] == "contentleverancier" || $_SESSION['user_name'] == "salesmanager") {
                                    $url = "edit-boek.php?id={$boek['id']}";
                                    echo "<a href='$url'>aanpassen</a>";
                                }; 
                            };
                        ?>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </main>

    <footer>
        <?php require_once '../footer.php' ?>
    </footer>

</body>

</html>
