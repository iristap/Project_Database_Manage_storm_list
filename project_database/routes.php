<?php
$controllers = array('pages'=>['index','error'],'StormName'=>['index','newstorm','search','addstorm','updateform','update','inactive','inactiveform','delete','detail'],'Country'=>['index','newcountry','search','addcountry','updateform','update','delete'],'StormNameInactive'=>['index','search','updateform','update','delete','detail'],'Summary'=>['index']);

function call($controller,$action)
{
    // echo "routes to ".$controller." - ".$action."<br>";
    require_once("controllers/".$controller."_controller.php");
    switch($controller)
    {
        case "pages": $controller = new PagesController();
                      break;

        case "StormName" :  require_once("models/StormModel.php");
                            require_once("models/CountryModel.php");
                            require_once("models/ColumnModel.php");
                            $controller = new StormNameController();

                            break;

        case "Country" :    require_once("models/CountryModel.php");
                            $controller = new CountryController();
                            break;

        case "StormNameInactive":   require_once("models/StormInactiveModel.php");
                                    require_once("models/CountryModel.php");
                                    require_once("models/ColumnModel.php");
                                    $controller = new StormNameInactiveController();
                                    break;

        case "Summary":     require_once("models/SummaryModel.php");
                            $controller = new SummaryController();
                            break;
    }
    $controller -> {$action}();
}

if(array_key_exists($controller,$controllers))
{
    if(in_array($action,$controllers[$controller]))
    {
        call($controller,$action);
    }
    else
    {
        call('pages','error');
    }
}
else
{
    call('pages','error');
}
?>