<!DOCTYPE html>
<html lang="nl">

<head>
    <?php require_once '../head.php' ?>
    <title>CodeCamp - Dranken</title>
</head>

<body>
    <header>
        <?php require_once '../header.php' ?>
    </header>

    <main>
        <div class="wrapper">
            <div class="drinks">
                <h1>Dranken</h1>
                <p>Een drankje, of drank, is een vloeistof die specifiek is voor menselijke consumptie. Naast het vervullen van een fundamentele menselijke behoefte, maken dranken deel uit van de cultuur van de menselijke samenleving.</p>
                <p>Als u meer wilt weten over de verschillende fris/warme dranken die we hebben, klik dan op een van de onderstaande links:</p>
                <ul>
                    <li><a href="<?php echo $base_url; ?>/dranken/frisdranken.php">Frisdranken</a></li>
                    <li><a href="<?php echo $base_url; ?>/dranken/warmedranken.php">Warme dranken</a></li>
                </ul>
            </div>
        </div>
    </main>

    <footer>
        <?php require_once '../footer.php' ?>
    </footer>

</body>

</html>