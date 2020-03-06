<?php
$dbusername ='root';
$dbpassword ='';
$database = 'materialmasterdb';

$db = new PDO('mysql:host=localhost;dbname='.$database.';charset=utf8',$dbusername,$dbpassword);

$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>