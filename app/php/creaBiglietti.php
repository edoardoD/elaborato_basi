<?php
// Connessione al database MySQL
$servername = "localhost";
$username = "dodoesercizzi";
$password = "password";
$dbname = "my_dodoesercizzi";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Query per selezionare gli id dei gruppi
$sql = "SELECT id FROM GRUPPI";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Ciclo attraverso i gruppi
  while($row = $result->fetch_assoc()) {
    // Assegno il valore di id del gruppo alla variabile currentGroup
    $currentGroup = $row["id"];

    // Generazione di 5 biglietti per il gruppo corrente
    for ($i = 0; $i < 5; $i++) {
      // Query per inserire una riga nella tabella BIGLIETTI
      $sql = "INSERT INTO BIGLIETTI (gruppo) VALUES ($currentGroup)";
      if ($conn->query($sql) === TRUE) {
        echo "New ticket created successfully for group $currentGroup<br>";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
    }
  }
} else {
  echo "No groups found";
}

// Chiusura della connessione
$conn->close();
?>
