<?php


include 'connect.php';

$id=$_POST['id'];
$firstname=$_POST['firstname'];
$phone=$_POST['phone'];
$address=$_POST['address'];
$email=$_POST['email'];


 $conn-> query("UPDATE data SET firstname='".$firstname."',phone='".$phone."',address='".$address."',email='".$email."' WHERE id='".$id."'");


?>
