<?php
    
    require_once "jsonHeader.php";
    require_once "globals.php";

    function lingue(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $lingue=[];
            $query = "SELECT * FROM LINGUE";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $lingue[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "lingue" => $lingue]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }

    function visite(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $lingua = $_GET['lingua'];
            $lingua = mysqli_real_escape_string($conn, $lingua);
            $visite=[];
            $query = "SELECT VISITE.nome, EVENTI.data,GRUPPI.ora,VISITE.descrizione
            FROM VISITE, EVENTI,GRUPPI
            WHERE VISITE.nome = EVENTI.visita AND GRUPPI.id_evento= EVENTI.Id AND GRUPPI.lingua = '$lingua'";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $visite[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "visite" => $visite]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }

    function guide(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $lingua = $_GET['lingua'];
            $lingua = mysqli_real_escape_string($conn, $lingua);
            $guide=[];
            $query = "SELECT  GUIDE.email FROM GUIDE";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $guide[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "guide" => $guide]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }
    function datiGuida(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $email = $_GET['email'];
            $email = mysqli_real_escape_string($conn, $email);
            $competenze=[];
            $query = "SELECT C.lingua, C.livello FROM COMPETENZE as C WHERE guida = '$email'";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $competenze[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "info" => $competenze]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }
    function dashboard(){
        $conn = mysqli_connect($GLOBALS['host'],$GLOBALS['user'],$GLOBALS['password'],$GLOBALS['dbName']);
        if (!$conn){
            die(json_encode(["result"=>false,"error"=>"connessione non riuscita"]));
        }
        else{
            $lingua = $_GET['lingua'];
            $visite=[];
            $query = "select V.descrizione, E.visita,E.data,G.ora, G.id as gruppo,E.prezzo
            from VISITE as V, EVENTI as E, GRUPPI G
            WHERE V.nome = E.visita  AND G.id_evento = E.Id AND G.lingua = '$lingua'
            and CURRENT_DATE< E.data 
            ORDER BY `E`.`data` ASC LIMIT 10;";
            $result= mysqli_query($conn,$query);
            if($result){
                $row= mysqli_fetch_assoc($result);
                while($row){
                    $visite[]= $row;
                    $row= mysqli_fetch_assoc($result);
                }  
                die(json_encode(["result" => true, "visite" => $visite]));
            }
            else{
                die(json_encode(["result"=>false, "error"=>"errore nella query"]));
            }
        }
        mysqli_close($conn);
    }
    $requests = [
        "visite"=> visite,
        "lingue" => lingue,
        "guide" => guide,
        "datiGuida" => datiGuida,
        "dashboard" => dashboard
    ];

    if(isset($_GET['request'])){
        $key = $_GET['request'];
        if(array_key_exists($key, $requests)){
            $requests[$key]();
        }
        else{
            die(json_encode(["result"=>false, "error"=>"richiesta $key non gestibile dal server"]));
        }
    }
    else{
        die(json_encode(["result"=>false, "error"=>"nessun parametro impostato"]));
    }

    
?>



