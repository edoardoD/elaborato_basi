<?php
    require_once "jsonHeader.php";
    require_once "globals.php";

    $requests = [
        'login' => login()  
    ];
    if(isset($_POST['request'])){
        if(array_key_exists($_POST['request'], $requests)){
            $requests[$_POST['request']]();
        }
        else{
            die(json_encode(["result"=>false, "error"=>"richiesta non valida"]));
        }
    }
    else{
        die(json_encode(["result"=>false, "error"=>"nessun parametro impostato"]));
    }

    function login() {
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $username = $_POST['username'];
            $password = $_POST['password'];
            $query = "SELECT * FROM Utente WHERE Username = '$username' AND Password = '$password'";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                if($row){
                    die(json_encode(["result" => true, "user" => $row]));
                }
                else{
                    die(json_encode(["result"=>false, "error"=>"username o password errati"]));
                }
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }
?>