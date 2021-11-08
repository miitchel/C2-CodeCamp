<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Gereedschap</title>
</head>

<?php
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM gereedschap WHERE zaag = 0';
    $statement = $conn->prepare($query);
    $statement->execute();
    $gereedschappen = $statement->fetchAll(PDO::FETCH_ASSOC);
    
    require_once '../backend/conn.php';
    $query = 'SELECT * FROM gereedschap WHERE zaag = 1';
    $statement = $conn->prepare($query);
    $statement->execute();
    $zagen = $statement->fetchAll(PDO::FETCH_ASSOC);
?>

<body>
    <header>
        <?php require_once '../header.php' ?>
    </header>

    <main>
        <div class="wrapper">
            <div class="sub-wrapper">
                <h1>Gereedschap</h1>
                <p>Gereedschappen of werktuigen zijn hulpmiddelen om bewerkingen te kunnen uitvoeren die een mens (of dier) met zijn lichaam zelf niet of moeilijk kan uitvoeren.</p>
                <p>Mensen en mensapen kunnen gereedschap gebruiken, maar ook bij kraaiachtigen, Goffins kaketoes, zeeotters en dolfijnen is het gebruik van gereedschap gezien.</p>
                <p>Andere termen die gebruikt worden voor bepaalde typen gereedschap zijn gerei (meervoud van zachter gereedschap) en instrument (over het algemeen een meer geavanceerd of erg specialistisch stuk gereedschap). Voor groter en zwaarder gereedschap wordt meestal de term werktuig gebruikt.</p>
                <p>Er zijn stukken gereedschap die in verschillende velden worden gebruikt, maar vaak is gereedschap zeer gespecialiseerd voor een bepaalde toepassing.</p>
                <div class="items-container">
                    <div class="items">
                    <h2>Gereedschap</h2>
                        <?php foreach($gereedschappen as $gereedschap): ?>
                            <a href="gereedschap.php?id=<?php echo $gereedschap['id']; ?>"><?php echo $gereedschap['naam']; ?></a>
                        <?php endforeach; ?>
                                
                    <div class="zagen">
                        <h3>Zagen</h3>
                            <?php foreach($zagen as $zaag): ?>
                                <a href="gereedschap.php?id=<?php echo $zaag['id']; ?>"><?php echo $zaag['naam']; ?></a>
                            <?php endforeach; ?>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <?php require_once '../footer.php' ?>
    </footer>

</body>

</html>
