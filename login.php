<?php
session_start();
    include("connection.php");
$login=$_POST['email'];
$mdp=$_POST['password'];
$res=mysqli_query($conn,"select * from employee where Email='".$login."' and password='".$mdp."'");
if ( mysqli_num_rows($res)==0 )
{ 
    header('location:index.php');
}
    $row = mysqli_fetch_assoc($res);
    $_SESSION["imageUser"] = $row["Image"];
    $_SESSION["idUser"] = $row["ID"];
    header('location:result.php');
?>