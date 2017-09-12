<?php
/* Smarty version 3.1.30, created on 2017-05-03 08:25:52
  from "G:\xampp\htdocs\PHPtest\template\index.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_590977f0a7d1d8_01627258',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '05a18b1ebc0da979cfb71bb2ecb720e52063fba8' => 
    array (
      0 => 'G:\\xampp\\htdocs\\PHPtest\\template\\index.html',
      1 => 1493792712,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_590977f0a7d1d8_01627258 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .page_div{
            padding:8px 12px 8px 12px ;
            background:white;
            border:1px silver solid;
            cursor:pointer;
        }
    </style>
</head>

<body>
    <div id="all_dl_tc"><a href="myfriends.php">我的好友</a>&nbsp;&nbsp;<a href="Outlogin.php">退出登录</a></div>
    <br>
    <a id="fabiaowenzhang" onclick="open_close();return false" href="#">发表文章</a>
    <br>
    <br>
    <form style="display:none;border-top:2px silver solid;border-bottom:2px silver solid;padding:15px;" id="form_box" action="doc_create.php" enctype="multipart/form-data" method="post">
        标题：<input name="title" type="text">
        <br>
        <br> 详情：
        <textarea name="content" id="" cols="50" rows="8"></textarea>
        <br>
        <br>
        <input type="file" name="file[]" id="file"  accept="image">
        <input type="file" name="file[]" id="file"  accept="image">
        <input type="file" name="file[]" id="file"  accept="image">
        <br>
        <br>
        <input type="file" name="file[]" id="file"  accept="image">
        <input type="file" name="file[]" id="file"  accept="image">
        <br>
        <br>
        <button>提交</button>
    </form>
</body>

</html>
<?php echo '<script'; ?>
>
    var a=0;
    function open_close(){
        var b=document.getElementById('form_box');
        if(a==0){
            b.style.display="block";
            a=1;
        }
        else{
            b.style.display="none";
            a=0;
        }
    }
<?php echo '</script'; ?>
><?php }
}
