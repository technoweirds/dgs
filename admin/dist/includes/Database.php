<?php
class Database
{
    private $dbServer = 'fundmyedu-dev.c0ekuon3kchy.ap-south-1.rds.amazonaws.com';
    private $dbUser = 'admin';
    private $dbPassword = 'wQm9UldtmbiDzDdHcnoV';
    private $dbName = 'dgs';
    protected $conn;

    public function __construct()
    {
        try {
            $dsn = "mysql:host={$this->dbServer}; dbname={$this->dbName}; charset=utf8";
            $options = array(PDO::ATTR_PERSISTENT);
            $this->conn = new PDO($dsn, $this->dbUser, $this->dbPassword, $options);
        } catch (PDOException $e) {
            echo "Connection Error: " . $e->getMessage();
        }

    }
}
