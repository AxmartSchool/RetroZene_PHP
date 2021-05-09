<?php  
include("conn.php");

$szerzo = "";
$cim = "";
$ar = 0;
$megjelenes = "";


if(isset($_GET["szerzo"])){
    $szerzo = $_GET["szerzo"];
}
if(isset($_GET["cim"])){
    $cim = $_GET["cim"];
}
if(isset($_GET["ar"])){
    $ar = $_GET["ar"];
}
if(isset($_GET["megjelenes"])){
    $megjelenes = $_GET["megjelenes"];
}

if ($szerzo == "" || $cim=="" || $ar == 0 || $megjelenes=="") {

    header('Location: ./ujadat.php?hiba="Hibas vagy hianyzo adat."');

}else{

    $query = "INSERT INTO lemez(szerzo,cim,ar,megjelenes) values ('$szerzo','$cim',$ar, '$megjelenes')";
    $result = mysqli_query($conn,$query);


    //echo $query;
    header('Location: ./adatok.php');
}









?>