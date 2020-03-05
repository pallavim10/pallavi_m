
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <!-- <link rel="stylesheet" href="material_extension_css.css"> -->

    <!-- <link rel="stylesheet" href="style.css"> -->

    <title>Material Form</title>

    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <style>
        fieldset {
            /* margin:0px 0.5px !important; */
            border: 1px solid black!important;
            margin-right: 0.0px !important;
        }
        /* fieldset:last-child{ margin-right: 0px !important;} */
        /* body{ } */
        
        legend {
            /*width: fit-content !important; */
            width: auto !important;
            margin-bottom: 0rem!important;
            font-size: 1.2rem !important;
        }
        
        .form-group {
            margin-bottom: 0.3rem !important;
            font-size: 0.85rem !important;
        }
        
        label {
            margin-bottom: 0.15rem!important;
        }
        
        .orgdata_hcolor {
            color: rgba(195, 0, 32, 1);
        }
        
        .control_code_hcolor {
            color: rgba(1, 75, 150, 1);
        }
        
        .purchasing_hcolor {
            color: rgba(0, 120, 59, 1);
        }
        
        .sales_hcolor {
            color: rgba(241, 146, 0, 1);
        }
        
        .accounting_hcolor {
            color: rgba(32, 160, 209, 1);
        }
        
        .costing_hcolor {
            color: rgba(100, 171, 29, 1);
        }
        
        .mrp1_2_hcolor {
            color: rgba(0, 120, 59, 1);
        }
        
        .mrp_planning_hcolor {
            color: rgba(195, 0, 32, 1);
        }
        
        .apo_details_hcolor {
            color: rgba(241, 146, 0, 1);
        }
        
        .btn {
            font-size: 0.95rem !important;
        }
        
        .btn_space {
            justify-content: space-around !important;
        }
        
        .logo_main {
            background: #63ae45;
            height: 18%;
            margin-top: 0.6rem !important;
        }
        
        .img_width {
            max-width: 50%;
        }
        
        .control-label {
            flex-wrap: wrap;
        }
        
        h5 {
            font-size: 1.2rem !important;
            font-weight: 400!important;
        }
        
        .mb {
            margin-bottom: 5px !important;
        }
        .href{
            text-decoration:none;
            color:#fff;
        }
        .href:hover{
            text-decoration:none;
            color:#fff;
        }



        
    </style>
</head>

