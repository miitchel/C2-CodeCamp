<?php
session_start();
require_once '../backend/config.php';
$username = $_SESSION['user_name'];
if (!isset($_SESSION['user_id'])){
  $msg = "Je moet eerst inloggen!";
    header("Location: $base_url/account/login.php?msg=$msg");
    exit;
}

elseif
(!($username == "contentleverancier") && !($username == "salesmanager"))
{
    $msg = "Alleen als content leverancier of sales manager kan je de boeken wijzigen.";
    header("Location: $base_url/boeken/index.php?msg=$msg");
    exit;
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
  if ($username == "contentleverancier") {
    $query = "UPDATE boeken SET beschrijving = :beschrijving WHERE id = :id";
    $statement = $conn->prepare($query);
    $statement->execute([
      ":beschrijving" => $beschrijving,
      ":id" => $id
    ]);
    } elseif ($username == "salesmanager"){
      $query = "UPDATE boeken SET prijs = :prijs WHERE id = :id";
      $statement = $conn->prepare($query);
      $statement->execute([
        ":prijs" => $prijs,
        ":id" => $id
      ]);
  }

  $msg = "Boek is aangepast!";
  header("Location: ../boeken/index.php?msg={$msg}");
  exit;
}