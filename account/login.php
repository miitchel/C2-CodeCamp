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

        <form action="../backend/loginController.php" method="POST">
            <div class="form-group">
                <label for="username">Gebruikersnaam:</label>
                <input type="text" name="username" id="username">
            </div>
            <div class="form-group">
                <label for="password">Wachtwoord:</label>
                <input type="password" name="password" id="password">
            </div>
            <input type="submit" value="Login">
        </form>
    </div>
  </main>
  <footer>
    <?php require_once '../footer.php' ?>
  </footer>

</body>

</html>
