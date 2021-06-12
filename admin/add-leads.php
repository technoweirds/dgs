<?php
include_once 'dbconfig.php';
if(isset($_POST['btn-save']))
{
	$fn = $_POST['fn'];
	$ln = $_POST['ln'];
	$email = $_POST['email'];

	$message = $_POST['message'];
	$date = $_POST['date'];


	
	if($leads->create($fn,$ln ,$email ,$msg, $date))
	{
		header("Location: add-services.php?inserted");
	}
	else
	{
		header("Location: add-services.php?failure");
	}
}
?>
<?php include_once 'layout/header.php'; ?>
<div class="clearfix"></div>

<?php
if(isset($_GET['inserted']))
{
	?>
    <div class="container-fluid">
	<div class="alert alert-info">
    Record inserted successfully. <a href="index.php">HOME</a>!
	</div>
	</div>
    <?php
}
else if(isset($_GET['failure']))
{
	?>
    <div class="container-fluid">
	<div class="alert alert-danger" role="alert">Error</div>
	</div>
    <?php
}
?>

<div class="clearfix"></div><br />

<div class="container-fluid">

 	
	<form method='post'>
 
        <div class="form-group">
            <label for="title">Fisrt Name</label>
			<input id="fn" name="fn" class="form-control" type="text" required />
        </div>
 
        <div class="form-group">
			<label for="descr">Last Name</label>
			<input id="ln" name="ln" class="form-control" type="text" required />
        </div>

		<div class="form-group">
			<label for="descr">Email</label>
			<input id="ln" name="email" class="form-control" type="email" required />
        </div>


		<div class="form-group">
			<label for="descr">Message</label>
			<input id="message" name="message" class="form-control" type="message" required />
        </div>

		<div class="form-group">
			<label for="descr">Date of Lead Generation</label>
			<input id="date" name="date" class="form-control" type="date" required />
        </div>


 
        <table>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-save">
    		<span class="glyphicon glyphicon-plus"></span> Create New Lead
			</button>  
            <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to Home/ All Leads</a>
            </td>
        </table>
</form>
</div>
<?php include_once 'layout/footer.php'; ?>
