<?php
include('config.php');
include('funcs.php');
//include('libs.php');
if(isset($_GET['id'])){
    $id=$_GET['id'];
    //echo '{"content":"Selected: \/root\/dolongstore\/phanmem\/t1.txt","Id":'.$id.'}';
    
}else{
    echo 'File khong ton tai';
}
?>