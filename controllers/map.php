<?php

$target_dir = "../region/";
$foldername = "files".time();
$target_dir = $target_dir.$foldername."/";

$xmax = $_POST['xmax'];
$xmin = $_POST['xmin'];
$ymax = $_POST['ymax'];
$ymin = $_POST['ymin'];

echo $xmax;

$output=shell_exec("\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" crop.R $foldername $xmax $xmin $ymax $ymin 2>&1");
echo $output

$path = $target_dir."/crop.png";
echo "<a href=\"$path\">crop.png</a>";

?>