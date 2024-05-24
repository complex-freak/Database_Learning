      <?php
require_once "conn.php";
if(isset($_POST["name"]) && isset($_POST["grade"]) && isset($_POST["marks"])){
    $name = $_POST['name'];
    $grade = $_POST['grade'];
    $marks = $_POST['marks'];
    $sql = "UPDATE results SET `name`= '$name', `grade`= '$grade', `marks`= $marks  WHERE id= ".$_GET["id"];
    if (mysqli_query($conn, $sql)) {
        header("location: index.php");
    } else {
        echo "Something went wrong. Please try again later.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP - MYSQL - CRUD</title>
    <!-- CSS only -->
    <link href="bootstrap-5.1.3-dist\css\bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <section>
        <h1 style="text-align: center;margin: 50px 0;">Update Data</h1>
        <div class="container">
            <?php 
                require_once "conn.php";
                $sql_query = "SELECT * FROM results WHERE id = ".$_GET["id"];
                if ($result = $conn ->query($sql_query)) {
                    while ($row = $result -> fetch_assoc()) { 
                        $Id = $row['id'];
                        $Name = $row['name'];
                        $Grade = $row['grade']; // Corrected the column name here
                        $Marks = $row['marks'];
            ?>
                            <form action="updatedata.php?id=<?php echo $Id; ?>" method="post">
                                <div class="row">
                                        <div class="form-group col-lg-4">
                                            <label for="">Student Name</label>
                                            <input type="text" name="name" id="name" class="form-control" value="<?php echo $Name ?>" required>
                                        </div>
                                        <div class="form-group  col-lg-3">
                                            <label for="">Grade</label>
                                            <select name="grade" id="grade" class="form-control" required >
                                                <option value="">Select a Grade</option>
                                                <option value="grade6" <?php if($Grade == "grade6"){ echo "Selected"; } ?> >Grade 6</option>
                                                <option value="grade7" <?php if($Grade == "grade7"){ echo "Selected"; } ?> >Grade 7</option>
                                                <option value="grade8" <?php if($Grade == "grade8"){ echo "Selected"; } ?> >Grade 8</option>
                                                <option value="grade9" <?php if($Grade == "grade9"){ echo "Selected"; } ?> >Grade 9</option>
                                                <option value="grade10" <?php if($Grade == "grade10"){ echo "Selected"; } ?> >Grade 10</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-3">
                                            <label for="">Marks</label>
                                            <input type="text" name="marks" id="marks" class="form-control" value="<?php echo $Marks ?>" required>
                                        </div>
                                        <div class="form-group col-lg-2" style="display: grid;align-items:  flex-end;">
                                            <input type="submit" name="submit" id="submit" class="btn btn-primary" value="Update">
                                        </div>
                                </div>
                            </form>
            <?php 
                    }
                }
            ?>
        </div>
    </section>
     <!-- JavaScript Bundle with Popper -->
     <script src="dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
