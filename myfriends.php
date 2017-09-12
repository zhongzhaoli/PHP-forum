<?php
header("Content-type: text/html; charset=UTF-8");
session_start();
require("libs/Smarty.class.php");
include("UserDao.php");
include("FriendsDao.php");
$smarty = new Smarty();

if(isset($_SESSION['sessuser'])){
    echo "===========".$_SESSION['sessuser']."===========";
}
else{
    echo "你还没登录!";
    return;
}
echo "<br>";
$dao=new mysql_do();
$zao=new FriendsDao();
$user=$dao->findfirend($_SESSION['sessid']);
if(!$user){
    echo "You don't have friends!";
}
else{
    echo "<br>";
    for($i=0;$i<count($user);$i++){
        $zio=$user[$i];
        $retur=$zao->findByname($zio['friend_id']);
        echo $retur['user']." [".$retur['id']."]"." ";
        echo "<a href='Addfirend.php?firend_id_dele=".$retur['id']."&user_id_dele=".$_SESSION['sessid']."'>删除</a>";
        echo "<br>";
    }
}
$smarty->display("template/myfriends.html");
echo "<script>document.getElementById('user_id').value=".$_SESSION['sessid']."</script>";

?>