<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>storm name</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
</head>
<body>
    
    <div class = "container">
    <label >จำนวนชื่อพายุ</label><br>
    <table border=1 class="table table-white table-striped table-hover">
        <tr class ="table-dark">
            <!-- <td>id</td> -->
            <td>ประเภทพายุ</td>
            <td>จำนวน</td>
            
            
        </tr>
        
        <?php 
        foreach ($StormNameList as $list) {
            echo    "<tr>
                    <td>$list->type</td>
                    <td>$list->quantity</td>
                    </tr>
                    ";
        }
        ?>  
    </table>
    <br>
    <label >จำนวนชื่อที่ใช้ได้ของแต่ละประเทศ</label><br>
    <table border=1 class="table table-white table-striped table-hover">
        <tr class ="table-dark">
            <!-- <td>id</td> -->
            <td>ประเทศ</td>
            <td>จำนวน</td>
        </tr>
        <?php 
        foreach ($Country as $C) {
            echo    "<tr>
                    <td>$C->type</td>
                    <td>$C->quantity</td>
                    </tr>
                    ";
        }
        ?>  
    </table>
    <br>
    <label >จำนวนชื่อปลดของแต่ละประเทศ</label><br>
    <table border=1 class="table table-white table-striped table-hover">
        <tr class ="table-dark">
            <!-- <td>id</td> -->
            <td>ประเทศ</td>
            <td>จำนวน</td>
        </tr>
        <?php 
        foreach ($Countryin as $Cin) {
            echo    "<tr>
                    <td>$Cin->type</td>
                    <td>$Cin->quantity</td>
                    </tr>
                    ";
        }
        ?>  
    </table>
    </div>
</body>
</html>


