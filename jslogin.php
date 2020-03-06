<?php
session_start();
require_once('config.php');
$novelid = $_POST['novelid'];
$password = $_POST['password'];

// echo 'hello from the otherside';

$sql = "SELECT * FROM logindb WHERE novelid = ? AND password = ? LIMIT 1";
$stmtselect = $db->prepare($sql);
$result = $stmtselect->execute([$novelid,$password]);

if($result)
{
    $user = $stmtselect->fetch(PDO::FETCH_ASSOC);
    if($stmtselect-> rowCount() > 0){
       $_SESSION['submit']= $user;
        echo '1';
    }

   
}
else
{
    echo 'There were errors';
}


?>