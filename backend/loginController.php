<?php
session_start();

require_once 'conn.php';
$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM users WHERE username = :username";
$statement = $conn->prepare($query);
$statement->execute([
	":username" => $username
]);
$user = $statement->fetch(PDO::FETCH_ASSOC);

 if ($statement->rowCount() < 1) {
    $msg = "Account bestaat niet!";
    header("Location: ../account/login.php?msg=$msg");
    die();
  }

  if (!password_verify($password, $user['password'])) {
    $msg = "Wachtwoord niet juist!";
    header("Location: ../account/login.php?msg=$msg");
    die();
  }

  $_SESSION['user_id'] = $user['id'];
  $_SESSION['user_name'] = $user['username'];
  $_SESSION['user_fullname'] = $user['name'];
  header("Location: ../index.php");
?>