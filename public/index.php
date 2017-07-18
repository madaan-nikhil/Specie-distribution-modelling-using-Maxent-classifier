<!DOCTYPE html>

<html>
<head>

<!-- Include Google font here -->
<link href='http://fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'>

<!-- Include CSS file here -->
<link rel="stylesheet" type="text/css" href="css/processing.css">

<!-- Include jQuery file here -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<style>

table, th, td{
	border: 1px solid black;
	padding: 5px;
}

table{
	border-spacing: 15px;
}

iframe{
	width:50%;
	float:left;
	box-sizing: border-box;
}

#framediv{
}

</style>	
</head>

<body>

<h1 style="color:red; text-align:center;">MAXENT MODEL</h1>
<h3 style="color:red; text-align:center;">SPECIE DISTRIBUTION MODELLING</h3>
<b>Select the region to be analyzed:</b>
<a href="map.html">REGION</a><br><br>
<hr>

<div id="framediv">
<iframe id="formframe"src="form.php" name="formframe" height="500">
</iframe>

<iframe id="opframe" src="loading.php" name="output" height="500">
</iframe>

</div>
</body>

<script type="text/javascript">
	
	function fillValues()
	{	
		var GET = <?php echo json_encode($_GET); ?> ;
		var doc;
		doc = window.frames[0].document;
		
		doc.getElementById("xmin").value = GET['xmin'];
		doc.getElementById('xmax').value = GET['xmax'];
		doc.getElementById('ymin').value = GET['ymin'];
		doc.getElementById('ymax').value = GET['ymax'];
	}
</script>

</html>