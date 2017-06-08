<?php

/* New
 * adds a new character to the databse using a form
 */

 require 'config.php';
// check form has been submitted
if (isset($_POST['submit'])) {
  // check all data fileds where filled OutOfBoundsException
  if( $_POST['name'] == '' ||
      $_POST['powers'] == '' ||
      $_POST['affiliations'] == '' ||
      $_POST['description'] == ''){
        echo "Error, ensure no fields are left blank.";
    }
    else{
      //Run SQL query
      $query = "INSERT into characters(image, name, powers, description,
                                                      affiliations) ";
      $query .= "VALUES (";
      $query .= "'{$_POST['image']}', '{$_POST['name']}', '{$_POST['powers']}',
                          '{$_POST['description']}', '{$_POST['affiliations']}'";
      $query .= " )";

      // Insert data into database
      $result = mysqli_query($db, $query);

      if($result){
      // Sucessful insertion
      echo "Sucess, your new character has been inserted.<br>";
      echo '<a href="/assignment_1/">&lsaquo; Back Home</a>';
      die();
      }
      else {
       // Failed insertion
       die("Failed to insert into the databse. " . mysqli_error($db)
            . ". Error number - " . mysqli_errno($db));
      }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="iso-8859-1">
  <title>Add New Character | Marvel Characters</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/styles.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
  <header>
    <img src="img/Topbanner.jpg" alt="Marvel page banner" width="100%">
    <h1>Characters of the Marvel Universe</h1>
  </header>
  <div class="page-main">
    <h2>Add new character<br></h2>
    <!-- Bootsrat form sourced from https://www.w3schools.com/bootstrap/bootstrap_forms.asp -->
    <form class="form-horizontal" action = <?php echo $_SERVER["PHP_SELF"]; ?> method="post">
      <div class="form-group">
        <label class="control-label col-sm-2" for="image">Image: </label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="image" name="image"
            placeholder="Enter image URL">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="name">Name: </label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="name" name="name"
            placeholder="Enter character name">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="powers">Powers: </label>
        <div class="col-sm-10">
          <input type="textarea" class="form-control" id="powers" name="powers"
            placeholder="Enter character powers">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="description">Description:
        </label>
        <div class="col-sm-10">
          <input type="textarea" class="form-control" id="description"
              name="description" placeholder="Enter brief description of character">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="affiliations">Affiliations:
        </label>
        <div class="col-sm-10">
          <input type="textarea" class="form-control" id="affiliations"
          name="affiliations" placeholder="Enter character affiliations">
        </div>
      </div>
      <input type="submit" name="submit" value="Submit" />
    </form><br>
    <a href="/assignment_1/" class="back">&lsaquo; Back Home</a>
  </div>
</body>
</html>
