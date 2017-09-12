<?php
class User{
    private $id;
    private $account;
    private $passwd;
    public function __construct($id, $account, $passwd){
        $this->id = $id;
        $this->account = $account;
        $this->passwd = $passwd;
    }
    public function getId(){
        return $this->id;
    }
}
?>