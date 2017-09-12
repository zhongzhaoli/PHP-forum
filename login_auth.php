<?php
include("UserDao.php");
session_start();
$dao=new mysql_do();
$user=$dao->findByAccount($_POST['usernamr']);
if($user!=""){
    if($user['pass']==$_POST['userpass']){
        echo "Success";
        $_SESSION['sessuser']=$user['user'];
        $_SESSION['sessid']=$user['id'];
        header('location:index.php');
    }else{
        echo "Password is error";
    }
}else{
    echo "No this account";
}
?>