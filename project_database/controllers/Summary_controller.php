<?php
class SummaryController
{
    public function index()
    {
        $StormNameList = Summary::getAll();
        $Country = Summary::getAllByCountry();
        $Countryin = Summary::getAllByCountryinactive();
        require_once('views/Summary/index_summary.php');
    } 
    
}
?>