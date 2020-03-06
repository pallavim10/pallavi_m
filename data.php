<?php
require 'database_connection.php';
function loadorg_code()
{
    $db = new database_connection;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM tbl_org");
    $stmt->execute();
    $org_code = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $org_code;

}


?>