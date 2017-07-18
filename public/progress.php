<?php
session_start();
?>

<?php
echo "hello";
//echo $_SESSION["FOLDERNAME"];
//echo gettype($_SESSION["FOLDERNAME"]);

while(!isset($_SESSION["FOLDERNAME"]))
{

	echo ":P";
	sleep(1);
}
//echo $_SESSION["FOLDERNAME"];
/*$foldername = _SESSION["FOLDERNAME"];
$filename = $foldername."/progress.txt";
$progress = fopen($filename,"r") or die("Unable to open file!");
echo fgets($progress);
fclose($progress);*/
session_destroy();
?>