<!DOCTYPE html>

<html>
<head>

<!-- Include Google font here -->
<link href='http://fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'>

<!-- Include CSS file here -->
<link rel="stylesheet" type="text/css" href="css/processing.css">

<!-- Include jQuery file here -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<style>

table, th, td{
	border: 1px solid black;
	padding: 5px;
}

table{
	border-spacing: 15px;
}

.center-container {
	display: -webkit-flexbox;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-flex-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
	justify-content: center;
}

.btn-file {
    position: relative;
    overflow: hidden;
}
.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
}

</style>	
</head>

<body>

<div class="center-container" style="margin:0 auto;">
	<form action="/Maxent/controllers/uploader.php" method="post" target="output" enctype="multipart/form-data" style="margin:0 auto;">
		<br>
		<b>Latitude and Longitude File:</b>CSV file<br><br>
		
		<input class="btn btn-warning" style:"display:hidden" type="file" accept=".csv" id="file1" name="file1"/>
		
		<br><br>
		
		<input type="text" class="form-control" style="width: 50%; margin: 0 auto;" placeholder="X Minimum" onkeydown="return ( event.ctrlKey || event.altKey
						|| (event.keyCode==173 && event.shiftkey==false) 
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false)
	                    || (event.keyCode==109 && event.shiftKey==false)
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )" name="xmin" id="xmin"/><br>

		<input type="text" class="form-control" style="width: 50%; margin: 0 auto;" placeholder="X Maximum" onkeydown="return ( event.ctrlKey || event.altKey
						|| (event.keyCode==109 && event.shiftKey==false) 
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )" name="xmax" id="xmax"/><br>

		<input type="text" class="form-control" style="width: 50%; margin: 0 auto;" placeholder="Y Minimum" onkeydown="return ( event.ctrlKey || event.altKey
						|| (event.keyCode==109 && event.shiftKey==false)
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )" name="ymin" id="ymin"/><br>

		<input type="text" class="form-control" style="width: 50%; margin: 0 auto;" placeholder="Y Maximum" onkeydown="return ( event.ctrlKey || event.altKey
						|| (event.keyCode==109 && event.shiftKey==false) 
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )" name="ymax" id="ymax"/><br>

		
		<!--selecting the features to be used for arriving at the probability distribution-->

		<b>Select the features to be used in the maxent model:</b><br><br>

		<input type="checkbox" name="features[]" value="Annual Mean Temperature">Annual Mean Temperature<br>
		<input type="checkbox" name="features[]" value="Mean Diurnal Range">Mean Diurnal Range<br>
		<input type="checkbox" name="features[]" value="Isothermality">Isothermality<br>
		<input type="checkbox" name="features[]" value="Temperature Seasonality">Temperature Seasonality<br>
		<input type="checkbox" name="features[]" value="Max Temperature of Warmest Month">Max Temperature of Warmest Month<br>
		<input type="checkbox" name="features[]" value="Min Temperature of Coldest Month">Min Temperature of Coldest Month<br>
		<input type="checkbox" name="features[]" value="Temperature Annual Range">Temperature Annual Range<br>
		<input type="checkbox" name="features[]" value="Mean Temperature of Wettest Quarter">Mean Temperature of Wettest Quarter<br>
		<input type="checkbox" name="features[]" value="Mean Temperature of Driest Quarter">Mean Temperature of Driest Quarter<br>
		<input type="checkbox" name="features[]" value="Mean Temperature of Warmest Quarter">Mean Temperature of Warmest Quarter<br>
		<input type="checkbox" name="features[]" value="Mean Temperature of Coldest Quarter">Mean Temperature of Coldest Quarter<br>
		<input type="checkbox" name="features[]" value="Annual Precipitation">Annual Precipitation<br>
		<input type="checkbox" name="features[]" value="Precipitation of Wettest Month">Precipitation of Wettest Month<br>
		<input type="checkbox" name="features[]" value="Precipitation of Driest Month">Precipitation of Driest Month<br>
		<input type="checkbox" name="features[]" value="Precipitation Seasonality">Precipitation Seasonality<br>
		<input type="checkbox" name="features[]" value="Precipitation of Wettest Quarter">Precipitation of Wettest Quarter<br>
		<input type="checkbox" name="features[]" value="Precipitation of Driest Quarter">Precipitation of Driest Quarter<br>
		<input type="checkbox" name="features[]" value="Precipitation of Warmest Quarter">Precipitation of Warmest Quarter<br>
		<input type="checkbox" name="features[]" value="Precipitation of Coldest Quarter">Precipitation of Coldest Quarter<br><br>

		<input type="submit" style="width:100%; margin: 0 auto;" class="btn btn-info" name="action" value="Check" onclick="loading()"/>
		<br><br>
		<input type="submit" style="width:100%; margin: 0 auto;" class="btn btn-success" name="action" value="Finalize" onclick="loading()"/>
		<br><br>
	</form>

	<!--creating a table showing the name of the features whose files have to be uploaded along with the format of the files-->

</div>

<script>

function loading()
{
	parent.frames[1].document.getElementById('progressbar').style.display = 'block';
}

</script>

<script>

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}

</script>

<br>

<table class="table table-hover" style="width:100%">
	<tbody>
		<tr>
			<th>FILENAME</th>
			<th>FORMAT</th>
		</tr>
		<tr>
			<td>Latitude and Longitude</td>
			<td>CSV File</td>
		</tr>
		<tr>
			<td>Annual Mean Temperature</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Mean Diurnal Range</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Isothermality</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Temperature Seasonality</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Max Temperature of Warmest Month</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Min Temperature of Coldest Month</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Temperature Annual Range</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Mean Temperature of Wettest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Mean Temperature of Driest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Mean Temperature of Warmest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Mean Temperature of Coldest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Annual Precipitation</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Wettest Month</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Driest Month</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation Seasonality</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Wettest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Driest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Warmest Quarter</td>
			<td>Tif File</td>
		</tr>
		<tr>
			<td>Precipitation of Coldest Quarter</td>
			<td>Tif File</td>
		</tr>	
	</tbody>																			
</table>	

<!--after taking files as input in the following form passing those files to the php script for further action-->

</body>

<script>
	$(document).ready(function(){
		parent.fillValues();
	});
</script>

</html>