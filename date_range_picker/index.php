<?php
	$conn = mysqli_connect("localhost", "root", "mysql123", "hf_noise");
	
	$post_at = "";
	$post_at_to_date = "";
	
	$queryCondition = "";
	if(!empty($_POST["search"]["post_at"])) {			
		$post_at = $_POST["search"]["post_at"];
		list($fid,$fim,$fiy) = explode("-",$post_at);
		
		$post_at_todate = date('Y-m-d');
		if(!empty($_POST["search"]["post_at_to_date"])) {
			$post_at_to_date = $_POST["search"]["post_at_to_date"];
			list($tid,$tim,$tiy) = explode("-",$_POST["search"]["post_at_to_date"]);
			$post_at_todate = "$tiy-$tim-$tid";
		}
		
		$queryCondition .= "WHERE date  BETWEEN '$fiy-$fim-$fid' AND '" . $post_at_todate . "'";
	}

	$sql = "SELECT * from hf_noise_data " . $queryCondition . " ORDER BY date desc";
	$result = mysqli_query($conn,$sql);
?>

<html>
	<head>
    <title>HF Noise</title>		
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

	<style>
	.table-content{border-top:#CCCCCC 4px solid; width:50%;}
	.table-content th {padding:5px 20px; background: #F0F0F0;vertical-align:top;} 
	.table-content td {padding:5px 20px; border-bottom: #F0F0F0 1px solid;vertical-align:top;} 
	</style>
	</head>
	
	<body>
<?php
include '../../menu.php';
?>
    	<div class="demo-content">
	<h2 class="title_with_link">HF Noise Monitoring Graph selection system.</h2>
<form name="frmSearch" method="post" action="index.php">
         <p class="search_input">
	<input type="checkbox" name="freq" value="1Mhz">1Mhz Band
        <input type="checkbox" name="freq" value="2Mhz">2Mhz Band 
        <input type="checkbox" name="freq" value="3Mhz">3Mhz Band
        <input type="checkbox" name="freq" value="4Mhz">4Mhz Band
        <input type="checkbox" name="freq" value="5Mhz">5Mhz Band
        <input type="checkbox" name="freq" value="6Mhz">6Mhz Band
        <input type="checkbox" name="freq" value="7Mhz">7Mhz Band
        <input type="checkbox" name="freq" value="8Mhz">8Mhz Band
        <input type="checkbox" name="freq" value="9Mhz">9Mhz Band
        <input type="checkbox" name="freq" value="10Mhz">10Mhz Band
        <input type="checkbox" name="freq" value="11Mhz">11Mhz Band
        <input type="checkbox" name="freq" value="12Mhz">12Mhz Band
        <input type="checkbox" name="freq" value="13Mhz">13Mhz Band
        <input type="checkbox" name="freq" value="14Mhz">14Mhz Band
        <input type="checkbox" name="freq" value="15Mhz">15Mhz Band
        <input type="checkbox" name="freq" value="16Mhz">16Mhz Band
        <input type="checkbox" name="freq" value="17Mhz">17Mhz Band
        <input type="checkbox" name="freq" value="18Mhz">18Mhz Band
        <input type="checkbox" name="freq" value="19Mhz">19Mhz Band
        <input type="checkbox" name="freq" value="20Mhz">20Mhz Band
        <input type="checkbox" name="freq" value="21Mhz">21Mhz Band
        <input type="checkbox" name="freq" value="22Mhz">22Mhz Band
        <input type="checkbox" name="freq" value="23Mhz">23Mhz Band
        <input type="checkbox" name="freq" value="24Mhz">24Mhz Band
        <input type="checkbox" name="freq" value="25Mhz">25Mhz Band
        <input type="checkbox" name="freq" value="26Mhz">26Mhz Band
        <input type="checkbox" name="freq" value="27Mhz">27Mhz Band
        <input type="checkbox" name="freq" value="28Mhz">28Mhz Band
        <input type="checkbox" name="freq" value="29Mhz">29Mhz Band<br>

	<input type="text" placeholder="From Date" id="post_at" name="search[post_at]"  value="<?php echo $post_at; ?>" class="input-control" />
	<input type="text" placeholder="To Date" id="post_at_to_date" name="search[post_at_to_date]" style="margin-left:10px"  value="<?php echo $post_at_to_date; ?>" class="input-control"  />			 
        <input type="submit" name="go" value="Search" >
	</p>
<?php if(!empty($result))	 { ?>
<table class="table-content">
          <thead>
        <tr>
	  <th width="10%"><span>ID</span></th>                      
          <th width="20%"><span>Date</span></th>
          <th width="40%"><span>1Mhz</span></th>          
          <th width="30%"><span>2Mhz</span></th>	  
        </tr>
      </thead>
    <tbody>
	<?php
		while($row = mysqli_fetch_array($result)) {
	?>
        <tr>
			<td><?php echo $row["id_hf_noise_data"]; ?></td>
			<td><?php echo $row["Date"]; ?></td>
			<td><?php echo $row["1Mhz_data"]; ?></td>
			<td><?php echo $row["2Mhz_data"]; ?></td>

		</tr>
   <?php
		}
   ?>
   <tbody>
  </table>
<?php } ?>
  </form>
  </div>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
$.datepicker.setDefaults({
showOn: "button",
buttonImage: "datepicker.png",
buttonText: "Date Picker",
buttonImageOnly: true,
dateFormat: 'dd-mm-yy'  
});
$(function() {
$("#post_at").datepicker();
$("#post_at_to_date").datepicker();
});
</script>
</body></html>
