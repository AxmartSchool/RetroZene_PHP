<?php include("header.php") ;

if(isset($_GET["hiba"])){
    echo "<strong> $_GET[hiba] </strong>";
}

?>

<h2>Uj adat bevitele</h2>
<form method="GET" action="./rogzit.php" class="form-control form">
<label for="szerzo">Szerzo</label>
<input name="szerzo" id="szerzo" type="text" require>
<label for="cim">Cim</label>
<input name="cim" id="cim" type="text" require>
<label for="ar">Ar</label>
<input name="ar" id="ar" type="number" require>
<label for="megjelenes">Megjelenes</label>
<select name="megjelenes" id="megjelenes" require>
    <option value="CD">CD</option>
    <option value="MC">MC</option>
</select>
<input type="submit" value="Rogzit">
</form>












<?php include("footer.php") ?>