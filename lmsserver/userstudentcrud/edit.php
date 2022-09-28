<?php 

	include 'database.php';

	$id = $_POST['id'];
	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	
	$link->query("UPDATE userstudent SET name = '".$name."',email = '".$email."',password = '".$password."' WHERE id = '".$id."'");


?>