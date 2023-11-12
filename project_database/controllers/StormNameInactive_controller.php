<?php
class StormNameInactiveController
{
    public function index()
    {
        $StormNameList = StormNameInactive::getAll();
        require_once('views/StormNameInactive/index_stormnameinactive.php');
    } 
    public function search(){
        $key = $_GET['key'];
        // echo $key;
        $StormNameList = StormNameInactive::search($key);
        require_once('views/StormNameInactive/index_stormnameinactive.php');
    }
    public function updateform(){
        $id = $_GET['id'];
        // echo $id ;
        $Storm = StormNameInactive::get($id);
        $CountryList = Country::getAll();
        $ColumnList = Column::getAll();
        require_once('views/StormNameInactive/updateform.php');
    }
    public function update(){
        // echo " test update controller ";
        $id = $_GET['id'];
        $countryid = $_GET['countryid'];
        $nameth = $_GET['nameth'];
        $nameeng = $_GET['nameeng'];
        $namethcompensate = $_GET['namethcompensate'];
        $meaning = $_GET['meaning'];
        $column = $_GET['column'];
        $datestart = $_GET['datestart'];
        $dateend = $_GET['dateend'];
        StormNameInactive::update($id,$countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart,$dateend);
        StormNameInactiveController::index();
    }

    public function delete(){
        $id = $_GET['id'];
        // echo $id ;
        StormNameInactive::delete($id);
        StormNameInactiveController::index();
    }
    public function detail(){
        $id = $_GET['id'];
        $Storm = StormNameInactive::get($id);
        require_once('views/StormNameInactive/detail.php');
    }
}
?>