<body>

    <div class="container-fluid px-5">
        <!--container starts here-->

        <div class="row no-gutters mb">

            <h1 class="text-center col-10 ">Material Master</h1>

            <div class="col-2 logo_main mt-2">

                <a href="#"><img class="img_width" src="images/basf-logo.png" alt="BASF LOGO"></a>
            </div>

            <!-- <img src="logo_basf.png" alt="BASF_logo" class="col-lg-3 col-4 px-0"> -->

        </div>

        <form class="row no-gutters" autocomplete="off" id="requiredform"  method="POST"  action="material_form.php">
            <!--form starts here-->

            <!--org data fieldset-->
            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="orgdata_hcolor text-center">ORG Data</h5>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="material_number">Material Number<span class="text-danger">&#42</span></label>

                    <input type="number" name="material_number" id="material_number" class="form-control ml-3 col-7 " placeholder="" required>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3 " for="material_description">Material Description</label>

                    <input type="text" name="material_description" id="material_description" class="form-control ml-3 col-7" placeholder="">

                </div>
                <?php
       // $_POST['org_id'];
        include_once 'database_connection.php';
        $query = "SELECT * FROM `org_code` ORDER BY `org_code` ASC ";
        $result = $db->query($query);      
       // $rowCount = $result->num_rows;  
       ?>
                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="org_code">Org Code<span class="text-danger">&#42</span></label>

                    <select  name="org_code" id="org_code" class="form-control ml-3 col-7 dropdown" placeholder="" required>
        
        <option selected="" disabled id ="" value="">Select Org Code</option>
        <?php
            if($result->rowCount() > 0 ){
                while($row = $result->fetch(PDO::FETCH_ASSOC))
                {       
                    echo '<option id="'.$row['id'].'" value="'.$row['id'].'">'.$row['org_code'].'</option>';
                }
            }
            else
            {
                echo '<option id="" value="">org code not available</option>';
            }
        ?>
      
        </select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="bu">BU<span class="text-danger">&#42</span></label>

                    <select  name="bu" id="bu" class="form-control ml-3 col-7 dropdown" placeholder="" required>
       
                     <option  selected="" disabled="" id ="" value="" >Select Org Code first</option>
                    </select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="bpv">BPV<span class="text-danger">&#42</span></label>

                    <select name="bpv" id="bpv" class="form-control ml-3 col-7 dropdown" placeholder="" required>

                         <!-- <option >Select BPV</option></select> -->
                     <option selected="" disabled="" id="" value="" >Select Org Code First</option>
                    </select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="plant">Plant<span class="text-danger">&#42</span></label>

                    <select name="plant" id="plant" class="form-control ml-3 col-7 dropdown" placeholder="" required>

                      <option selected="" disabled="" id="" value="">Select BPV First</option>
                      <!-- <option>Select Plant</option> -->
                     </select>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="storage_location">Stor. Location<span class="text-danger">&#42</span></label>

                    <select name="storage_location" id="storage_location" class="form-control ml-3 col-7 dropdown" placeholder="" required>

                      <option selected="" disabled="" id="" value="">Select Plant First</option>
                      <!-- <option>Select Storage</option> -->
                      </select>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="distributionchannel">Distr. Channel<span class="text-danger">&#42</span></label>

                    <select name="distributionchannel" id="distributionchannel" class="form-control ml-3 col-7 dropdown" placeholder="" required>

                      <option selected="" disabled="" id="" value="" >Select BU First</option> 
                      <!-- <option>Select Distribution Channel</option> -->
        
                    </select>

                </div>

                <!--purchasing data fieldset-->

                <hr class="m-0 border-dark">

                <fieldset class="col-12 p-0 border border-0">

                    <legend></legend>

                    <h5 class="purchasing_hcolor text-center">Purchasing</h5>

                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="purchasing_grp">Purchasing Group</label>

                        <select type="text" name="purchasing_grp" id="purchasing_grp" class="form-control ml-3 col-7 dropdown" placeholder="">

                        <option>Select Purchasing Group</option></select>

                    </div>
                    <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `ordering_unit` ORDER BY ordering_unit ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>
                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="ordering_unit">Ordering Unit</label>

                        <select type="text" name="ordering_unit" id="ordering_unit" class="form-control ml-3 col-7 dropdown" placeholder="">

                          <option selected="" disabled="" id="" value="">Select Ordering Unit</option>
                          <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['ou_id'].'" value="'.$row['ou_id'].'">'.$row['ordering_unit'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">ordeing unit not available</option>';
                                             }
                          ?>
                          </select>

                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="tax_ind_f_material">Tax Indicator for Material</label>

                        <input type="text" name="tax_ind_f_material" id="tax_ind_f_material" class="form-control ml-3 col-7 dropdown" placeholder="">

                    </div>

                </fieldset>
                <!--purchasing data fieldset ends-->

            </fieldset>
            <!--org data fieldset ends-->



            <!--sales data fieldset-->

            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="sales_hcolor text-center">Sales</h5>

                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="min_order_qty">Min. Order Qty<span class="text-danger">&#42</span></label>

                    <input type="text" name="min_order_qty" id="min_order_qty" class="form-control ml-3 col-7" placeholder="100.000 " required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="min_dely_qty">Min. Deli. Qty<span class="text-danger">&#42</span></label>

                    <input type="text" name="min_dely_qty" id="min_dely_qty" class="form-control ml-3 col-7" placeholder="100.000 " required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="delivery_unit">Delivery Unit<span class="text-danger">&#42</span></label>

                    <input type="text" name="delivery_unit" id="delivery_unit" class="form-control ml-3 col-7" placeholder="100.000 " required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="material_pricing_grp">Material Pricing Grp</label>

                    <input type="text" name="material_pricing_grp" id="material_pricing_grp" class="form-control ml-3 col-7 dropdown" placeholder="" value="7A" readonly>

                     <!--<option id="1" value="1" readonly>7A</option>  -->

                     <!--</select>-->

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="account_assign_grp">Acct. Assign. Grp</label>

                    <input type="text" name="account_assign_grp" id="account_assign_grp" class="form-control ml-3 col-7 dropdown" placeholder="" value="01" readonly>

                      <!-- <option id="1" value="1" readonly>01</option>   -->
                      <!-- </select> -->

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="item_category">Item Category</label>

                    <select name="item_category" id="item_category" class="form-control ml-3 col-7 " placeholder="" readonly>

                        <option selected="" disabled="" id="" value="" >Select BPV First</option>  
                    
                     </select> 

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="general_item_category_grp">Gen. Item Cat. Grp</label>

                    <input type="text" name="general_item_category_grp" id="general_item_category_grp" class="form-control ml-3 col-7 " placeholder="">

                    <!-- <option>Select Material Pricing Group</option>   </select>  -->

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="availability_check">Avail. Check</label>

                    <select name="availability_check" id="availability_check" class="form-control ml-3 col-7 " placeholder="" readonly>
                     <option selected="" disabled="" id="" value="">Select Valuation class</option>
                    </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="loading_grp">Loading Grp</label>

                    <input type="text" name="loading_grp" id="loading_grp" class="form-control ml-3 col-7 " placeholder="" value="7001" readonly>

                </div>

                <!--costing data fieldset-->

                <hr class="m-0 border-dark">

                <fieldset class="col-12 p-0 border border-0 ">

                    <legend></legend>

                    <h5 class="costing_hcolor text-center">Costing</h5>

                    <div class="form-check form-group">

                        <label class="form-check-label px-3"><input type="checkbox" class="form-check-input" name="do_not_cost" id="do_not_cost" value="do_not_cost" unchecked>DO NOT COST</label>

                    </div>

                </fieldset>
                <!--costing data fieldset ends-->

                <!--control data fieldset-->

                <hr class="m-0 border-dark">

                <fieldset class="col-12 p-0 border border-0">

                    <legend></legend>

                    <h5 class="control_code_hcolor text-center">Contorl code</h5>

                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="chapter_id">Chapter ID<span class="text-danger">&#42</span></label>

                        <input  name="chapter_id" id="chapter_id" class="form-control ml-3 col-7 " placeholder="" required>

                    </div>

                </fieldset>
                <!--control data fieldset ends-->

            </fieldset>
            <!--sales data fieldset ends-->



            <!--accounting data fieldset-->

            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="accounting_hcolor text-center">Accounting</h5>

               

                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="valuationclass">Valuation Class<span class="text-danger">&#42</span></label>

                    <select  name="valuationclass" id="valuationclass" class="form-control ml-3 col-7 dropdown" placeholder="" required > 

                         <option selected="" disabled="" id="" value="">Select BPV First</option>  
                         <!-- <option>Select Valuation class</option> -->
                    </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="costing_lot_size">Costing Lot Size<span class="text-danger">&#42</span></label>

                    <input type="text" name="costing_lot_size" id="costing_lot_size" class="form-control ml-3 col-7 " placeholder="" value="100" required readonly>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="standard_price">Standard Price<span class="text-danger">&#42</span></label>

                    <input type="text" name="standard_price" id="standard_price" class="form-control ml-3 col-7 " placeholder="" required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="per_unit_price">Per. Unit Price<span class="text-danger">&#42</span></label>

                    <input type="text" name="per_unit_price" id="per_unit_price" class="form-control ml-3 col-7 " placeholder="" required>

                </div>

                <hr class="m-0 border-dark">

                <!--MRP 1&2 data fieldset-->

                <fieldset class="col-12 p-0 border border-0">

                    <legend></legend>

                    <h5 class="mrp1_2_hcolor text-center">MRP 1 & 2 </h5>
                    <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `mrp_group` ORDER BY mrp_group ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>
                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_group">MRP Group</label>

                        <select type="text" name="mrp_group" id="mrp_group" class="form-control ml-3 col-7" placeholder="">

                           <option selected="" disabled="" id="" value="">Select MRP Group</option>
                           <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['mrpg_id'].'" value="'.$row['mrp_group'].'">'.$row['mrp_group'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">MRP group not available</option>';
                                             }
                          ?>
                        </select>

                    </div>
                    <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `mrp_type` ORDER BY mrp_type ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>
                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_type">MRP Type</label>

                        <select  name="mrp_type" id="mrp_type" class="form-control ml-3 col-7" placeholder="">

                         <option>Select MRP Type</option>
                         <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['mrpt_id'].'" value="'.$row['mrp_type'].'">'.$row['mrp_type'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">MRP type not available</option>';
                                             }
                          ?>
                         </select>

                    </div>



                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_controller">MRP Controller</label>

                        <input type="text" name="mrp_controller" id="mrp_controller" class="form-control ml-3 col-7" placeholder="">

                          <!-- <option>Select MRP Controller</option>  -->
                          
                          <!-- </select> -->

                    </div>
                    <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `lot_size` ORDER BY lot_size ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>
                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="lot_size">Lot Size</label>

                        <select type="text" name="lot_size" id="lot_size" class="form-control ml-3 col-7" placeholder="">

                           <option selected="" disabled="" id="" value="">Select Lot Size</option>
                           <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['lot_id'].'" value="'.$row['lot_size'].'">'.$row['lot_size'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">Lot Size not available</option>';
                                             }
                          ?>
                         </select>

                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="procurementtype">Procurement Type</label>

                        <select name="procurementtype" id="procurementtype" class="form-control ml-3 col-7 " placeholder="" readonly>
                            <option selected="" disabled="" id="" value="">Select Valuation class</option>

                            <!-- <option>Select Procurement Type</option> -->
                        </select>    


                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="special_procurement">Special Procurement</label>

                        <input type="text" name="special_procurement" id="special_procurement" class="form-control ml-3 col-7 dropdown" placeholder="">

                        <!--  <option>Select Special Procurement</option></select>  -->

                    </div>



                    <div class="form-group d-flex  ">

                        <label class="control-label col-4 px-3" for="scheduling_margin_key">Sched. Margin Key</label>

                        <input type="text" name="scheduling_margin_key" id="scheduling_margin_key" class="form-control ml-3 col-7" placeholder=" " value="001" readonly>

                    </div>

                </fieldset>
                <!--MRP 1&2 data fieldset ends-->

            </fieldset>
            <!--accounting data fieldset ends-->



            <!--MRP & Planning(MRP 3 & 4) data fieldset-->

            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="mrp_planning_hcolor text-center">MRP 3 & 4</h5>
                <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `strategy_group` ORDER BY strategy_group ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>

                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="strategy_group">Strategy Group</label>

                    <select type="text" name="strategy_group" id="strategy_group" class="form-control ml-3 col-7" placeholder="">

                          <option selected="" disabled="" id="" value="">Select Strategy Group</option>

                          <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['sg_id'].'" value="'.$row['strategy_group'].'">'.$row['strategy_group'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">strategy group not available</option>';
                                             }
                          ?>
                     </select>

                </div>
                <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `consumption_mode` ORDER BY consumption_mode ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>


                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="consumption_mode">Consumption Mode</label>

                    <select type="text" name="consumption_mode" id="consumption_mode" class="form-control ml-3 col-7" placeholder="">

                        <option selected="" disabled="" id="" value="">Select Consumption Mode</option> 
                        <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['cm_id'].'" value="'.$row['consumption_mode'].'">'.$row['consumption_mode'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">consumption mode not available</option>';
                                             }
                          ?>
                        
                    </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="fwd_consumption">FWD Consumption</label>

                    <input type="text" name="fwd_consumption" id="fwd_consumption" class="form-control ml-3 col-7" placeholder="">

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="bwd_consumption">BWD Consumption</label>

                    <input type="text" name="bwd_consumption" id="bwd_consumption" class="form-control ml-3 col-7" placeholder="">

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="planning_material">Planning Material</label>

                    <input type="text" name="planning_material" id="planning_material" class="form-control ml-3 col-7" placeholder="">

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="planning_plant">Planning Plant</label>

                    <input type="text" name="planning_plant" id="planning_plant" class="form-control ml-3 col-7" placeholder="">

                </div>

                <hr class="m-0 border-dark">

                <!--APO data fieldset-->

                <fieldset class="col-12 p-0 border border-0 ">

                    <legend></legend>

                    <h5 class="apo_details_hcolor text-center">APO Details</h5>
                    <?php
                        include_once 'database_connection.php';
                            $query = "SELECT * FROM `apo_snp_relevant` ORDER BY `apo_snp_relevant` ASC ";
                                 $result = $db->query($query);      
                                    // $rowCount = $result->num_rows;  
                    ?>

                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="apo_snp_relevant">APO/SNP Relevant</label>

                        <select type="text" name="apo_snp_relevant" id="apo_snp_relevant" class="form-control ml-3 col-7 dropdown" placeholder="">

                            <option selected="" disabled="" id="" value="">Select APO/SNP </option>
                            <?php
                             if($result->rowCount() > 0 ){
                                 while($row = $result->fetch(PDO::FETCH_ASSOC))
                                 {       
                                  echo '<option id="'.$row['asr_id'].'" value="'.$row['asr_id'].'">'.$row['apo_snp_relevant'].'</option>';
                                 }
                                    }
                                         else
                                             {
                                                 echo '<option id="" value="">APO SNP Relevant not available</option>';
                                             }
                          ?>
                        </select>

                    </div>

                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="snp_planner_code">SNP Planner Code</label>

                        <select type="text" name="snp_planner_code" id="snp_planner_code" class="form-control ml-3 col-7 dropdown" placeholder="">

                            <option id="" value="">Select SNP Planner Code</option>
                        </select>

                    </div>

                </fieldset>
                <!--APO data fieldset ends-->

                <div class="form-group d-flex ">
                <label class="control-label col-4 px-3" for="username">UserName<span class="text-danger">&#42</span></label>
                <input type="text" name="username" id="username" class="form-control ml-3 col-7" placeholder="" required>
                </div>

                <div class="form-group  d-flex btn_space mt-4">

                    <button type="submit" class="btn btn-success " value="submit" id="submit" name="submit">Submit</button>

                    <a type="button" class="btn btn-success href" value="signout" id="signout" name="signout" href="index.php?signout=true window.location.href=login.php " >Sign Out</a>

                    <!-- <img src="logo_basf.png" alt="BASF_logo" class="col-lg-3 col-4 px-0">  -->


                </div>

            </fieldset>
            <!--MRP & Planning data fieldset ends-->

        </form>
        <!--form end-->

        <!-- <div class="form-group my-1 px-3 d-flex btn_space">

    <button type="submit" class="btn btn-secondary p-1">Submit</button>

    <button type="submit" class="btn btn-secondary p-1">Default</button>

     <img src="logo_basf.png" alt="BASF_logo" class="col-lg-3 col-4 px-0">

  </div>  -->

    </div>
    <!--container end-->

    <!-- jQuery library -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

    <!-- Popper JS -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Script-->

    <!-- <script src="validation.js" rel="JavaScript"></script> -->

