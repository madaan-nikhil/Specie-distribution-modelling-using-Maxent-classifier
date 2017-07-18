<?php
session_start();
?>

<?php
while(!isset($_SESSION["FOLDERNAME"]))
{
	echo "ha";
	sleep(1);
}
$foldername = $_SESSION["FOLDERNAME"];
echo $foldername;
?>