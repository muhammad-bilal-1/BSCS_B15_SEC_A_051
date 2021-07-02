<?php


include 'connect.php';

$firstname=$_POST['firstname'];

$phone=$_POST['phone'];
$address=$_POST['address'];

$email=$_POST['email'];


     $conn-> query("INSERT INTO data(firstname,phone,address,email)VALUES('".$firstname."','".$phone."','".$address."','".$email."')");

?>
