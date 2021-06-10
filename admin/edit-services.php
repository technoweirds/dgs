<?php
include_once 'dbconfig.php';
if(isset($_POST['btn-update']))
{
	$id = $_GET['edit_id'];
	$title = $_POST['title'];
	$descr = $_POST['descr'];

	if($services->update($id,$title,$descr))
	{
		$msg = "<div class='alert alert-info'>
				Record was updated successfully <a href='index.php'>HOME</a>!
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
	extract($services->getID($id));	
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
            <label for="title">Title</label>
			<input id="title" name="title" class="form-control" type="text" value="<?php echo $title;?>" required />
        </div>
 
        <div class="form-group">
			<label for="descr">descr</label>
			<input id="descr" name="descr" class="form-control" type="text" value="<?php echo $descr;?>" required />
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
