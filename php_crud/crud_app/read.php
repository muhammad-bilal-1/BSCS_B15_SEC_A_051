<?php


include 'connect.php';

    $query=  $conn-> query("SELECT * FROM data");
    $result=array();
    while($rowData=$query->fetch_assoc()){
        $result[]=$rowData;
        
    }

    echo json_encode($result);
?>
