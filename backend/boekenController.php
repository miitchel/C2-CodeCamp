<?php
session_start();
require_once '../backend/config.php';
if (!isset($_SESSION['user_id'])){
  $msg = "Je moet eerst inloggen!";
    header("Location: $base_url/account/login.php?msg=$msg");
    exit;
}
elseif
(!($_SESSION['user_name'] == "contentleverancier")) {
{
    $msg = "Alleen als content leverancier kan je de boeken wijzigen.";
    header("Location: $base_url/boeken/index.php?msg=$msg");
    exit;
}
}

$action = $_POST['action'];

if($action == "update"){
  $id = $_POST['id'];
  $beschrijving = $_POST['beschrijving'];
  $prijs = $_POST['prijs'];

  if(isset($errors))
    {
        var_dump($errors);
        die();
    }

  require_once 'conn.php';
  $query = "UPDATE boeken SET beschrijving = :beschrijving, prijs = :prijs WHERE id = :id";
  $statement = $conn->prepare($query);
  $statement->execute([
    ":beschrijving" => $beschrijving,
    ":prijs" => $prijs,
    ":id" => $id
  ]);

  $msg = "Boek is aangepast!";
  header("Location: ../boeken/index.php?msg={$msg}");
  exit;
}

