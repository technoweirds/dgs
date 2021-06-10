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
	
	public function paginglink($query,$records_per_page)
	{
		
		$self = $_SERVER['PHP_SELF'];
		
		$stmt = $this->db->prepare($query);
		$stmt->execute();
		
		$total_no_of_records = $stmt->rowCount();
		
		if($total_no_of_records > 0)
		{
			?><ul class="pagination"><?php
			$total_no_of_pages=ceil($total_no_of_records/$records_per_page);
			$current_page=1;
			if(isset($_GET["page_no"]))
			{
				$current_page=$_GET["page_no"];
			}
			if($current_page!=1)
			{
				$previous =$current_page-1;
				echo "<li><a href='".$self."?page_no=1'>First</a></li>";
				echo "<li><a href='".$self."?page_no=".$previous."'>Previous</a></li>";
			}
			for($i=1;$i<=$total_no_of_pages;$i++)
			{
				if($i==$current_page)
				{
					echo "<li><a href='".$self."?page_no=".$i."' style='color:red;'>".$i."</a></li>";
				}
				else
				{
					echo "<li><a href='".$self."?page_no=".$i."'>".$i."</a></li>";
				}
			}
			if($current_page!=$total_no_of_pages)
			{
				$next=$current_page+1;
				echo "<li><a href='".$self."?page_no=".$next."'>Next</a></li>";
				echo "<li><a href='".$self."?page_no=".$total_no_of_pages."'>Last</a></li>";
			}
			?></ul><?php
		}
	}
	
	/* paging */
	
}
