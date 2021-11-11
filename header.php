<div class="header-wrapper">
    <div class="header-center">
            <a class="logo-link" href="<?php echo $base_url; ?>/index.php">
                <img src="<?php echo $base_url; ?>/img/logo-transparent-bg.png" alt="CodeCamp Logo">
            </a>
        <nav>
            <a class="nav-link" href="<?php echo $base_url; ?>/index.php">Home</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/boeken/index.php">Boeken</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/songteksten/index.php">Songteksten</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/films/index.php">Films</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/acteurs/index.php">Acteurs/Actrices</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/gereedschap/index.php">Gereedschap</a>
            <a class="nav-link" href="<?php echo $base_url; ?>/dranken/index.php">Dranken</a>
        </nav>
        <div class="login">
            <?php if(isset($_SESSION['user_id'])): ?>
            <p>Hallo <?php echo $_SESSION['user_fullname'] ?> | <a class="logout" href="<?php echo $base_url; ?>/account/logout.php" >Uitloggen</a></p>
            <?php else: ?>
            <p><a class="login" href="<?php echo $base_url; ?>/account/login.php" >Inloggen</a></p>
            <?php endif; ?>
        </div>
    </div>
</div>
