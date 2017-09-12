<?php
include('UserDao.php');
include('FriendsDao.php');
header("Content-type: text/html; charset=UTF-8");
include_once("libs/Smarty.class.php");
$smarty=new Smarty();

//添加
if(isset($_POST['firend_id'])){
    $id=$_POST['firend_id'];
    $user_id=$_POST['user_id'];
    if($id==$user_id){
        echo "Do not add yourself!";
        $smarty->display("template/addfirend.html");
        return;
    }
    $dao= new mysql_do();
    $zao= new FriendsDao();
    $sth=$dao->findByAccountforid($id);
    if(!$sth){
        echo "No user";
    }
    else{
        $zxc=$zao->hasfirend($user_id,$id);
        if(!$zxc){
            $sth=$zao->addfirend($user_id,$id);
            echo "success";
        }
        else{
            echo "You has this firend";
        }
    }
}
if(isset($_GET['firend_id_dele'])){
    $dele_firend=$_GET['firend_id_dele'];
    $dele_user=$_GET['user_id_dele'];
    $zao= new FriendsDao();
    $zao->delefirend($dele_firend,$dele_user);
    echo "success";
}
$smarty->display("template/addfirend.html");

?>