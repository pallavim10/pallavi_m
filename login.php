<?php
session_start();
if(isset($_SESSION['submit']))
{
    header("Location:index.php");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/global.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script> -->
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid background">
        <div class="row">
            <div class="col-md-4  col-12"></div>
            <div class="col-md-4  col-12">
                <!-- form starts -->
                <form class="form-container" method="POST"  autocomplete="off" >
                <h3 >Material Master For Material Creation</h3>
                    <div class="form-group ">
                      <!-- <div class="input-group-append"> -->
                        <label for="novelid"><i class="fa fa-user mr-1 "></i>Novel ID</label>
                      <!-- <div>   -->
                        <input type="text" class="form-control " name="novelid" id="novelid" placeholder="Novel ID">
                    </div>
                    <div class="form-group">
                        <label for="password"><i class="fa fa-lock mr-1"></i>Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" >
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                           <input type="checkbox" name="rememberme" class="custom-control-input" id="customControlInline">
                           <label class="custom-control-label" for="customControlInline"> Remember me </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success btn-block" id="submit">Submit</button>
                    <div class="links">
                    <a href="#" class="link_style">Forget Password?</a>
                    </div>
                </form>
                <!-- form ends -->
            </div>
            <div class="col-md-4  col-12"></div>
        </div>
    </div>
<script>
  $(document).ready(function(){
      $('#submit').click(function(e){
  var valid = this.form.checkValidity();
  if(valid)
  {
      var novelid = $('#novelid').val();
      var password = $('#password').val();
  }
  e.preventDefault();
  $.ajax({
    type:"POST",
    url:"jslogin.php",
    data:{novelid:novelid, password:password},
    success:function(data){
        alert(data);
        if($.trim(data) === "1")
        {
            setTimeout('window.location.href = "index.php"',2000);
        }
    },
    error:function(data){
        alert('There were errors in the operation.');
    }

  });


  });
   });
</script>    
</body>
</html>