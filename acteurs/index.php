<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Acteurs/Actrices</title>
</head>

<?php
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM acteurs';
    $statement = $conn->prepare($query);
    $statement->execute();
    $acteurs = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<body>
    <header>
        <?php require_once '../header.php' ?>
    </header>

    <main>
        <div class="wrapper">
            <div class="sub-wrapper">
                <h1>Acteurs/Actrices</h1>
                <p>Een acteur of actrice is iemand die een personage uitbeeldt in een verhaal of rollenspel.</p>
                <p>Een acteur kan zijn werk doen in een theatervoorstelling (theateracteur) of film (filmacteur), op televisie, tijdens communicatietrainingen als trainingsacteur en hij kan als zijn stem lenen aan tekenfilmfiguren en reclameboodschappen (stemacteur). Acteurs kunnen ook een personage in een computerspel uitbeelden, of als simulatiemodel hiervoor worden ingezet waarna deze gerenderd worden. Elk van deze disciplines vereist een eigen techniek.</p>
                <p>Hieronder vind je een lijst van een aantal acteurs/actrices:</p>
                <div class="items">
                    <ul>
                        <?php foreach($acteurs as $acteur): ?>
                        <li>
                            <a href="acteurs.php?id=<?php echo $acteur['id']; ?>"><?php echo $acteur['naam']; ?></a>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <?php require_once '../footer.php' ?>
    </footer>

</body>

</html>