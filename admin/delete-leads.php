<?php
include_once 'dbconfig.php';

if(isset($_POST['btn-del']))
{
	$id = $_GET['delete_id'];
	$leads->delete($id);
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
			<th>Id</th>
			<th>Fist Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Message</th>
			<th>Date</th>
         </tr>
         <?php
         $stmt = $DB_con->prepare("SELECT * FROM leads WHERE id=:id");
         $stmt->execute(array(":id"=>$_GET['delete_id']));
         while($row=$stmt->fetch(PDO::FETCH_BOTH))
         {
             ?>
             <tr>
				<td><?php print($row['id']); ?></td>
				<td><?php print($row['first_name']); ?></td>
                <td><?php print($row['last_name']); ?></td>
				<td><?php print($row['email']); ?></td>
                <td><?php print($row['message']); ?></td>
				<td><?php print($row['date']); ?></td>


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
