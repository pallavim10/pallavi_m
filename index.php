<?php
// include('database_connection.php');
session_start();
if(!isset($_SESSION['submit']))
{
    header("Location: login.php");
}
if(isset($_GET['signout']))
{
    session_destroy();
    unset($_SESSION);
    header("Location: login.php");
}

?>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
    </style>





</head>

<body>

    <div class="container-fluid px-5">
        <!--container starts here-->

        <div class="row no-gutters mb">

            <h1 class="text-center col-10 ">Material Master</h1>

            <div class="col-2 logo_main mt-2">

                <a href="#"><img class="img_width" src="basf-logo.png" alt="BASF LOGO"></a>
            </div>

            <!-- <img src="logo_basf.png" alt="BASF_logo" class="col-lg-3 col-4 px-0"> -->

        </div>

        <form class="row no-gutters" autocomplete="off" id="requiredform" action="material_form.php" method="POST">
            <!--form starts here-->

            <!--org data fieldset-->



            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="orgdata_hcolor text-center">ORG Data</h5>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="material_number">Material Number</label>

                    <input type="number" name="material_number" id="material_number" class="form-control ml-3 col-7 " placeholder="" required>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3 " for="material_description">Material Description</label>

                    <input type="text" name="material_description" id="material_description" class="form-control ml-3 col-7" placeholder="">

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="org_code">Org Code</label>

                    <select type="text" name="org_code" id="org_code" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <!-- <option >Select Org Code</option> -->
           <!-- <option>Select Org </option>-->
        <!--<option>Select Code</option>-->
        
        <option value="">Select Org Code</option></select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="bu">BU</label>

                    <select type="text" name="bu" id="bu" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <!-- <option >Select BU</option> -->
        <option value="">Select BU</option></select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="bpv">BPV</label>

                    <select type="text" name="bpv" id="bpv" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <!-- <option >Select BPV</option> -->
        <option value="">Select BPV</option></select>

                </div>

                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="plant">Plant</label>

                    <select type="text" name="plant" id="plant" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <option>Select Plant</option></select>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="storage_location">Stor. Location</label>

                    <select type="text" name="storage_location" id="storage_location" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <option>Select Storage Location</option></select>

                </div>



                <div class="form-group d-flex ">

                    <label class="control-label col-4 px-3" for="distribution_channel">Distr. Channel</label>

                    <select type="text" name="distribution_channel" id="distribution_channel" class="form-control ml-3 col-7 dropdown" placeholder="" required>

        <option>Select distribution Channel</option>  </select>

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



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="ordering_unit">Ordering Unit</label>

                        <select type="text" name="ordering_unit" id="ordering_unit" class="form-control ml-3 col-7 dropdown" placeholder="">

          <option>Select Ordering Unit</option></select>

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

                    <label class="control-label col-4 px-3" for="min_order_qty">Min. Order Qty</label>

                    <input type="text" name="min_order_qty" id="min_order_qty" class="form-control ml-3 col-7" placeholder="100.000 KG" required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="min_dely_qty">Min. Deli. Qty</label>

                    <input type="text" name="min_dely_qty" id="min_dely_qty" class="form-control ml-3 col-7" placeholder="100.000 KG" required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="delivery_unit">Delivery Unit</label>

                    <input type="text" name="delivery_unit" id="delivery_unit" class="form-control ml-3 col-7" placeholder="100.000 KG " required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="material_pricing_grp">Material Pricing Grp</label>

                    <select type="text" name="material_pricing_grp" id="material_pricing_grp" class="form-control ml-3 col-7 dropdown" placeholder="">

       <option>Select Material Pricing Group</option>   </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="account_assign_grp">Acct. Assign. Grp</label>

                    <select type="text" name="account_assign_grp" id="account_assign_grp" class="form-control ml-3 col-7 dropdown" placeholder="">

       <option>Select Account Assignment Group</option>  </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="item_category">Item Category</label>

                    <input type="text" name="item_category" id="item_category" class="form-control ml-3 col-7 " placeholder="">

                    <!-- <option>Select Material Pricing Group</option>   </select>  -->

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="general_item_category_grp">Gen. Item Cat. Grp</label>

                    <input type="text" name="general_item_category_grp" id="general_item_category_grp" class="form-control ml-3 col-7 " placeholder="">

                    <!-- <option>Select Material Pricing Group</option>   </select>  -->

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="availability_check">Avail. Check</label>

                    <input type="text" name="availability_check" id="availability_check" class="form-control ml-3 col-7 " placeholder="">

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="loading_grp">Loading Grp</label>

                    <input type="text" name="loading_grp" id="loading_grp" class="form-control ml-3 col-7 " placeholder="">

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

                        <label class="control-label col-4 px-3" for="chapter_id">Chapter ID</label>

                        <input type="number" name="chapter_id" id="chapter_id" class="form-control ml-3 col-7 " placeholder="" required>

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

                    <label class="control-label col-4 px-3" for="valuation_class">Valuation Class</label>

                    <select type="text" name="valuation_class" id="valuation_class" class="form-control ml-3 col-7 dropdown" placeholder="" required>

       <option>Select Valuation Class</option>  </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="costing_lot_size">Costing Lot Size</label>

                    <input type="text" name="costing_lot_size" id="costing_lot_size" class="form-control ml-3 col-7 " placeholder="" required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="standard_price">Standard Price</label>

                    <input type="text" name="standard_price" id="standard_price" class="form-control ml-3 col-7 " placeholder="" required>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="per_unit_price">Per. Unit Price</label>

                    <input type="text" name="per_unit_price" id="per_unit_price" class="form-control ml-3 col-7 " placeholder="" required>

                </div>

                <hr class="m-0 border-dark">

                <!--MRP 1&2 data fieldset-->

                <fieldset class="col-12 p-0 border border-0">

                    <legend></legend>

                    <h5 class="mrp1_2_hcolor text-center">MRP 1 & 2 </h5>

                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_group">MRP Group</label>

                        <select type="text" name="mrp_group" id="mrp_group" class="form-control ml-3 col-7" placeholder="">

          <option>Select MRP Group</option> </select>

                    </div>



                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_type">MRP Type</label>

                        <select type="text" name="mrp_type" id="mrp_type" class="form-control ml-3 col-7" placeholder="">

          <option>Select MRP Type</option> </select>

                    </div>



                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="mrp_controller">MRP Controller</label>

                        <select type="text" name="mrp_controller" id="mrp_controller" class="form-control ml-3 col-7" placeholder="">

          <option>Select MRP Controller</option> </select>

                    </div>



                    <div class="form-group d-flex">

                        <label class="control-label col-4 px-3" for="lot_size">Lot Size</label>

                        <select type="text" name="lot_size" id="lot_size" class="form-control ml-3 col-7" placeholder="">

          <option>Select Lot Size</option> </select>

                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="procurement_type">Procurement Type</label>

                        <select type="text" name="procurement_type" id="procurement_type" class="form-control ml-3 col-7 dropdown" placeholder="">

          <option>Select Procurement Type</option></select>

                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="special_procurement">Special Procurement</label>

                        <input type="text" name="special_procurement" id="special_procurement" class="form-control ml-3 col-7 dropdown" placeholder="">

                        <!--  <option>Select Special Procurement</option></select>  -->

                    </div>



                    <div class="form-group d-flex  ">

                        <label class="control-label col-4 px-3" for="scheduling_margin_key">Sched. Margin Key</label>

                        <input type="text" name="scheduling_margin_key" id="scheduling_margin_key" class="form-control ml-3 col-7" placeholder=" ">

                    </div>

                </fieldset>
                <!--MRP 1&2 data fieldset ends-->

            </fieldset>
            <!--accounting data fieldset ends-->



            <!--MRP & Planning(MRP 3 & 4) data fieldset-->

            <fieldset class="col-lg-3 p-0">

                <legend></legend>

                <h5 class="mrp_planning_hcolor text-center">MRP 3 & 4</h5>

                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="strategy_group">Strategy Group</label>

                    <select type="text" name="strategy_group" id="strategy_group" class="form-control ml-3 col-7" placeholder="">

        <option>Select Strategy Group</option> </select>

                </div>



                <div class="form-group d-flex">

                    <label class="control-label col-4 px-3" for="consumption_mode">Consumption Mode</label>

                    <select type="text" name="consumption_mode" id="consumption_mode" class="form-control ml-3 col-7" placeholder="">

         <option>Select Consumption Mode</option> </select>

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

                <fieldset class="col-12 p-0 border border-0 mb-4">

                    <legend></legend>

                    <h5 class="apo_details_hcolor text-center">APO Details</h5>

                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="apo_snp_relevant">APO/SNP Relevant</label>

                        <select type="text" name="apo_snp_relevant" id="apo_snp_relevant" class="form-control ml-3 col-7 dropdown" placeholder="">

         <option>Select APO/SNP </option></select>

                    </div>



                    <div class="form-group d-flex ">

                        <label class="control-label col-4 px-3" for="snp_planner_code">SNP Planner Code</label>

                        <select type="text" name="snp_planner_code" id="snp_planner_code" class="form-control ml-3 col-7 dropdown" placeholder="">

         <option>Select SNP Planner Code</option></select>

                    </div>

                </fieldset>
                <!--APO data fieldset ends-->

                <div class="form-group  d-flex btn_space">

                    <button type="submit" class="btn btn-success " value="submit" id="btnsubmit" name="submit">Submit</button>

                    <button type="sign-out" class="btn btn-success " value="signout" id="btnsignout" name="signout">Sign Out</button>

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
    $(document).ready(function() {
        // $("#requiredform").validate();


        $("#requiredform").submit({
            rules: {
                org_code: "required",
                bu: "required",
                bpv: "required",
                plant: "required",
                storage_location: "required",
                distribution_channel: "required",
                materialnum: {
                    required: true,
                    minlength: 8
                },
                chapterid: {
                    required: true,
                    minlength: 8
                },
                min_order_qty: {
                    required: true,
                    minlength: 2
                },
                min_delivery_qty: {
                    required: true,
                    minlength: 2
                },
                delivery_unit: "required",
                valuation_class: "required",
                costing_lot_size: "required",
                standard_price: "required",
                per_unit_price: "required",

                messages: {
                    org_code: "Please select a company code",
                    bu: "Please select a bu",
                    bpv: "Please select a bpv",
                    plant: "Please select plant",
                    storage_location: "Please select a storage location",
                    distribution_channel: "Please select a distribution channel",
                    materialnum: {
                        required: "Please enter the material number",
                        minlength: "material number must have 8 digits"
                    },
                    chapterid: {
                        required: "Please enter the chapter id",
                        minlength: "The format of chapter id is 0000.00.00"
                    },
                    min_order_qty: {
                        required: "Please enter the minimum order quantity",
                        minlength: "quantity must be more than 10 kg"
                    },
                    min_delivery_qty: {
                        required: "Please enter the minimum delivery quantity",
                        minlength: "quantity must be more than 10 kg"
                    },
                    delivery_unit: "Please select an unit",
                    valuation_class: "Please select an appropriate valuation class",
                    costing_lot_size: "Please select a costing lot size",
                    standard_price: "Please mention the standard price",
                    per_unit_price: "Please mention the perunit price"

                }
            }
        });



        function successFunction(data, id, parent_id) {
            var html_code = '';
            html_code += '<option value="">Select &nbsp' + id + '</option>';
            $.each(data, function(key, value) {
                if (id == "org_code") {
                    if (value.parent_id == '0') {
                        html_code += '<option value= "' + value.id + '">' + value.name + '</option>';
                        console.log(value);
                    }
                } else {
                    if (value.parent_id == parent_id) {
                        if (value.key == id)
                            html_code += '<option = "' + value.id + '">' + value.name + '</option>';
                    }
                }
                $('#' + id).html(html_code);
            });
        }

        function setHeaders(xhr) {
            xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
        }
        load_data('org_code');

        function load_data(id, parent_id) {
            $.ajax({
                url: "data.json",
                type: "GET",
                // dataType: "json",
                success: (data) => successFunction(data, id, parent_id)
                    //   beforeSend: setHeaders
            });
        }
        $(document).on('change', '#org_code', function() {
            var orgcode_id = $(this).val();
            if (orgcode_id != '') {
                load_data('bu', orgcode_id);
                //console.log(value);
            } else {
                if (value.key == id)
                    $('#bu').html('<option value="">Select BU</option>');
                //$('#bpv').html('<option value="">Select BPV</option>');
            }
        });
        $(document).on('change', '#org_code', function() {
            var orgcode_id = $(this).val();
            if (orgcode_id != '') {
                load_data('bpv', orgcode_id);
                // console.log(value);
            } else {
                if (value.key == id)
                    $('#bpv').html('<option value="">Select BPV</option>');
            }
        });



    });
</script>