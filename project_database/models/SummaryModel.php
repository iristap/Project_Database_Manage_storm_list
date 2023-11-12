<?php
    class Summary{
        public $type;
        public $quantity;
    
    public function __construct($type,$quantity){
        $this->type = $type;
        $this->quantity = $quantity;
    }
    public static function getAll(){
        $List = [];
        require("connection_connect.php");
        $sql = "SELECT status_name ,COUNT(*) as qantity FROM `StormList` NATURAL JOIN StormStatus GROUP by storm_status";
        $result = $conn->query($sql);
        while($my_row = $result->fetch_assoc()){
            $type = $my_row[status_name];
            $quantity = $my_row[qantity];
            $List[] = new Summary($type,$quantity);
            
        }
        require("connection_close.php");
        return $List;
    }
    public static function getAllByCountry(){
        $List = [];
        require("connection_connect.php");
        $sql = "SELECT country_name ,COUNT(*) as qantity FROM `StormList` NATURAL JOIN StormStatus NATURAL JOIN Country WHERE storm_status = 1 GROUP by country_id";
        $result = $conn->query($sql);
        while($my_row = $result->fetch_assoc()){
            $type = $my_row[country_name ];
            $quantity = $my_row[qantity];
            $List[] = new Summary($type,$quantity);
            
        }
        require("connection_close.php");
        return $List;
    }
    public static function getAllByCountryinactive(){
        $List = [];
        require("connection_connect.php");
        $sql = "SELECT country_name ,COUNT(*) as qantity FROM `StormList` NATURAL JOIN StormStatus NATURAL JOIN Country WHERE storm_status = 2 GROUP by country_id";
        $result = $conn->query($sql);
        while($my_row = $result->fetch_assoc()){
            $type = $my_row[country_name ];
            $quantity = $my_row[qantity];
            $List[] = new Summary($type,$quantity);
            
        }
        require("connection_close.php");
        return $List;
    }
}

?>