<?php 
include("config.php");
include("functions.php");
$rows = getSponsors($con);
//echo "<pre>";print_r($rows);

?>
<style type="text/css">
.container{
	margin:0 auto;
	width: 20%;
	border: 1px solid #000;
	padding: 5%;
}
.row{
	width: 100%;
	float: left;
	text-align: center;
	height: 20px;
	margin: 10px;
}

</style>


<?php
if(isset($_REQUEST['submit'])){
	$agent_code = rand(1111111111,9999999999);
	$sponsor_code = $_REQUEST['sponsor_code'];
	$sponsor_data = getSponsorData($con,$sponsor_code);
	$max_nos_pair = getMaxPair($con,$sponsor_code); //die;
	$empty_flag = checkMaxPairIsEmpty($con,$sponsor_code,$max_nos_pair);
	$depth_level = $sponsor_data['depth_level'] + 1;



	if($empty_flag == 'No'){
		$new_max_pair = $max_nos_pair + 1;
		$request_array = array('agent_code' => $agent_code,'sponsor_code'=>$sponsor_code,'pair_id'=> $new_max_pair, 'leg'=> 'Left','depth_level'=>$depth_level);

	} else{
		
		$request_array = array('agent_code' => $agent_code,'sponsor_code'=>$sponsor_code,'pair_id'=> $max_nos_pair, 'leg'=> 'Right','depth_level'=>$depth_level);
	}



	echo "<h1>Sponsor Data</h1>";
	echo "<pre>";print_r($request_array);echo "</pre>";
	echo "<h1>Agent Data</h1>";
	$agent_data = addAgent($con,$request_array);
	echo "<pre>";print_r($agent_data);echo "</pre>";
}


?>
<div class="container">
	<a href="/tree/view.php">Tree View</a>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="POST">
	<div class="row">
	<label>Sponsor</label>
	<select name="sponsor_code" id="sponsor_code">
		<option ="">--Select Sponsor--</option>
		<?php foreach ($rows as $row) {?>
			<option ="<?php echo $row?>"><?php echo $row?></option>
		<?php }?>
	</select>
</div>
<div class="row">
	<input type="submit" name="submit" value="Submit"/>
	</div>
</form>
</div>