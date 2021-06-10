<?php
include_once 'dbconfig.php';
if(isset($_POST['btn-save']))
{
	$title = $_POST['title'];
	$descr = $_POST['descr'];
	
	if($services->create($title,$descr))
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
            <label for="title">Title</label>
			<input id="title" name="title" class="form-control" type="text" required />
        </div>
 
        <div class="form-group">
			<label for="descr">descr</label>
			<input id="descr" name="descr" class="form-control" type="text" required />
        </div>
 
        <table>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-save">
    		<span class="glyphicon glyphicon-plus"></span> Create New Customer
			</button>  
            <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to index</a>
            </td>
        </table>
</form>
</div>
<?php include_once 'layout/footer.php'; ?>
