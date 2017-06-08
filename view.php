<?php

/* VIEW
 * shows one character
 */

 require 'config.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="iso-8859-1">
  <title>View Character | Marvel Characters </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/styles.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <header>
    <img src="img/Topbanner.jpg" alt="Marvel page banner" width="100%">
  </header>
  <div class="page-main">
  <?php
  // Check that ID varibale is set
  if(!isset($_GET['id'])){
    die("No ID was set.");
  }
  // MySQLi query
  $query = "SELECT * ";
  $query .= "FROM characters ";
  $query .= "WHERE id = $_GET[id]";
  $result = mysqli_query($db, $query);

  // Test if query was sucessful
  if (!$result){
    die("Database query failed");
  }

  // Use the returned results
  while ($row = mysqli_fetch_assoc($result)){
    $image = $row['image'];
    echo '<article class="character-entry single">';
      echo "<img src='$image' alt='character picture'>";
      echo "<h2>{$row['ID']}: {$row['name']}</h2>";
      echo "<span><h3><b>Powers: </b></h3><p>{$row['powers']}</p></span>";
      echo "<span><h3><b>Description: </b></h3><p>{$row['description']}</p>
                  </span>";
      echo "<span><h3><b>Affiliations: </b></h3><p>{$row['affiliations']}</p>
                  </span>";
      echo '<a href="/assignment_1/">&lsaquo; Back Home</a>';
    echo '</article>';
  }

  // Free data stored in $result
  mysqli_free_result($result);

  //disconnect from database
  mysqli_close($db);
   ?>
  </div>
</body>
</html>
