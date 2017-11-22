<?php 
include("config.php");
include("functions.php");
$rows = getSponsors($con);
//echo "<pre>";print_r($rows);

?>
<style type="text/css">
.container{
	margin:0 auto;
	width: 80%;
	border: 1px solid #000;
	padding: 5%;
	overflow-x: scroll;
}
.row{
	width: 100%;
	float: left;
	text-align: center;
	height: 20px;
	margin: 10px;
}
table td{
	text-align: center;;
}

</style>


<?php
$sponsor_code = '1272129311';

//$trees = getTrees($con,$sponsor_code);
$trees = renderTree($con,$sponsor_code);
?>
<div class="container">
	<a href="/tree/view.php">Tree View</a>
	<?php echo $trees;?>
</div>