</body>

</html>
<script>
$(document).ready(function(){
   $('#org_code').change(function(){
       var org_id = $(this).val();
       if(org_id){
        $.ajax({
            type:'POST',
            url:'data.php',            
            data:"org_id=" +org_id,
            success:function(html)
            {
                $('#bu').html(html);
            }
        });
       }
       else
       {
           $('#bu').html('<option id="" value="">Select Org code first</option>');
           $('#distributionchannel').html('<option id="" value="">Select BU first</option>');
       }
   });
 $('#bu').change(function(){
    var buid = $(this).val();
    console.log(buid);
    if(buid){
        $.ajax({
        type:'POST',
        url:'data.php',
        data:'buid=' +buid , 
        success:function(html)
        {
           // alert(html);
            $('#distributionchannel').html(html);
           
           // console.log(error_log());
        }
    });
    }
    else
    {
        $('#distributionchannel').html('<option id="" value="">Select BU first</option>');
    } 
 });
 $('#org_code').change(function(){
    var orgid = $(this).val();
    console.log(orgid);
    if(orgid){
        $.ajax({
            type:'POST',
            url:'data.php',            
            data:'orgid=' + orgid,
            success:function(html)
            {
                
                $('#bpv').html(html);
            }
        });
    }else
    {
        $('#bpv').html('<option id="" value="">Select org code first</option>')
    }        
 });
 $('#bpv').on('change',function(){
    var bpvid = $(this).val();
    console.log(bpvid);
    if(bpvid){
    $.ajax({
        type:'POST',
        url:'data.php',        
        data:{'bpvid':bpvid},
        success:function(html)
        {
            alert(html);
            $('#plant').html(html);
        }
    }) 
    }
    else
    {
        $('#plant').html('<option id="" value="">Select bpv first</option>');
    }    
 });
 $('#plant').on('change',function(){
    var plantid = $(this).val();
    console.log(plantid);
    if(plantid){
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'plantid':plantid},
            success:function(html)
            {
                alert(html);
                $('#storage_location').html(html);
            }

        })
    }else
    {
        $('#storage_location').html('<option id="" value="">Select Plant First</option>');
    }
 });
