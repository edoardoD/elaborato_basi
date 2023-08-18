<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");
    header('Content-Type: application/json');
    
    require_once "globals.php";

    if(isset($_GET['request'])){
        switch($_GET['request']){
            case 'curses':
                $conn = mysqli_connect($host,$user,$password,$dbName);

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
                        /*
                        ATTENZIONE; USANDO IL DO->WHILE INSERISCO UN ELEMENTO NULLO 
                        DENTRO ALL'array
                        $row= mysqli_fetch_assoc($result);
                        do{
                            $corsi[]= $row;
                            $row= mysqli_fetch_assoc($result);
                        }while($row);
                        */
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
                break;
                default:
                    die(json_encode(["result"=>false, "error"=>"nessuna richiesta valida"]));
                break;
        }
    }
    else{
        die(json_encode(["result"=>false, "error"=>"nessun parametro impostato"]));
    }
?>



