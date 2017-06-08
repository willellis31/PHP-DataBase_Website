<?php
/* CONFIG
 * Contains all php configuartion settings for the app including database
 * connection and configuartion variables
 */

require 'functions.php';

 // Error handling
 ini_set('display errors', 1);
 error_reporting(E_ALL);

// Create database connection variables
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "webdev123";
$dbname = "a1_marvel";

// create database connection
$db = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// validate connection
if(mysqli_connect_errno()){
  die("Database connection failed: " . mysqli_connect_error() .
        " (" . mysqli_connect_errno() . ")."
      );
}

 ?>
