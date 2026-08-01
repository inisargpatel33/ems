<?php 
// DB credentials.
define('DB_HOST','localhost'); // Change to your live host
define('DB_USER','YOUR_DATABASE_USERNAME');
define('DB_PASS','YOUR_DATABASE_PASSWORD');
define('DB_NAME','YOUR_DATABASE_NAME');

// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>