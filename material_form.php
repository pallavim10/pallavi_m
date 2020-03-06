<?php
$material_number = $_POST['material_number'];
$material_description = $_POST['material_description'];
$org_code =$_POST['org_code'];
$bu = $_POST['bu'];
$bpv = $_POST['bpv'];
$plant = $_POST['plant'];
$storage_location = $_POST['storage_location'];
$distributionchannel = $_POST['distributionchannel'];
$purchasing_grp = $_POST['purchasing_grp'];
$ordering_unit = $_POST['ordering_unit'];
$tax_ind_f_material = $_POST['tax_ind_f_material'];
$min_order_qty = $_POST['min_order_qty'];
$min_dely_qty = $_POST['min_dely_qty'];
$delivery_unit = $_POST['delivery_unit'];
$material_pricing_grp = $_POST['material_pricing_grp'];
$account_assign_grp = $_POST['account_assign_grp'];
$item_category = $_POST['item_category'];
$general_item_category_grp = $_POST['general_item_category_grp'];
$availability_check = $_POST['availability_check'];
$loading_grp = $_POST['loading_grp'];
// $do_not_cost = $_GET['do_not_cost'];
$chapter_id = $_POST['chapter_id'];
$valuationclass = $_POST['valuationclass'];
$costing_lot_size = $_POST['costing_lot_size'];
$standard_price = $_POST['standard_price'];
$per_unit_price = $_POST['per_unit_price'];
$mrp_group = $_POST['mrp_group'];
$mrp_type = $_POST['mrp_type'];
$mrp_controller = $_POST['mrp_controller'];
$lot_size = $_POST['lot_size'];
$procurementtype = $_POST['procurementtype'];
$special_procurement = $_POST['special_procurement'];
$scheduling_margin_key = $_POST['scheduling_margin_key'];
$strategy_group = $_POST['strategy_group'];
$consumption_mode = $_POST['consumption_mode'];
$fwd_consumption = $_POST['fwd_consumption'];
$bwd_consumption = $_POST['bwd_consumption'];
$planning_material = $_POST['planning_material'];
$planning_plant = $_POST['planning_plant'];
$apo_snp_relevant = $_POST['apo_snp_relevant'];
$snp_planner_code = $_POST['snp_planner_code'];
$username = $_POST['username'];

$host = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "materialmasterdb";

// check if empty
if(!empty($material_number) || !empty($org_code) || !empty($bu)  || !empty($bpv) || !empty($plant) || !empty($storage_location) || !empty($distribution_channel) ||!empty($min_order_qty)
 || !empty($min_dely_qty) || !empty($delivery_unit) || !empty($chapter_id) || !empty($valuationclass) || !empty($costing_lot_size) || !empty($standard_price) || !empty($per_unit_price)  ||!empty($username)){
//Establishing connection with server
   $connection = new mysqli($host,$dbUsername,$dbPassword,$dbName);
 if(mysqli_connect_error()){
   die('Connect Error('.mysqli_connect_error().')'.mysqli_connect_error());
 }
// $db = mysql_select_db("materialmasterdb",$connection);
 else{
    if(isset($_POST['submit'])) { 
// Select statement
    $SELECT = "SELECT material_description From materialdata Where material_description = ? Limit 1844674073709551615";
//Insert Query
 $INSERT = "INSERT Into materialdata (material_number, material_description, org_code, bu, bpv, plant, storage_location, distributionchannel, purchasing_grp, ordering_unit, tax_ind_f_material, min_order_qty, min_dely_qty, delivery_unit, material_pricing_grp, account_assign_grp, item_category, general_item_category_grp, availability_check, loading_grp, chapter_id, valuationclass, costing_lot_size, standard_price, per_unit_price, mrp_group, mrp_type, mrp_controller, lot_size, procurementtype, special_procurement, scheduling_margin_key, strategy_group, consumption_mode, fwd_consumption, bwd_consumption, planning_material, planning_plant, apo_snp_relevant, snp_planner_code,username) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//Prepare statement
    $stmt = $connection->prepare($SELECT);
    $stmt->bind_param("s",$material_description);
    $stmt->execute();
    $stmt->bind_result($material_description);
    $stmt->store_result();
    $rnum = $stmt->num_rows;
   if($rnum == 0){
      $stmt->close();

       $stmt = $connection->prepare($INSERT);
       $stmt->bind_param("issssssssssssssssssssssssssssssssssssssss",$material_number,$material_description,$org_code,$bu,$bpv,$plant,$storage_location,$distributionchannel,$purchasing_grp,$ordering_unit,$tax_ind_f_material,$min_order_qty,$min_dely_qty,$delivery_unit,$material_pricing_grp,$account_assign_grp,$item_category,$general_item_category_grp,$availability_check,$loading_grp,$chapter_id,$valuationclass,$costing_lot_size,$standard_price,$per_unit_price,$mrp_group,$mrp_type,$mrp_controller,$lot_size,$procurementtype,$special_procurement,$scheduling_margin_key,$strategy_group,$consumption_mode,$fwd_consumption,$bwd_consumption,$planning_material,$planning_plant,$apo_snp_relevant,$snp_planner_code,$username);
       $stmt->execute();
       echo "Material Details inserted successfully \n";
    }
   echo "Your code needs to be fixed \n";
}
echo "Something went wrong";

}
$stmt->close();
$connection->close();// closing connection with server
}
else
{
  echo "All field are required";
 die();
}
 