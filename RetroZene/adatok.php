<?php include("header.php") ?>
<?php 

$query = "SELECT * FROM lemez ORDER BY (ar) DESC";

$result = mysqli_query($conn,$query);

?>

<h2>Az adatbazisban szereplo osszes zeneszam</h2>
<table class="table"> 
<tr>
    <th>
        Id
    </th>
    <th>
        Szerzo
    </th>
    <th>
        Cim
    </th>
    <th>
        Ar
    </th>
    <th>
        Megjelenes
    </th>
</tr>

<?php 
while ($row = mysqli_fetch_array($result)) {
    echo"<tr>";
    echo"<td>$row[id]</td>";
    echo"<td>$row[szerzo]</td>";
    echo"<td>$row[cim]</td>";
    echo"<td>$row[ar]</td>";
    echo"<td>$row[megjelenes]</td>";
    echo"</tr>";

}


?>


</table>











<?php include("footer.php") ?>