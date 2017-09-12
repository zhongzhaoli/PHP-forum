<?php
session_start();
include("UserDao.php");
$dao=new mysql_do();
$dao->comment_save($_SESSION['sessid'],$_POST['docid'],$_POST['content']);
header('location:index.php');
?>