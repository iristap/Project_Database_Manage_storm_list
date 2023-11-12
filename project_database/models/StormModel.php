<?php
    class StormName{
        public $id;
        public $country;
        public $nameth;
        public $nameeng;
        public $namethcompensate;
        public $meaning;
        public $column;
        public $status;
        public $datestart;
        public $dateend;


        public function __construct($id,$country,$nameth,$nameeng,$namethcompensate,$meaning,$column,$status,$datestart,$dateend){
            $this->id = $id;
            $this->country = $country;
            $this->nameth = $nameth;
            $this->nameeng = $nameeng;
            $this->namethcompensate = $namethcompensate;
            $this->meaning = $meaning;
            $this->column = $column;
            $this->status = $status;
            $this->datestart = $datestart;
            $this->dateend = $dateend;

        } 
        // get id แต่ละแถว
        public static function get($id){
            require("connection_connect.php");
            $sql = "SELECT storm_id,country_name,storm_nameth ,storm_nameeng,nameth_compensate,status_meaning,column_name,storm_status,date_start,date_end 
            FROM `StormList` NATURAL JOIN Country NATURAL JOIN ColumnStorm where storm_id = '$id' AND storm_status = 1
            ORDER by column_id , country_id ASC";
            $result = $conn->query($sql);
            $my_row = $result->fetch_assoc();
            $id = $my_row[storm_id];
            $country = $my_row[country_name];
            $nameth = $my_row[storm_nameth];
            $nameeng = $my_row[storm_nameeng];
            $namethcompensate = $my_row[nameth_compensate];
            $meaning = $my_row[status_meaning];
            $column = $my_row[column_name];
            $status = $my_row[storm_status];
            $datestart = $my_row[date_start];
            $dateend = $my_row[date_end];
            require("connection_close.php");
            return new StormName($id,$country,$nameth,$nameeng,$namethcompensate,$meaning,$column,$status,$datestart,$dateend);
        }

        // getall โชว์ตารางหน้า Index
        public static function getAll(){
            $List = [];
            require("connection_connect.php");
            $sql = "SELECT storm_id,country_name,storm_nameth ,storm_nameeng,nameth_compensate,status_meaning,column_name,storm_status,date_start,date_end 
            FROM `StormList` NATURAL JOIN Country NATURAL JOIN ColumnStorm WHERE storm_status = 1
            ORDER by column_id , country_id ASC";
            $result = $conn->query($sql);
            while($my_row = $result->fetch_assoc()){
                $id = $my_row[storm_id];
                $country = $my_row[country_name];
                $nameth = $my_row[storm_nameth];
                $nameeng = $my_row[storm_nameeng];
                $namethcompensate = $my_row[nameth_compensate];
                $meaning = $my_row[status_meaning];
                $column = $my_row[column_name];
                $status = $my_row[storm_status];
                $datestart = $my_row[date_start];
                $dateend = $my_row[date_end];
                $List[] = new StormName($id,$country,$nameth,$nameeng,$namethcompensate,$meaning,$column,$status,$datestart,$dateend);
                
            }
            require("connection_close.php");
            return $List;
        }
        
        public static function add($countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart){
            // echo " add ";
            require("connection_connect.php");
            $sql = "INSERT INTO `StormList`(`country_id`, `storm_nameth`, `storm_nameeng`, `nameth_compensate`, `column_id`, `storm_status`, `status_meaning`, `date_start`) 
            VALUES ('$countryid','$nameth','$nameeng','$namethcompensate','$column','1','$meaning','$datestart')";
            $result = $conn->query($sql);
            require("connection_close.php");
            return "Add success $result rows";              
        }

        public static function search($key)
    {
        $List = [];
        // echo " search model ";
        if($key == ''){ //กรณีกดแบบไม่ได้พิมลงinput
            $List = StormName::getAll();
            return $List;
        }
        require("connection_connect.php");
        $sql = "SELECT storm_id,country_name,storm_nameth ,storm_nameeng,nameth_compensate,status_meaning,column_name,storm_status,date_start,date_end 
        FROM `StormList` NATURAL JOIN Country NATURAL JOIN ColumnStorm where (country_name like '%$key%' OR storm_nameth like '%$key%' OR storm_nameeng like '%$key%'OR nameth_compensate like '%$key%') AND storm_status = 1
        ORDER by column_id , country_id ASC ";
        $result = $conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $id = $my_row[storm_id];
            $country = $my_row[country_name];
            $nameth = $my_row[storm_nameth];
            $nameeng = $my_row[storm_nameeng];
            $namethcompensate = $my_row[nameth_compensate];
            $meaning = $my_row[status_meaning];
            $column = $my_row[column_name];
            $status = $my_row[storm_status];
            $datestart = $my_row[date_start];
            $dateend = $my_row[date_end];
            $List[] = new StormName($id,$country,$nameth,$nameeng,$namethcompensate,$meaning,$column,$status,$datestart,$dateend);
        }
        require("connection_close.php");
        return $List;
    }

        public static function update($id,$countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart){
            // echo " update ";
            require("connection_connect.php");
            $sql = "update StormList set country_id ='$countryid', storm_nameth ='$nameth',storm_nameeng ='$nameeng',nameth_compensate ='$namethcompensate',column_id ='$column',status_meaning ='$meaning',date_start ='$datestart' 
            where storm_id='$id'";
            $result = $conn->query($sql);
            require("connection_close.php");
            return "Update success $result row"; 
        }

        public static function delete($id){
            require("connection_connect.php");
            $sql = "Delete from StormList where storm_id = '$id'";
            $result = $conn->query($sql);
            require("connection_close.php");
            return "Add success $result row"; 
        }

        public static function inactive($id,$dateend){
            // echo " update ";
            require("connection_connect.php");
            $sql = "update StormList set storm_status = 2 ,date_end = '$dateend'
            where storm_id='$id'";
            $result = $conn->query($sql);
            require("connection_close.php");
            return "Update success $result row"; 
        }
    }
?>