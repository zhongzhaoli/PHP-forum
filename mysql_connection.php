<?php
class mysql_connection{
    //实例化这个对象就会直接运行这个函数  -> 构造函数
    protected $db;
    public function __construct(){
        $dsn = "mysql:dbname=phpclass_test;host=127.0.0.1";
        $dbuser = "root";
        $dbpasswd = "";
        try{
            $this->db=new PDO($dsn,$dbuser,$dbpasswd);
            $this->db->query("SET NAMES utf8");
        }catch(PDOException $e){
            echo "数据库连接发生错误：".$e->getMessage();
        }
    }
}
?>