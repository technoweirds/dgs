<?php

class services
{
	private $db;
	
	function __construct($DB_con)
	{
		$this->db = $DB_con;
	}
	
	public function create($title,$descr)
	{
		try
		{
			$stmt = $this->db->prepare("INSERT INTO services(title,descr) VALUES(:title, :descr)");
			$stmt->bindparam(":title",$title);
			$stmt->bindparam(":descr",$descr);
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
		$stmt = $this->db->prepare("SELECT * FROM services WHERE id=:id");
		$stmt->execute(array(":id"=>$id));
		$editRow=$stmt->fetch(PDO::FETCH_ASSOC);
		return $editRow;
	}
	
	public function update($id,$title,$descr)
	{
		try
		{

			echo $descr;
			echo $title;
			$stmt=$this->db->prepare("UPDATE services SET title=:title,
													descr=:descr
													WHERE id=:id");

$stmt->bindparam(":id",$id);

			$stmt->bindparam(":title",$title);
			$stmt->bindparam(":descr",$descr);
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
		$stmt = $this->db->prepare("DELETE FROM services WHERE id=:id");
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
					<td><?php print($row['title']); ?></td>
					<td><?php print($row['descr']); ?></td>
					<td>
					<a href="edit-services.php?edit_id=<?php print($row['id']); ?>"><i class="form-control-icon" data-feather="edit"></i></a>
					</td>
					<td>
					<a href="delete-services.php?delete_id=<?php print($row['id']); ?>"><i class="form-control-icon" data-feather="trash-2"></i></a>
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