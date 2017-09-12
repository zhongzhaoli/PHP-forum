<?php
/* Smarty version 3.1.30, created on 2017-09-12 03:00:11
  from "G:\nginx134\nginx-1.13.4\html\PHPtest\template\login.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59b74dbb6e5a77_12199555',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0ce44bcaa05ffe59c710bcf858df7d79699a9dcb' => 
    array (
      0 => 'G:\\nginx134\\nginx-1.13.4\\html\\PHPtest\\template\\login.html',
      1 => 1493191868,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59b74dbb6e5a77_12199555 (Smarty_Internal_Template $_smarty_tpl) {
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
