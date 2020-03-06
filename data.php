<?php
include_once 'database_connection.php';
//bu dropdown
if(isset($_POST['org_id']) && !empty($_POST['org_id']))
{
    $sql ="SELECT * FROM `bu` WHERE org_id =" .$_POST['org_id'];
    $query = $db->query($sql);
    //$rowCount = $query->num_rows;
    if($query->rowCount() > 0)
    {
        echo'<option selected="" disabled id="" value="">Select BU<option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo'<option id="'.$row['bu_id'].'" value="'.$row['bu_id'].'">'.$row['bu'].'</option>';
        }
    }
    else
    {
        echo '<option id="" value="">Select org code</option>';
        echo '<option id="" value="">Select distribution channel</option>';
    }

}elseif(isset($_POST['buid']) && !empty($_POST['buid']))
{
    $sqlstmt = "SELECT * FROM `distributionchannel` WHERE bu_id =" .$_POST['buid'];
    $query = $db->query($sqlstmt);
    //$rowCount = $queries->num_rows;
    if($query->rowCount() > 0)
    {
        echo '<option selected="" disabled id="" value="">Select Distribution Channel</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo'<option id="'.$row['dc_id'].'" value="'.$row['dc_id'].'">'.$row['distributionchannel'].'</option>';
        
        }
    }
    else
    {
        echo '<option id="" value="">Select bu</option>';
        
    }

}
if(isset($_POST['orgid'])&& !empty(isset($_POST['orgid'])))
{
    $sqlstatement = "SELECT * FROM `bpv` WHERE org_id = ".$_POST['orgid'];
    $query = $db->query($sqlstatement);
   // $rowCount = $query->num_rows;
    if($query->rowCount() > 0)
    {
        echo '<option selected="" disabled id="" value="">Select BPV</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['bpv_id'].'" value="'.$row['bpv_id'].'" >'.$row['bpv'].'</option>';
        }
    }
    else
    {
        echo '<option id ="" value="">Select org code</option>';
        echo '<option id ="" value="">Select plant</option>';
        echo '<option id ="" value="">Select storage location</option>';


    }
}elseif(isset($_POST['bpvid']) && !empty($_POST['bpvid']))
{
    $sqlst = "SELECT * FROM `plant` WHERE bpv_id =".$_POST['bpvid'];
    $query = $db->query($sqlst);
   // $rowCount = $query->num_rows;
    if($query->rowCount() > 0)
    {
        echo '<option selected="" disabled id="" value="">Select Plant </option>';
        while($row =$query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['plant_id'].'" value="'.$row['plant_id'].'" >'.$row['plant'].'</option>';
        }
    }
    else
    {
        echo '<option id="" value="">Select BPV First</option>';
    } 
}elseif(isset($_POST['plantid']) && !empty($_POST['plantid']))
{
    $sqlstate = "SELECT * FROM `storage_location` WHERE plant_id =".$_POST['plantid'];
    $query = $db->query($sqlstate);

    if($query->rowCount() > 0)
    {
        echo '<option selected="" disabled id="" value="">Select Storage Location</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['sl_id'].'" value="'.$row['sl_id'].'">'.$row['storage_location'].'</option>';
        }
    }
}
if(isset($_POST['bpv_id']) && !empty($_POST['bpv_id']))
{
    $sql = "SELECT * FROM `item_category` WHERE bpv_id =".$_POST['bpv_id'];
    $query = $db->query($sql);

    if($query->rowCount() > 0)
    {
       // echo '<option selected="" disabled id="" value="">Select Item Category</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        
        {
            echo '<option id="'.$row['ic_id'].'" value="'.$row['ic_id'].'">'.$row['item_category'].'</option>';
        }
    }
}
if(isset($_POST['bpvid_v']) && !empty($_POST['bpvid_v']))
{
    $sql = "SELECT * FROM `valuationclass` WHERE bpv_id =".$_POST['bpvid_v'];
    $query = $db->query($sql);

    if($query->rowCount() > 0)
    {
        echo '<option selected="" disabled id="" value="">Select Valuation Class</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['vc_id'].'" value="'.$row['vc_id'].'">'.$row['valuationclass'].'</option>';
        }
    }
}
elseif(isset($_POST['vcid']) && !empty($_POST['vcid']))
{
    $sqlstat = "SELECT * FROM `procurementtype` WHERE vc_id =".$_POST['vcid'];
    $query = $db->query($sqlstat);

    if($query->rowCount() > 0)
    {
        //echo '<option selected="" disabled id="" value="">Select Procurement Type</option>';
        while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['pt_id'].'" value="'.$row['pt_id'].'">'.$row['procurementtype'].'</option>';
        }
    }
}
if(isset($_POST['vc_id']) && !empty($_POST['vc_id']))
{
    $sql = "SELECT * FROM `availability_check` WHERE vc_id =".$_POST['vc_id'];
    $query = $db->query($sql);

    if($query->rowCount() > 0)
    {
       // echo '<option selected="" disabled id="" value="">Select Availability Check</option>';
       while($row = $query->fetch(PDO::FETCH_ASSOC))
       {
           echo '<option id="'.$row['ac_id'].'" value="'.$row['ac_id'].'">'.$row['availability_check'].'</option>';
       }
    }
}
if(isset($_POST['asr_id']) && !empty($_POST['asr_id']))
{
    $sql = "SELECT * FROM `snp_planner_code` WHERE asr_id = ".$_POST['asr_id'];
    $query = $db->query($sql);

    if($query->rowCount() > 0)
    { 
        echo '<option selected="" disabled id="" value="">Select SNP Planner Code</option>';
         while($row = $query->fetch(PDO::FETCH_ASSOC))
        {
            echo '<option id="'.$row['snp_id'].'" value="'.$row['snp_id'].'">'.$row['snp_planner_code'].'</option>';
        }

    }
}
?>