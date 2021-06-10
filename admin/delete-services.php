<?php
include_once 'dbconfig.php';

if(isset($_POST['btn-del']))
{
	$id = $_GET['delete_id'];
	$services->delete($id);
	header("Location: delete-services.php?deleted");	
}

?>

<?php include_once 'layout/header.php'; ?>

<div class="clearfix"></div>

<div class="container-fluid">

	<?php
	if(isset($_GET['deleted']))
	{
		?>
        <div class="alert alert-success">
    	<strong>Success!</strong> record was deleted... 
		</div>
        <?php
	}
	else
	{
		?>
        <div class="alert alert-danger">
    	<strong>Sure !</strong> to remove the following record ? 
		</div>
        <?php
	}
	?>	
</div>

<div class="clearfix"></div>

<div class="container-fluid">
 	
	 <?php
	 if(isset($_GET['delete_id']))
	 {
		 ?>
         <table class='table table-bordered'>
         <tr>
			<th>Entry Id</th>
			<th>Title</th>
			<th>Description</th>
         </tr>
         <?php
         $stmt = $DB_con->prepare("SELECT * FROM services WHERE id=:id");
         $stmt->execute(array(":id"=>$_GET['delete_id']));
         while($row=$stmt->fetch(PDO::FETCH_BOTH))
         {
             ?>
             <tr>
				<td><?php print($row['id']); ?></td>
				<td><?php print($row['title']); ?></td>
                <td><?php print($row['descr']); ?></td>
             </tr>
             <?php
         }
         ?>
         </table>
         <?php
	 }
	 ?>
</div>

<div class="container-fluid">
<p>
<?php
if(isset($_GET['delete_id']))
{
	?>
  	<form method="post">
    <input type="hidden" name="id" value="<?php echo $row['id']; ?>" />
    <button class="btn btn-large btn-primary" type="submit" name="btn-del"><i class="glyphicon glyphicon-trash"></i> &nbsp; YES</button>
    <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; NO</a>
    </form>  
	<?php
}
else
{
	?>
    <a href="index.php" class="btn btn-large btn-success"><i class="glyphicon glyphicon-backward"></i> &nbsp; Back to index</a>
    <?php
}
?>
</p>
</div>	
<?php include_once 'layout/footer.php'; ?>
