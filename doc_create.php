<?php
session_start();
include("UserDao.php");
if(isset($_SESSION['sessid'])){
    $sa=new mysql_do();
    $docid = $sa->save($_POST['title'], $_POST['content'], $_SESSION['sessid']);
    for($i=0;$i<count($_FILES['file']);$i++){
        $files=$_FILES['file'];
        $qg=$files['type'][$i];
        $haha=explode('/',$qg);
        $sj=generate_password();
        if($files['size'][$i]==0){
        }
        else{
            $new_name="upload/" . $sj .".".$haha[1];
            move_uploaded_file($files["tmp_name"][$i],$new_name);
            $sa->save_t($_SESSION['sessid'],$docid,$files["type"][$i],$sj,$new_name);
        }
    }
    header("Location:index.php");
}
else{
    echo "你还没登录";
    return;
}
function generate_password() {
    $chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    $password = "";
    for ( $i = 0; $i < 10; $i++ )
    {
        $password .= $chars[ mt_rand(0, strlen($chars) - 1) ];
    }
    return $password;
}
?>