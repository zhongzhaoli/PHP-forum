<?php
header("Content-type: text/html; charset=UTF-8");
session_start();
require("libs/Smarty.class.php");
include("UserDao.php");
$smarty = new Smarty();
if(isset($_SESSION['sessuser'])){
    echo "===========".$_SESSION['sessuser']."===========";
}
else{
    echo "==========="."<a href='login.php'>你还没有登录</a>"."===========<br>";
}
$smarty->display("template/index.html");
//查找用户的文章
if(isset($_GET['userid_text'])){
    echo "文章<br>";
    $dao=new mysql_do();
    $aaa=$dao->select_user_text($_GET['userid_text']);
    $much=count($aaa);
    $page=ceil($much/5);
    if(isset($_GET['page'])){
        zzz($aaa,$page,$_GET['page']);
    }
    else{
        zzz($aaa,$page,1);
    }
}
//查找文章详细
else if(isset($_GET['text_id'])){
    echo "<script>document.getElementById('fabiaowenzhang').style.display='none'</script>";
    echo "<h4 style='margin-top:-30px;margin-bottom:5px;padding:0'>文章详细</h4><br>";
    $dao=new mysql_do();
    $aaa=$dao->content_select_id($_GET['text_id']);
    $name=$dao->findByAccountforid($aaa['userid']);
    echo "<a style='font-size:25px;font-weight:bold;'>标题：</a><span>".$aaa['title'].'</span><br><br>';
    echo "<a style='font-size:25px;font-weight:bold;'>内容：</a><a style='line-height:30px'>".$aaa['content']."</a><br><br>";
    $bbb=$dao->coneten_select_two($aaa['id']);
    echo "<a style='font-size:25px;font-weight:bold;'>作者：</a><span>".$name['user'].'</span><br><br>';
    if(!$bbb){
        echo "<a style='font-size:25px;font-weight:bold;'>文件：</a><br><br>";
        echo "<a style='font-size:25px;font-weight:bold;'>没有附加文件</a>";
    }
    else{
        echo "<a style='font-size:25px;font-weight:bold;'>文件：</a><br><br>";
        for($i=0;$i<count($bbb);$i++){
            echo "<a href=".$bbb[$i]['path']."><img style='border:1px silver solid' width='300' height='200' src=".$bbb[$i]['path']."></a>"." ";
        }
    }
    echo "<br><br>";
    echo "<a style='font-size:25px;font-weight:bold;'>回复：</a><br><br>";
    $ccc=$dao->reply($_GET['text_id']);
    if(!$ccc){
        echo "<a style='font-size:25px;font-weight:bold;'>没有任何回复</a>";
    }
    else{
        for($l=0;$l<count($ccc);$l++){
            $dao=new mysql_do();
            $name=$dao->findByAccountforid($ccc[$l]['userid']);
            echo $name['user']."：".$ccc[$l]['content'].'<span style="color:red;margin-left:20px;">['.$ccc[$l]['time'].']</span><br>';
        }
    }
    
}
else{
    echo "文章<br>";
    $dao=new mysql_do();
    $aaa=$dao->coneten_select();
    $much=count($aaa);
    $page=ceil($much/5);
    if(isset($_GET['page'])){
        zzz($aaa,$page,$_GET['page']);
    }
    else{
        zzz($aaa,$page,1);
    }
    
}
function zzz($aaa,$page,$pages){
    if($page==$pages){
        $oji=count($aaa);
        $ijo=($page-1)*5;
        for($j = $ijo ; $j < $oji ; $j++){
            $zzi=0;
            xxx($aaa,$j,$zzi);
        }
    }
    else{
        $zzi=0;
        for($i=($pages*5)-5;$i<$pages*5;$i++){
            $zzi++;
            xxx($aaa,$i,$zzi);
        }
    }
    //分页
    echo "<br><br>";
    for($o=1;$o<=$page;$o++){
        if(isset($_GET['userid_text'])){
            echo "&nbsp<a class='page_div' href='?page=".$o."&userid_text=".$_GET['userid_text']."'>".$o."</a>";
        }
        else{
            echo "&nbsp<a class='page_div' href='?page=".$o."'>".$o."</a>";
        }
    };
}
function xxx($aaa,$i,$zzi){
    $dao=new mysql_do();
    $name=$dao->findByAccountforid($aaa[$i]['userid']);
    echo "==============================================="."<br>";
    echo $aaa[$i]['title']."  <span style='color:red'>编号:".$aaa[$i]['id']."</span><br>";
    echo "<a href='#'>修改</a><br>";
    echo "作者：<a href='?userid_text=".$aaa[$i]['userid']."'>".$name['user']."</a> , 时间：".$aaa[$i]['time']."<br>";
    echo "<a href='?text_id=".$aaa[$i]['id']."'>查看详细</a><br>";
    $bbb=$dao->coneten_select_two($aaa[$i]['id']);
    for($j=0;$j<count($bbb);$j++){
        $type=$bbb[$j]['extname'];
        $typ=explode('/',$type);
        echo "<a href=".$bbb[$j]['path'].">".$bbb[$j]['name'].'.'.$typ[1]."</a><br>";
    }
    echo "回复".'<br>';
    $ccc=$dao->reply($aaa[$i]['id']);
    for($l=0;$l<count($ccc);$l++){
        $dao=new mysql_do();
        $name=$dao->findByAccountforid($ccc[$l]['userid']);
        echo $name['user']."：".$ccc[$l]['content'].'<span style="color:red;margin-left:20px;">['.$ccc[$l]['time'].']</span><br>';
    }
    if(isset($_SESSION['sessuser'])){
        echo "<form style='margin:0' method='post' action='comment_save.php'><input type='test' name='content'><input type='hidden' name='docid' value=".$aaa[$i]['id']."><button style='margin-left:20px'>回复</button></form>";
    }
    else{
        echo "你还没登录,不能回复！<br>";
    }
    //最后一个
    if($i==count($aaa)-1||$zzi==5){
        echo "===============================================";
    }
}
?>