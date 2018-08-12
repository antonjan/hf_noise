<?php
//if($_GET['action'] == 'export') {
//header to give the order to the browser
header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename=export.csv');
$servername = "localhost";
$username = "root";
$password = "mysql123";
$dbname = "hf_noise";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * from hf_noise_data";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id_hf_noise_data"]. " - Date: " . $row["Date"]. " " . $row["1Mhz_data"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
//}
?>

