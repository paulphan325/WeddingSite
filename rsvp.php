<?php
$mysqli = new mysqli("localhost", "username", "password", "database");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$response = $_GET['response'];
$firstName = strtolower($_GET['firstName']);
$lastName = strtolower($_GET['lastName']);
//*6r<faY=jo#)

if ($response == "n") {
	$mysqli->query("UPDATE list SET count = 0 WHERE (firstName = \"$firstName\" OR secondName = \"$firstName\") AND lastName = \"$lastName\"");
}

$mysqli->query("UPDATE list SET rsvp = \"$response\" WHERE (firstName = \"$firstName\" OR secondName = \"$firstName\") AND lastName = \"$lastName\"");

?>