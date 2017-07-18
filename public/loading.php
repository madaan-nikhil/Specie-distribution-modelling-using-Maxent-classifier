<!DOCTYPE html>

<html>
	<head>
		<style>
			html, body, .container {
				height: 95%;
			}
			.container {
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
		</style>
	</head>
	<body>
		<div class="container">
			<div id="progressbar" style="display: none">
				<img src="wheel.gif" alt="Loading..." width="100" height="100"> 
			</div>
		</div>
	</body>
</html>