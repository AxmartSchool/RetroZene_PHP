<?php include("header.php") ;

$selectQuery = "SELECT szerzo FROM lemez GROUP BY szerzo";

$selectResult = mysqli_query($conn,$selectQuery);





$keresettSzerzo = "";

if(isset($_GET["szerzo"])){
    $keresettSzerzo = $_GET["szerzo"];
}

?>



<h2>Kereses szerzo szerint</h2>
<form method="GET" action="./kereses.php" class="form-control form">
<select name="szerzo" id="szerzo">
<?php 
while ($row = mysqli_fetch_array($selectResult)) {
    echo"<option value='$row[szerzo]'>$row[szerzo]</option>";
}


?>
</select>
<input type="submit" value="Keres">
</form>

<?php

    if ($keresettSzerzo != "") {

        $keresQuery = "Select * from lemez where szerzo= '$keresettSzerzo'";
        $keresResult = mysqli_query($conn,$keresQuery);



        echo" <table class='table'> ";
        echo"<tr><th>Id</th><th>Szerzo</th><th>Cim</th><th>Ar</th><th>Megjelenes</th></tr>";

        while ($row = mysqli_fetch_array($keresResult)) {
        echo"<tr>";
        echo"<td>$row[id]</td>";
        echo"<td>$row[szerzo]</td>";
        echo"<td>$row[cim]</td>";
        echo"<td>$row[ar]</td>";
        echo"<td>$row[megjelenes]</td>";
        echo"</tr>";
        }
    }


?>



<?php include("footer.php") ?>