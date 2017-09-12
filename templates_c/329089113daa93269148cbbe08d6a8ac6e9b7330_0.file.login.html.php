<?php
/* Smarty version 3.1.30, created on 2017-04-26 09:31:10
  from "G:\xampp\htdocs\PHPtest\template\login.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59004cbe4c55d7_83206052',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '329089113daa93269148cbbe08d6a8ac6e9b7330' => 
    array (
      0 => 'G:\\xampp\\htdocs\\PHPtest\\template\\login.html',
      1 => 1493191868,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59004cbe4c55d7_83206052 (Smarty_Internal_Template $_smarty_tpl) {
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
    <form action="login_auth.php" method="POST">
        账号：<input type="test" name="usernamr">
        密码：<input type="test" name="userpass">
        <input type="submit" value="登录">
    </form>
</body>

</html><?php }
}
