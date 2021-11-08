<?php
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Films</title>
</head>

<body>
    <header>
        <?php require_once '../header.php' ?>
    </header>

    <main>
        <div class="wrapper">
            <div class="sub-wrapper">
                <h1>Films</h1>
                <p>Een film, rolprent of video is een serie opeenvolgend getoonde, stilstaande beelden. Door de snelheid waarmee de beelden elkaar opvolgen en de nawerking van elk beeld op het netvlies lijken ze een vloeiende en continue beweging te vormen. Vaak is er ook geluid bij. De productie varieert van een kleine handeling om een gebeurtenis vast te leggen in een kort filmpje tot een groot project voor het maken van een langere film voor wereldwijde vertoning in bioscopen.</p>
                <p>Er zijn diverse hedendaagse en oudere technieken voor het dragen van deze gegevens. Tegenwoordig is het dikwijls een computerbestand. Vertoning gebeurt bijvoorbeeld op een elektronisch scherm of door projectie.</p>
                <p>Typisch wordt een verhaal uitgebeeld. De bijbehorende kunstvorm wordt cinematografie (vaak kortweg cinema) genoemd. Film was oorspronkelijk uitsluitend bedoeld om in de bioscoop vertoond te worden, maar de term werd en wordt ook voor veel andere toepassingen van bewegend beeld gebruikt.</p>
                <a href="<?php echo $base_url; ?>/filmpersonages/index.php">Filmpersonages</a>
            </div>
        </div>
    </main>

    <footer>
        <?php require_once '../footer.php' ?>
    </footer>

</body>

</html>