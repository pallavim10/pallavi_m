<?php
//database connection 
class connect{
private $host = 'localhost';
private $database = 'materialmasterdb';
private $username = 'root';
private $password = '';


// $connect = new PDO("mysqli:host=localhost;database=materialmasterdb","root","");

// function fill_orgdata($connect, $org_id){
//     $query = " SELECT * From tbl_org WHERE parent_id = '".$org_id."' ";
//     $statement = $connect->prepare($query);
//     $statement->execute();
//     $result = $statement->fetchAll();
//     $output='';
//     foreach($result as $row){
//         $output .='<option value="'.$row["org_id"].'">'.$row["org_code"].'</option>';
//     }
//     return $output;
public function connect(){
    try
    {
        $conn = new PDO('mysqli:host='. $this->host .'; database='.$this->database, $this->username , $this->password);
        $conn = setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    }
    catch(PDOexception $e)
    {
        echo 'Database Error:' . $e->getMessage();
    }

}
}
?>