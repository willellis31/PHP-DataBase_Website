<?php

/* INDEX
 * homepage that lists all Marvel Characters in the database
 */

require 'config.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="iso-8859-1">
  <title>Marvel Characters</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/styles.css" rel="stylesheet" type="text/css">
  <!-- Bootstrap links and data from
          https://www.w3schools.com/bootstrap/bootstrap_grid_examples.asp -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
  <header>
    <img src="img/Topbanner.jpg" alt="Marvel page banner" width="100%">
    <h1>Characters of the Marvel Universe</h1>
    <a href="new.php" class="btn btn-danger btn-lg" >Add Character</a>
  </header>
  <div class="page-main">
    <div class="container-fluid">

    <?php
    // MySQL database query
    $query = "SELECT * ";
    $query .= "FROM characters ";
    $result = mysqli_query($db, $query);
    // Check query was succesful
    if(!$result)
    {
      die("Database query failed.");
    }
    // $count will track the position of the database item and where it is to
    // be display on the screen to ensure 3 items are placed per row.
    $count = 0;
    // Display returned data
    while($row = mysqli_fetch_assoc($result)){
      $image = $row['image'];
      if($count = 0){
        echo '<div class="row">';
          echo '<div class="col-sm-4">';
            echo '<article class="character-entry">';
              echo "<h2>{$row['ID']}: {$row['name']}</h2>";
              echo "<img src='$image' alt='character picture'>";
                echo "<a href='view.php?id={$row['ID']}'
                        class='btn btn-info' role='button'>View Character</a>";
            echo '</article>';
          echo '</div>';
            $count = 1;
            continue;
      }
      if ($count = 1){
        echo '<div class="col-sm-4">';
          echo '<article class="character-entry">';
            echo "<h2>{$row['ID']}: {$row['name']}</h2>";
            echo "<img src='$image' alt='character picture'>";
            echo "<a href='view.php?id={$row['ID']}'>View Character</a>";
          echo '</article>';
        echo '</div>';
        $count = 2;
        continue;
      }
      if ($count = 2) {
        echo '<div class="col-sm-4">';
          echo '<article class="character-entry">';
            echo "<h2>{$row['ID']}: {$row['name']}</h2>";
            echo "<img src='$image' alt='character picture'>";
            echo "<a href='view.php?id={$row['ID']}'>View Character</a>";
          echo '</article>';
        echo '</div>';
      echo '</div>';
      $count = 0;
      continue;
    }
  }
    // Release returned data
    mysqli_free_result($result);

    // Disconnect from databse
    mysqli_close($db);

    ?>
    </div>
  </div>
</body>
</html>
