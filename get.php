<?php
$mysqli = new mysqli("localhost", "username", "password", "database");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}


$firstName = strtolower($_GET['firstName']);
$lastName = strtolower($_GET['lastName']);

$res = $mysqli->query("SELECT * FROM list WHERE (firstName = \"$firstName\" OR secondName = \"$firstName\") AND lastName = \"$lastName\"");

$res->data_seek(0);
$row = $res->fetch_assoc();

if (count($row) > 0) {
    echo json_encode($row);
}

?>