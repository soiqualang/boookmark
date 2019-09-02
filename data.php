<?php
include('config.php');
include('funcs.php');
//include('libs.php');
if(isset($_GET['id'])){
    $id=$_GET['id'];
    //echo '{"content":"Selected: \/root\/dolongstore\/phanmem\/t1.txt","Id":'.$id.'}';

    $nodeid=getElement('fileinfo','nodeid','id',$id,$connection);
    if($nodeid!='nodeid'){
        echo $nodeid;
    }else{
        echo 'Chua nhap thong tin';
    }

}else{
    echo 'File khong ton tai';
}
?>