
<html>
<head>
  
</head>

<body>


<?php

$connect_DB = mysqli_connect('127.0.0.1','hw3','apple','hw3');

if($connect_DB){

}
else{
   echo 'false';
   exit();

}
$flag = mysqli_select_db($connect_DB,'hw3');

if($flag){
}
else{
   echo 'false!';
   exit();
}
mysqli_query($connect_DB,"SET NAMES 'utf8'");

$sql = "select * from phone";

$result = mysqli_query($connect_DB,$sql);
$result_sec = [];





while($row = mysqli_fetch_array($result,MYSQLI_NUM)){
   $result_sec[] = $row;
   
}
print'<table  cellpadding="8" border = 1>';
print '<tr>';
    print '<td align="center"><font size="5">IMEI</font></td>';
    print '<td align="center"><font size="5">name</font></td>';
    print '<td align="center"><font size="5">phone</font></td>';
    print '</tr>';
foreach($result_sec as $key => $value){
     
    $value[0] = str_pad($value[0],14,"0",STR_PAD_LEFT);
    $value[2] = str_pad($value[2],10,"0",STR_PAD_LEFT);
    print '<tr>';
    print '<td align="center"><font size="5">'.$value[0].'</font></td>';
    print '<td align="center"><font size="5">'.$value[1].'</font></td>';
    print '<td align="center"><font size="5">'.$value[2].'</font></td>';
    print '</tr>';

}

?>	

</body>
</html>

<style>
table{
margin-left:auto; 
margin-right:auto;

}

html {
      height: 100%;
      weidth: 100%;
}

body {
      background-image: url(bg1.jpg);
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-position: center;
      background-size: cover;
}
</style> 