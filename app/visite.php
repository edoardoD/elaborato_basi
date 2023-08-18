<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
   <?php
        $conn = mysqli_connect("localhost","root","","my_dodoesercizzi");
        if(!$conn){
            die("connessione fallita".mysqli_connect_error());
        }
        //crea una tabella che visualizzi i dati di EVENTI
        $sql = "SELECT * FROM EVENTI";
        $result = mysqli_query($conn,$sql);
        if(!$result){
            die("query fallita".mysqli_error($conn));
        }
        echo "<table border=1>";
        echo "<tr><th>id</th><th>prezzo</th><th>data</th><th>visita</th></tr>";
        while($row = mysqli_fetch_assoc($result)){
            echo "<tr>";
            echo "<td>".$row["id"]."</td>";
            echo "<td>".$row["prezzo"]."</td>";
            echo "<td>".$row["data"]."</td>";
            echo "<td>".$row["visita"]."</td>";
            echo "</tr>";
        }
        echo "</table>";

        mysqli_close($conn);
   ?> 
    fuffa guru aaaa
    <!-- crea un form per login -->
    <form action="login.php" method="post">
        <input type="text" name="username" placeholder="username">
        <input type="password" name="password" placeholder="password">
        <input type="submit" value="login">
    
</body>
</html>
