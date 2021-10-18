<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Gereedschap</title>
</head>

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

                <div class="items">
                    <h2>Gereedschap</h2>
                    <a href="gereedschap.php?id=2">Hamers</a>
                    <a href="gereedschap.php?id=5">Schroevendraaiers</a>
                    <div class="zagen">
                        <h3>Zagen</h3>
                        <a href="gereedschap.php?id=4">Cirkelzagen</a>
                        <a href="gereedschap.php?id=3">Kettingzagen</a>
                        <a href="template.php?id=handzagen">Handzagen</a>
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
