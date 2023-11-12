<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class = "container">
    <div class = "container">

    <a class="btn btn-success" href=?controller=Country&action=newcountry&id>เพิ่ม</a><br>
    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
    <form method="get" action="">
        <div class="input-group mb-3">
            <input class="form-control me-2"type="Search" name="key" placeholder="Search" aria-label="Search">
            <input type="hidden" name="controller" value="Country"/>
            <button class="btn btn-outline-success" type="submit" name="action" value="search">search</button>
        </div>
    </form>
    </div>


    <table border=1 class="table table-white table-striped table-hover">
        <tr class ="table-dark">
            <td>countryname</td>
            <td>แก้ไขข้อมูล</td>
            <td>ลบ</td>
        </tr>

        <?php foreach ($CountryList as $list) {
            echo    "<tr>
                    <td>$list->namecountry</td>
                    <td>
                    <a class='btn btn-primary' href=?controller=Country&action=updateform&id=$list->idcountry>แก้ไข</a>
                    </td>
                    <td>
                    <a class='btn btn-danger' href=?controller=Country&action=delete&id=$list->idcountry onclick=\"return confirm('ยืนยันการลบข้อมูล ??');\" >ลบ</a>
                    </td>
                    </tr>";
        }
        ?>  
    </table>
    </div>
</body>
</html>


