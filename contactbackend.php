<?php  




$host="fundmyedu-dev.c0ekuon3kchy.ap-south-1.rds.amazonaws.com";//host name  
$username="admin"; //database username  
$word="wQm9UldtmbiDzDdHcnoV";//database word  
$db_name="dgs";//database name  
$con=mysqli_connect("$host", "$username", "$word","$db_name")or die("cannot connect");//connection string  
$checkbox1=$_POST['service'];  
$email = $_POST['email'];
$ln = $_POST['last_name'];
$fn = $_POST['first_name'];


$chk="";  
foreach($checkbox1 as $chk1)  
   {  
      $chk .= $chk1.",";  
   }  
$sql = "INSERT INTO leads (first_name, last_name, email , message , date )
VALUES ('$fn', '$ln', '$email' , '$chk' , '1/2/3')";
$in_ch=mysqli_query($con,$sql);  
if($in_ch==1)  
   {  
      echo'<script>alert("Inserted Successfully")</script>';  
   }  
else  
   {  
      echo'<script>alert("Failed To Insert")</script>';  
   }    
?>   
