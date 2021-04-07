<?php
	
	include 'conn.php';

if(empty($_POST['email']) || empty($_POST['password'])) {
	header('Location: index.php');
	exit();
}

$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

$query = "select email from utilizador where email = '{$email}' and password = '{$password}'";

$result = mysqli_query($conn, $query);

$row = mysqli_num_rows($result);

if($row == 1) {
	$_SESSION['email'] = $email;
	header('Location: home.php');
	exit();
} else {
	$_SESSION['nao_autenticado'] = true;
	header('Location: index.php');
	exit();
}

?>