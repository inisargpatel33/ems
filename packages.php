<?php
session_start();
error_reporting(0);
include('includes/config.php');
//Process for Sign
if(isset($_POST['signin']))
{
//Getting Post Values
$uname=$_POST['username'];
$password=md5($_POST['password']);
// Quer for signing matching username and password with db details
$sql ="SELECT Userid,IsActive FROM tblusers WHERE UserName=:uname and UserPassword=:password";
//preparing the query
$query= $dbh -> prepare($sql);
//Binding the values
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
//Execute the query
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
 foreach ($results as $result) {
    $status=$result->IsActive;
    $_SESSION['usrid']=$result->Userid;
  } 
if($status==0)
{
echo "<script>alert('Your account is Inactive. Please contact admin');</script>";
} else{
echo "<script type='text/javascript'> document.location = 'profile.php'; </script>";
} }
else{
  echo "<script>alert('Invalid Details');</script>";

}

}

?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Event Management System | user signin </title>
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- icofont css -->
        <link rel="stylesheet" href="css/icofont.css">
		<!-- Nivo css -->
        <link rel="stylesheet" href="css/nivo-slider.css">
		<!-- animaton text css -->
        <link rel="stylesheet" href="css/animate-text.css">
		<!-- Metrial iconic fonts css -->
        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- color css -->
		<link href="css/color/skin-default.css" rel="stylesheet">
        
		<!-- modernizr css -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
   
         
           <!--slider header area are start-->
           <div id="home" class="header-slider-area">
                <!--header start-->
                   <?php include_once('includes/header.php');?>
                <!-- header End-->
            </div>

            <div class="breadcumb-area bg-overlay">
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Packages</li>
                    </ol>
                </div>
            </div> 

            <div class="upcomming-events-area off-white ptb100">
                  <div class="container">
                      <div class="row">
                          <div class="col-xs-12">
                           <h1 class="section-title">Event Packages</h1>
                        </div>
                          <div class="total-upcomming-event col-md-12 col-sm-12 col-xs-12">
</body>
</html>