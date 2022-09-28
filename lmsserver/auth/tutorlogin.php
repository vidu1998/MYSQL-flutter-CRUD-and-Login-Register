<?php

   $db = mysqli_connect("localhost","root","","lmsdb");
 
 if(!$db){
 	echo"database Connect error".mysql_error();
 }
 $email=$_POST['email'];
 $password=$_POST['password'];

$sql="SELECT * FROM usertutor WHERE email ='".$email."' AND password='".$password."'";
 $query=mysqli_query($db,$sql);
 $userdata=array();
 $count=mysqli_num_rows($query);


 if($count==1){

 	   $sql="SELECT *FROM usertutor WHERE email='".$email."'";
 	   $query=mysqli_query($db,$sql);
 	   $data=mysqli_Fetch_array($query);
 	   $userdata=$data;
     echo json_encode($userdata);
  }else{
  	
  	echo json_encode("ERROR");
  }
 ?>