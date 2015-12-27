<?php
$mysqli = new mysqli("localhost", "nicholc3_nick", "N!ckB@k31", "nicholc3_guest_list");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$response = $_GET['response'];
$firstName = strtolower($_GET['firstName']);
$lastName = strtolower($_GET['lastName']);

$mysqli->query("UPDATE list SET count = $response WHERE (firstName = \"$firstName\" OR secondName = \"$firstName\") AND lastName = \"$lastName\"");

?>