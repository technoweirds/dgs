<?php
include_once 'dbconfig.php';
if(isset($_POST['btn-update']))
{
	$id = $_GET['edit_id'];
	$fn = $_POST['fn'];
	$ln = $_POST['ln'];
	$email = $_POST['email'];
	$message = $_POST['message'];
	$date = $_POST['date'];



	if($leads->update($id,$fn,$ln ,$email,$message, $date))
	{
		$msg = "<div class='alert alert-info'>
				Record was updated successfully!
				</div>";
	}
	else
	{
		$msg = "<div class='alert alert-warning'>
				<strong>SORRY!</strong> ERROR while updating record !
				</div>";
	}
}

if(isset($_GET['edit_id']))
{
	$id = $_GET['edit_id'];
	extract($leads->getID($id));	
}

?>
<?php include_once 'layout/header.php'; ?>

<div class="clearfix"></div>

<div class="container-fluid">
<?php
if(isset($msg))
{
	echo $msg;
}
?>
</div>

<div class="clearfix"></div><br />

<div class="container-fluid">
	<form method='post'>
 
        <div class="form-group">
            <label for="title">FN</label>
			<input id="fn" name="fn" class="form-control" type="text" value="<?php echo $first_name;?>" required />
        </div>
 
        <div class="form-group">
			<label for="ln">LN</label>
			<input id="ln" name="ln" class="form-control" type="text" value="<?php echo $last_name;?>" required />
        </div>
 

		<div class="form-group">
			<label for="email">Email</label>
			<input id="email" name="email" class="form-control" type="email" value="<?php echo $email;?>" required />
        </div>

		<div class="form-group">
			<label for="message">Message</label>
			<input id="message" name="message" class="form-control" type="text" value="<?php echo $message;?>" required />
        </div>


		<div class="form-group">
			<label for="date">Date</label>
			<input id="date" name="date" class="form-control" type="date" value="<?php echo $date;?>" required />
        </div>



        <table>
        <tr>
            <td colspan="2">
                <button type="submit" class="btn btn-primary" name="btn-update">
    			<span class="glyphicon glyphicon-edit"></span>  Update Record
				</button>
                <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; CANCEL</a>
            </td>
        </tr>
        </table>
</form> 
</div>

<?php include_once 'layout/footer.php'; ?>
