<?php
/* Smarty version 3.1.30, created on 2017-04-28 09:12:03
  from "G:\xampp\htdocs\PHPtest\template\myfriends.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5902eb437ed973_06628276',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '919042a9c317070a2529e947f3bab73fbf54d625' => 
    array (
      0 => 'G:\\xampp\\htdocs\\PHPtest\\template\\myfriends.html',
      1 => 1493363522,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5902eb437ed973_06628276 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <br>
    <form action="Addfirend.php" method="POST">
        <input name="firend_id" type="text" placeholder="输入好友ID">
        <input type="text" name="user_id" id="user_id" style="display:none"></span>
        <input type="submit" value="添加">
    </form>
    <button onclick="javascript:window.location.href='index.php'">返回主页</button>
</body>

</html><?php }
}