$('#bpv').on('change',function(){
    let bpv_id = $(this).val();
    console.log(bpv_id);
    if(bpv_id){
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'bpv_id':bpv_id},
            success:function(html){
                alert(html);
                $('#item_category').html(html);
            }
        })
    } else
    {
        $('#item_category').html('<option id="" value="">Select BPV First</option>');
    }
});
$('#bpv').on('change',function(){
    let bpvid_v = $(this).val();
    //console.log(bpvid_v);
    if(bpvid_v)
    {
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'bpvid_v':bpvid_v},
            success:function(html){
                alert(html);
                $('#valuationclass').html(html);
            }
        })
    }
    else
    {
        $('#valuationclass').html('<option id="" value="">Select BPV First</option>');
    }
});
$('#valuationclass').on('change',function(){
    let vcid = $(this).val();
    console.log(vcid);
    if(vcid){
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'vcid':vcid},
            success:function(html){
                alert(html);
                $('#procurementtype').html(html);
            }
        })
    }
    else
    {
        $('#procurementtype').html('<option id="" value="">Select Valuation class First</option>');
    }
});
$('#valuationclass').on('change',function(){
    let vc_id = $(this).val();
    if(vc_id){
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'vc_id':vc_id},
            success:function(html){
                alert(html);
                $('#availability_check').html(html);
            }
        })
    }
    else
    {
        $('#availability_check').html('<option id="" value="">Select Valuation Class</option>');
    }
});
$('#apo_snp_relevant').on('change',function(){
    let asr_id = $(this).val();
    if(asr_id){
        $.ajax({
            type:'POST',
            url:'data.php',
            data:{'asr_id':asr_id},
            success:function(html){
                alert(html);
                $('#snp_planner_code').html(html);
            }
        })
    }
    else
    {
        $('#snp_planner_code').html('<option id="" value="">Select APO SNP Relevant</option>');
    }
});
});
</script>