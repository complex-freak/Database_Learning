<?php
require_once "conn.php";

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $grade = $_POST['grade']; 
    $marks = $_POST['marks'];

    if (!empty($name) && !empty($grade) && !empty($marks)) {
        // Use prepared statements to prevent SQL injection
        $stmt = $conn->prepare("INSERT INTO results (`name`, `grade`, `marks`) VALUES (?, ?, ?)");

        // Check if the prepare() call was successful
        if ($stmt === false) {
            echo "Prepare statement error: " . $conn->error; 
        } else {
            
            $stmt->bind_param("ssi", $name, $grade, $marks);

            if ($stmt->execute()) {
                header("location: index.php");
                exit; 
            } else {
                echo "Database error: " . $stmt->error;
            }
        }
    } else {
        echo "Name, Grade, and Marks cannot be empty!";
    }
}
?>
