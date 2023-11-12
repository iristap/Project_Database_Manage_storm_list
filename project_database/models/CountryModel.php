<?php
    class Country{
        public $idcountry;
        public $namecountry;

        public function __construct($idcountry,$namecountry){
            $this->idcountry = $idcountry;
            $this->namecountry = $namecountry;

        } 
 
        public static function getAll(){
            $List = [];
            require("connection_connect.php");
            $sql = "SELECT * FROM `Country`";
            $result = $conn->query($sql);
            while($my_row = $result->fetch_assoc()){
                $idcountry = $my_row[country_id];
                $namecountry = $my_row[country_name];
                $List[] = new Country($idcountry,$namecountry);
            }
            require("connection_close.php");
            return $List;
        }
        
        public static function search($key)
    {
        $List = [];
        // echo " search model ";
        if($key == ''){ //กรณีกดแบบไม่ได้พิมลงinput
            $List = Country::getAll();
            return $List;
        }
        require("connection_connect.php");
        $sql = "SELECT country_id, country_name
        FROM `Country` where country_name like '%$key%'";
        $result = $conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $idcountry = $my_row[country_id];
            $namecountry = $my_row[country_name];
            $List[] = new Country($idcountry,$namecountry);
        }
        require("connection_close.php");
        return $List;
    }

    public static function add($namecountry){
        require("connection_connect.php");
        $sql = "INSERT INTO `Country`(`country_name`) VALUES ('$namecountry')";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Add success $result rows";              
    }

    public static function get($id){
        require("connection_connect.php");
        $sql = "SELECT * FROM `Country` where country_id = '$id'";
        $result = $conn->query($sql);
        $my_row = $result->fetch_assoc();
        $idcountry = $my_row[country_id];
        $namecountry = $my_row[country_name];
        require("connection_close.php");
        return new Country($idcountry,$namecountry);
    }
    public static function update($id,$countryname){
        // echo " update ";
        require("connection_connect.php");
        $sql = "update Country set 	country_name ='$countryname'
        where country_id ='$id'";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Update success $result row"; 
    }

    public static function delete($id){
        require("connection_connect.php");
        $sql = "Delete from Country where country_id = '$id'";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Add success $result row"; 
    }

    }
?>