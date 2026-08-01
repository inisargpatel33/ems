<?php

$id=$_GET['id'];
// Database configuration
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'ems';

// Create database connection
$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare and execute a SELECT query to fetch the amount value from the database
$stmt = $conn->prepare("SELECT EventPrice FROM tblevents WHERE id = ?");
// $id = 1; // Replace with your own ID value
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $amount = $row['EventPrice'];

    // Send the amount value back to the client as a response
    echo $amount;
} else {
    // If no matching rows are found, send an error response
    http_response_code(404);
    echo "Error: No matching rows found in the database.";
}

// Close the prepared statement and the database connection
$stmt->close();
$conn->close();
?>
