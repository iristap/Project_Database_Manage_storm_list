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

    <div class="btn-group" role="group" aria-label="Basic mixed styles example">
    <form method="get" action="">
        <div class="input-group mb-3">
            <input class="form-control me-2"type="Search" name="key" placeholder="Search" aria-label="Search">
            <input type="hidden" name="controller" value="StormNameInactive"/>
            <button class="btn btn-outline-success" type="submit" name="action" value="search">search</button>
        </div>
    </form>
    </div>
  
    <table border=1 class="table table-white table-striped table-hover">
        <tr class ="table-dark">
            <!-- <td>id</td> -->
            <td>ชื่อ(ไทย)</td>
            <td>ชื่อ(อังกฤษ)</td>
            <td>ประเทศ</td>
            <td>column</td>
            <!-- <td>ความหมาย</td>
            <td>วันที่เริ่มใช้งาน</td> -->
            <td>วันที่เริ่มเลิกใช้งาน</td>
            <td>รายละเอียดเพิ่มเติม</td>
            <td>แก้ไขข้อมูล</td>
            <td>ลบ</td>
            
        </tr>
        <!-- <td>$list->meaning</td>
                    <td>$list->datestart</td>
                    <td>$list->dateend</td> -->
        <?php 
        foreach ($StormNameList as $list) {
            echo    "<tr>
                    
                    <td>$list->nameth</td>
                    <td>$list->nameeng</td>
                    <td>$list->country</td>
                    <td>$list->column</td>
                    <td>$list->dateend</td>
                    <td>
                    <a class='btn btn-outline-primary me-2' href=?controller=StormNameInactive&action=detail&id=$list->id>รายละเอียด</a>
                    </td>
                    <td>
                    <a class='btn btn-primary' href=?controller=StormNameInactive&action=updateform&id=$list->id>แก้ไข</a>
                    </td>
                    <td>
                    <a class='btn btn-danger' href=?controller=StormNameInactive&action=delete&id=$list->id onclick=\"return confirm('ยืนยันการลบข้อมูล ??');\" >ลบ</a>
                    </td>
                    </tr>";
        }
        ?>  
    </table>
    </div>
</body>
</html>


