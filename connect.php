<?php
 $novelid = $_POST['novelid'];
 $password = $_POST['password'];

 // check if empty
 if(!empty($novelid) || !empty($password)){
 $host = "localhost";
 $dbUsername = "root";
 $dbPassword = "";
 $dbName = "materialmasterdb";

 //create connection
$conn = new mysqli($host, $dbUsername,$dbPassword,$dbName);

if(mysqli_connect_error()){
    die('Connect Error('.mysqli_connect_error().')'.mysqli_connect_error());
}
else{
    $SELECT = "SELECT novelid From logindb Where novelid = ? Limit 1";
    $INSERT = "INSERT Into logindb (novelid,password) values (?,?)";
    //Prepare statement
    $stmt = $conn->prepare($SELECT);
    $stmt->bind_param("s",$novelid);
    $stmt->execute();
    $stmt->bind_result($novelid);
    $stmt->store_result();
    $rnum = $stmt->num_rows;
    if($rnum == 0){
        $stmt->close();

        $stmt = $conn->prepare($INSERT);
        $stmt->bind_param("ss",$novelid,$password);
        $stmt->execute();
        echo "new record inserted successfully";
        header('Location:formindex.html');
    }
  }
  $stmt->close();
  $conn->close();


 }
 else
 {
echo "All field are required";
die();
 }


?>