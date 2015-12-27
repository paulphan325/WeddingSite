<?php
$mysqli = new mysqli("localhost", "username", "password", "database");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}


$res = $mysqli->query('SELECT SUM( count ) FROM  list');
$res->data_seek(0);
$attendance = $res->fetch_array();

$response = $_GET['response'];
$count = $_GET['count'];
$name = $_GET['name'];

$message = '<html><body>';
$message .= '<h1>Hello!</h1>';
$message .= '<p><b>Name:</b> ' . $name . '</p>';
$message .= '<p><b>Response:</b> ' . $response . '</p>';
$message .= '<p><b>Count:</b> ' . $count . '</p>';
$message .= '<p><b>Total:</b> ' . $attendance[0] . '</p>';
$message .= '<br>';
$message .= '<p>Bye!</p>';
$message .= '</body></html>';



$to = 'email address';
$subject = 'New RSVP!';
$headers = "From: address\r\n";
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

mail($to, $subject, $message, $headers); //This method sends the mail.
?>