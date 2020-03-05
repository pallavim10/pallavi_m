<?php
// //Database Configuration
// $dbhost ='localhost';
// $dbusername = 'root';
// $dbpassword = '';
// $database = 'materialmasterdb';

// //Create Database Connection
// $mysqli = new mysqli($dbhost,$dbusername,$dbpassword,$database);

// //Check Connection
// if($mysqli->connect_error)
// {
//     die("Connection Failed:" .$mysqli->connect_error);

// }

// if(mysqli_connect_error()){
//     die('Connect Error('.mysqli_connect_error().')'.mysqli_connect_error());
// }
//phpinfo(INFO_MODULES);
$dbusername ='root';
$dbpassword ='';
$database = 'materialmasterdb';

$db = new PDO('mysql:host=localhost;dbname='.$database.';charset=utf8',$dbusername,$dbpassword);

$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>