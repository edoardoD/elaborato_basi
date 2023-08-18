<?php
    if(isset($_GET['page'])){
        switch($_GET['page']){
            case 'home':
                require 'html/home.html';
                break;
            case 'about':
                require 'html/about.html';
                break;
            default:
                http_response_code(404);
                echo "page not found";
                break;
        }
        

    }
    else{
        require "html/home.html";
    }

?>