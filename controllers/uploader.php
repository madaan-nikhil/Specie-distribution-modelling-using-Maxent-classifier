
<?php

if ($_POST['action'] == 'Check')
{
    $target_dir = "../region/";
    $foldername = "files".time();
    $target_dir = $target_dir.$foldername."/";

    if (!mkdir($target_dir, 0777, true)) {
        die('Failed to create folders...');
    }

    $xmax = $_POST['xmax'];
    $xmin = $_POST['xmin'];
    $ymax = $_POST['ymax'];
    $ymin = $_POST['ymin'];

    //echo $xmax;
    //echo "\n"."\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" crop.R $foldername $xmax $xmin $ymax $ymin 2>&1"."\n";
    $output=shell_exec("\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" crop.R $foldername $xmax $xmin $ymax $ymin 2>&1");
    //$output=shell_exec("\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" speciedistribution3.R $foldername $xmax $xmin $ymax $ymin 2>&1");
    //echo $output;

    $path = $target_dir."/crop.png";
    echo "\n<br>\n<a href=\"$path\">crop.png</a>";
    include("../public/loading.php");
}

else if ($_POST['action'] == 'Finalize')
{
    $target_dir = "../uploads/";
    $foldername = "files".time();

    $target_dir = $target_dir.$foldername."/";

    //$fn="C:/wamp/www/Maxent/uploads/files1497956112";
    //echo $foldername;
    $xmax = $_POST['xmax'];
    $xmin = $_POST['xmin'];
    $ymax = $_POST['ymax'];
    $ymin = $_POST['ymin'];

    //print_r($_POST['features']);

    $x1 = in_array("Annual Mean Temperature", $_POST['features']) ? 1 : 0;
    $x2 = in_array("Mean Diurnal Range", $_POST['features']) ? 1 : 0;
    $x3 = in_array("Isothermality", $_POST['features']) ? 1 : 0;
    $x4 = in_array("Temperature Seasonality", $_POST['features']) ? 1 : 0;
    $x5 = in_array("Max Temperature of Warmest Month", $_POST['features']) ? 1 : 0;
    $x6 = in_array("Min Temperature of Coldest Month", $_POST['features']) ? 1 : 0;
    $x7 = in_array("Temperature Annual Range", $_POST['features']) ? 1 : 0;
    $x8 = in_array("Mean Temperature of Wettest Quarter", $_POST['features']) ? 1 : 0;
    $x9 = in_array("Mean Temperature of Driest Quarter", $_POST['features']) ? 1 : 0;
    $x10 = in_array("Mean Temperature of Warmest Quarter", $_POST['features']) ? 1 : 0;
    $x11 = in_array("Mean Temperature of Coldest Quarter", $_POST['features']) ? 1 : 0;
    $x12 = in_array("Annual Precipitation", $_POST['features']) ? 1 : 0;
    $x13 = in_array("Precipitation of Wettest Month", $_POST['features']) ? 1 : 0;
    $x14 = in_array("Precipitation of Driest Month", $_POST['features']) ? 1 : 0;
    $x15 = in_array("Precipitation Seasonality", $_POST['features']) ? 1 : 0;
    $x16 = in_array("Precipitation of Wettest Quarter", $_POST['features']) ? 1 : 0;
    $x17 = in_array("Precipitation of Driest Quarter", $_POST['features']) ? 1 : 0;
    $x18 = in_array("Precipitation of Warmest Quarter", $_POST['features']) ? 1 : 0;
    $x19 = in_array("Precipitation of Coldest Quarter", $_POST['features']) ? 1 : 0;

    //echo $x1;
    //echo $x2;
    //echo $x3;

    if (!mkdir($target_dir, 0777, true)) {
        die('Failed to create folders...');
    }

    $target_file = $target_dir . basename($_FILES["file1"]["name"]);
    $uploadOk = 1;

    //echo "<br>";
    //echo getcwd();
    //echo "<br>";
    //echo $target_file;

    //$_SESSION["FOLDERNAME"] = $foldername;

    $fileType = pathinfo($target_file,PATHINFO_EXTENSION);

    // Check if file already exists
    if (file_exists($target_file)) {
        echo "<p>Sorry, file already exists.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($fileType != "csv" ) {
        echo "<p>Sorry, only csv files are allowed.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "<p>Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["file1"]["tmp_name"], $target_file)) {
            echo "<p>The file ". basename( $_FILES["file1"]["name"]). " has been uploaded.";
        } else {
            echo "<p>Sorry, there was an error uploading your file.";
        }
    }

    //echo "\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" speciedistribution3.R $foldername $xmax $xmin $ymax $ymin 2>&1";
    //executing R script from shell
    //$output=shell_exec("C:\Program Files\R\R-3.3.2\bin\x64\Rscript.exe speciedistribution3.R $foldername");
    $output=shell_exec("\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" speciedistribution3.R $foldername $xmax $xmin $ymax $ymin $x1 $x2 $x3 $x4 $x5 $x6 $x7 $x8 $x9 $x10 $x11 $x12 $x13 $x14 $x15 $x16 $x17 $x18 $x19 2>&1");
    //$output=shell_exec("\"C:\Program Files\R\R-3.3.2\bin\Rscript.exe\" speciedistribution3.R $foldername");
    //$output=shell_exec("Rgui C:\wamp\www\test\speciedistribution3.R $fn");

    //echo $output;

    echo "File processed successfully!";

    // for displaying the link to different output files of the maxent model

    $files = scandir($target_dir);

    sort($files);
    //print_r($files);

    foreach($files as $file)
    {
        $path = $target_dir."/".$file;
        //$fileType = pathinfo($path,PATHINFO_EXTENSION);
        //if( $fileType == "png" )
        //    echo '<img src="'.$path.'" alt="" height="250" width="250">';
        if(!($file == "." || $file == ".."))
            echo "<a target=\"_blank\" href=\"$path\">$file</a>";
        echo '<br>';
    }
}
?>
