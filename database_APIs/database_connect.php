<?php
class DB_Connect
{
    private $db_connection;
    
    function __construct()
    {
        
    }
    
    function connect()
    {
        $dbhost = "https://remotemysql.com/phpmyadmin/sql.php";
        $username = "PVhTrKWdPv";
        $password = "FaPy0Vt6oB";
        $dbname = "PVhTrKWdPv";
        
        $this->db_connection = new mysqli($dbhost, $username, $password, $dbname);
        
        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        
        return $this->db_connection;
    }
}

$test = new DB_Connect();
$test->connect();
?>