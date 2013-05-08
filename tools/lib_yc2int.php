<?php


class tools {

function lihat_discount_bertingkat($pelanggan)
{

mysql_connect("localhost", "accounting", "sumurbening") or die(mysql_error());
mysql_select_db("newaccounting") or die(mysql_error());

$result = mysql_query("SELECT disc1,disc2,disc3 FROM debtors_master where name=\"$pelanggan\"")
or die(mysql_error());
$row = mysql_fetch_array( $result );



$discount_bertingkat="$row[disc1]+$row[disc2]+$row[disc3] %";


return $discount_bertingkat;



}

}

?>
