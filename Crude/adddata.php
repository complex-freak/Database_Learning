<?php
require_once "conn.php"; // Make sure this file contains valid database connection details

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $grade = $_POST['grade']; 
    $marks = $_POST['marks'];

    if (!empty($name) && !empty($grade) && !empty($marks)) {
        // Use prepared statements to prevent SQL injection
        $stmt = $conn->prepare("INSERT INTO results (`name`, `grade`, `marks`) VALUES (?, ?, ?)");

        // Check if the prepare() call was successful
        if ($stmt === false) {
            echo "Prepare statement error: " . $conn->error; // Provide error message if prepare() fails
        } else {
            
            $stmt->bind_param("ssi", $name, $grade, $marks);

            // Execute the prepared statement
            if ($stmt->execute()) {
                header("location: index.php");
                exit; // Ensure no further code execution after redirection
            } else {
                echo "Database error: " . $stmt->error; // Provide error message if execution fails
            }
        }
    } else {
        echo "Name, Grade, and Marks cannot be empty!";
    }
}
?>
