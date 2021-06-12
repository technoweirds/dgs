



<?php

class leads
{
	private $db;
	
	function __construct($DB_con)
	{
		$this->db = $DB_con;
	}
	
	public function create($fn,$ln ,$email ,$message, $date)
	{
		try
		{
			$stmt = $this->db->prepare("INSERT INTO leads(first_name,last_name , email , message ,date) VALUES(:fn, :ln , :email , :msg , :date)");
			$stmt->bindparam(":fn",$fn);
			$stmt->bindparam(":ln",$ln);
			$stmt->bindparam(":email",$email);

			$stmt->bindparam(":msg",$message);
			$stmt->bindparam(":date",$date);


			// $stmt->bindparam(":website",$website);
			// $stmt->bindparam(":contact",$contact);
			// $stmt->bindparam(":job",$job);
			// $stmt->bindparam(":company",$company);
			$stmt->execute();
			return true;
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();	
			return false;
		}
		
	}
	
	public function getID($id)
	{
		$stmt = $this->db->prepare("SELECT * FROM leads WHERE id=:id");
		$stmt->execute(array(":id"=>$id));
		$editRow=$stmt->fetch(PDO::FETCH_ASSOC);
		return $editRow;
	}
	
	public function update($id,$fn,$ln,$email,$message,$date)
	{
		try
		{

			echo $ln;
			echo $fn;
            echo $email;

            echo $message;
			echo $date;

			$stmt=$this->db->prepare("UPDATE leads SET first_name=:fn,
													last_name=:ln,
													email=:email,
													message=:message,
													date=:date


													WHERE id=:id");

$stmt->bindparam(":id",$id);

$stmt->bindparam(":fn",$fn);
$stmt->bindparam(":ln",$ln);
$stmt->bindparam(":email",$email);

$stmt->bindparam(":message",$message);
$stmt->bindparam(":date",$date);
$stmt->execute();
			return true;	
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();	
			return false;
		}
	}
	
	public function delete($id)
	{
		$stmt = $this->db->prepare("DELETE FROM leads WHERE id=:id");
		$stmt->bindparam(":id",$id);
		$stmt->execute();
		return true;
	}
	
	/* paging */
	
	public function dataview($query)
	{
		$stmt = $this->db->prepare($query);
		$stmt->execute();
	
		if($stmt->rowCount()>0)
		{
			$counter = 0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC))
			{
				$counter ++;
				?>
                <tr>
					<td><?php print($counter); ?></td>
					<td><?php print($row['first_name']); ?></td>
					<td><?php print($row['last_name']); ?></td>
					<td><?php print($row['email']); ?></td>
					<td><?php print($row['message']); ?></td>
					<td><?php print($row['date']); ?></td>


					<td>
					<a href="edit-leads.php?edit_id=<?php print($row['id']); ?>"><i class="form-control-icon" data-feather="edit"></i></a>
					</td>
					<td>
					<a href="delete-leads.php?delete_id=<?php print($row['id']); ?>"><i class="form-control-icon" data-feather="trash-2"></i></a>
					</td>
                </tr>
                <?php
			}
		}
		else
		{
			?>
            <tr>
            <td>Nothing here...</td>
            </tr>
            <?php
		}
		
	}
	
	// public function paging($query,$records_per_page)
	// {
	// 	$starting_position=0;
	// 	if(isset($_GET["page_no"]))
	// 	{
	// 		$starting_position=($_GET["page_no"]-1)*$records_per_page;
	// 	}
	// 	$query2=$query;
	// 	return $query2;
	// }
	
	
}
