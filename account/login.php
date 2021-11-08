<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="nl">

<head>
  <?php require_once '../head.php' ?>
  <title>CodeCamp</title>
</head>

<body>
  <header>
    <?php require_once '../header.php' ?>
  </header>

  <main>
    <div class="wrapper">
    <h1>Inloggen</h1>
        <?php
        if(isset($_GET['msg']))
        {
            echo "<div class='msg'>" . $_GET['msg'] . "</div>";
        }
        ?>

        <form class="login-form" action="../backend/loginController.php" method="POST">
            <div class="form-group">
                <label for="username">Gebruikersnaam:</label>
                <input class="input" type="text" name="username" id="username">
            </div>
            <div class="form-group">
                <label for="password">Wachtwoord:</label>
                <input class="input" type="password" name="password" id="password">
            </div>
            <div class="form-group">
                <input class="login-button" type="submit" value="Inloggen">
            </div>
        </form>
    </div>
  </main>
  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
