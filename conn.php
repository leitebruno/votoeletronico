<?php
	$conn = new mysqli('localhost', 'root', '', 'votoeletronico');

	if ($conn->connect_error) {
	    die("Coneção falhada: " . $conn->connect_error);
	}
	
?>