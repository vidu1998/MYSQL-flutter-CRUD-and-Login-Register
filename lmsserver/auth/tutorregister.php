<?php

   $db = mysqli_connect("localhost","root","","lmsdb");
 
 if(!$db){
 	echo"database Connect error".mysql_error();
 }

 $name=$_POST['name'];
 $password=$_POST['password'];
 $email=$_POST['email'];
 

 $sql="SELECT * FROM usertutor WHERE email ='".$email."'";
 $query=mysqli_query($db,$sql);
 $userdata=array();
 $count=mysqli_num_rows($query);
  if($count==1){
     echo json_encode("ERROR");
  }else{
  	$insert="INSERT INTO usertutor(name,email,password) VALUES('".$name."','".$email."','".$password."')";

  	$result=mysqli_query($db,$insert);

  	if($result){
  		$sql="SELECT * FROM usertutor WHERE email ='".$email."'";
  		$query=mysqli_query($db,$sql);
        $data=mysqli_fetch_array($query);
        $userdata=$data;
  	}
  	echo json_encode($userdata);
  }
 ?>