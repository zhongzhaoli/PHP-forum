<?php
include("mysql_connection.php");
include("User.php");
//数据库主方法
class mysql_do extends mysql_connection{
    public function findByAccount($user){
        $sth=$this->db->prepare("select * from user where user=:user");
        $sth->bindValue(':user', $user, PDO::PARAM_INT);
        $sth->execute();
        $row = $sth->fetch(PDO::FETCH_ASSOC);
        $user_t=new User($row['id'], $row['account'], $row['passwd'], $row['name']);
        return $row;
    }
    public function findByAccountforid($id){
        $sth=$this->db->prepare("select * from user where id=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_INT);
        $sth->execute();
        $row = $sth->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    public function findfirend($id){
        $arr=array();
        $sth=$this->db->prepare("select * from friends where user_id=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_INT);
        $sth->execute();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
        {
            $arr[]=$row;
        }
        return $arr;
    }
    public function save($title,$content,$id){
        $da=date("Y-m-d H:i:s");
        $sth=$this->db->prepare("insert into doc(userid,title,content,time) values(:userid,:title,:content,'$da')");
        $sth->bindValue(':title', $title, PDO::PARAM_STR);
        $sth->bindValue(':content', $content, PDO::PARAM_STR);
        $sth->bindValue(':userid', $id, PDO::PARAM_INT);
        $sth->execute();
        return $this->db->lastInsertId();
    }
    public function save_t($id,$docid,$extname,$name,$path){
        $da=date("Y-m-d H:i:s");
        $sth=$this->db->prepare("insert into file(userid,docid,extname,name,pubtime,path) values(:userid,:docid,:extname,:name,'$da',:path)");
        $sth->bindValue(':docid', $docid, PDO::PARAM_STR);
        $sth->bindValue(':extname', $extname, PDO::PARAM_STR);
        $sth->bindValue(':name', $name, PDO::PARAM_STR);
        $sth->bindValue(':path', $path, PDO::PARAM_STR);
        $sth->bindValue(':userid', $id, PDO::PARAM_INT);
        $sth->execute();
    }
    public function coneten_select(){
        $arr=array();
        $sth=$this->db->prepare("select * from doc");
        $sth->execute();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
        {
            $arr[]=$row;
        }
        return $arr;
    }
    public function content_select_id($id){
        $sth=$this->db->prepare("select * from doc where id=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_STR);
        $sth->execute();
        $row = $sth->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    public function coneten_select_two($id){
        $arr=array();
        $sth=$this->db->prepare("select * from file where docid=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_STR);
        $sth->execute();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
        {
            $arr[]=$row;
        }
        return $arr;
    }
    public function select_user_text($id){
        $arr=array();
        $sth=$this->db->prepare("select * from doc where userid=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_STR);
        $sth->execute();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
        {
            $arr[]=$row;
        }
        return $arr;
    }
    public function comment_save($userid,$docid,$content){
        $da=date("Y-m-d H:i:s");
        $sth=$this->db->prepare("insert into comment(userid,docid,content,time) values(:userid,:docid,:content,'$da')");
        $sth->bindValue(':userid', $userid, PDO::PARAM_STR);
        $sth->bindValue(':docid', $docid, PDO::PARAM_STR);
        $sth->bindValue(':content', $content, PDO::PARAM_STR);
        $sth->execute();
    }
    public function reply($id){
        $arr=array();
        $sth=$this->db->prepare("select * from comment where docid=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_STR);
        $sth->execute();
        while($row = $sth->fetch(PDO::FETCH_ASSOC))
        {
            $arr[]=$row;
        }
        return $arr;
    }
}
?>