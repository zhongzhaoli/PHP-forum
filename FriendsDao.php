<?php
class FriendsDao extends mysql_connection{
    public function findByname($id){
        $sth=$this->db->prepare("select * from user where id=:id");
        $sth->bindValue(':id', $id, PDO::PARAM_INT);
        $sth->execute();
        $row = $sth->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    public function hasfirend($user_id,$firend_id){
        $sth=$this->db->prepare("select * from friends where user_id=:user_id and friend_id=:firend_id");
        $sth->bindValue(':user_id', $user_id, PDO::PARAM_INT);
        $sth->bindValue(':firend_id', $firend_id, PDO::PARAM_INT);
        $sth->execute();
        $row = $sth->fetch(PDO::FETCH_ASSOC);
        return $row;
    }
    public function addfirend($user_id,$firend_id){
        $sth=$this->db->prepare("insert into friends(user_id,friend_id,type) values(:user_id,:firend_id,'firend')");
        $sth->bindValue(':user_id', $user_id, PDO::PARAM_INT);
        $sth->bindValue(':firend_id', $firend_id, PDO::PARAM_INT);
        $sth->execute();
    }
    public function delefirend($firend_id,$user_id){
        $sth=$this->db->prepare("delete from friends where user_id=:user_id and friend_id=:firend_id");
        $sth->bindValue(':user_id', $user_id, PDO::PARAM_INT);
        $sth->bindValue(':firend_id', $firend_id, PDO::PARAM_INT);
        $sth->execute();
    }
}
?>