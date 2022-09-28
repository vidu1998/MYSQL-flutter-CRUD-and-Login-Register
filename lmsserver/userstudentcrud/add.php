<?php 

	include 'database.php';

	$name=$_POST['name'];
 $password=$_POST['password'];
 $email=$_POST['email'];

	$link->query("INSERT INTO userstudent(name,email,password)VALUES('".$name."','".$password."','".$email."')");













































	// include 'database.php';

	// $fistname = $_POST['fistname'];
	// $lastname = $_POST['lastname'];
	// $phone = $_POST['phone'];
	// $address = $_POST['address'];

	// $link->query("INSERT INTO person(fistname,lastname,phone,address)VALUES('".$fistname."','".$lastname."','".$phone."','".$address."')");

