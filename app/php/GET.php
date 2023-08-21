<?php
    
    require_once "jsonHeader.php";
    require_once "globals.php";
     $requests = [
        'curses' => curses(),  
    ];

    if(isset($_GET['request'])){
        if(array_key_exists($_GET['request'], $requests)){
            $requests[$_GET['request']]();
        }
        else{
            die(json_encode(["result"=>false, "error"=>"richiesta non valida"]));
        }
    }
    else{
        die(json_encode(["result"=>false, "error"=>"nessun parametro impostato"]));
    }

    function curses(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $corsi=[];
            $query = "SELECT Giorno.Nome AS Giorno, Planning.Ora AS Ora, Corso.Nome AS Corso
                      FROM Giorno JOIN (Planning JOIN Corso ON Planning.ID_Cor= Corso.ID) ON Giorno.ID= Planning.Day
                      ORDER BY (Giorno.ID) ";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $corsi[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "corsi" => $corsi]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }
?>



