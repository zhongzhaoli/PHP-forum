<?php
include_once("libs/Smarty.class.php");
$smarty=new Smarty();
session_start();
session_unset();
echo "退出成功"."&nbsp"."&nbsp";
$smarty->display("template/outlogin.html");

?>