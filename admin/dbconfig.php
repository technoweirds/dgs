<?php

$DB_host = "fundmyedu-dev.c0ekuon3kchy.ap-south-1.rds.amazonaws.com";
$DB_user = "admin";
$DB_pass = "wQm9UldtmbiDzDdHcnoV";
$DB_name = "dgs";


try
{
	$DB_con = new PDO("mysql:host={$DB_host};dbname={$DB_name}",$DB_user,$DB_pass);
	$DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
	echo $e->getMessage();
}

include_once 'class.services.php';

include_once 'class.leads.php';

$leads = new leads($DB_con);


$services = new services($DB_con);

?>
