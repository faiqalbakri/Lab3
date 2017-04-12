<?php
header("Content-type:text/xml");
header("Access-Control-Allow-Origin: *");

$dbconn = mysqli_connect("localhost", "root", "", "lab3");
mysqli_select_db($dbconn, "lab3");
$query = mysqli_query($dbconn, "select * from labpunyatable");

// Create SimpleXMLElement instance.
$xml = new SimpleXMLElement('<list/>');
while ($row = mysqli_fetch_assoc($query)) {
     $product = $xml->addChild("product");
     $product->addChild("pId", $row["id"]);
     $product->addChild("image", htmlspecialchars($row["img"]));
     $product->addChild("title", htmlspecialchars($row["title"]));
     $product->addChild("description", htmlspecialchars($row["description"]));
     $product->addChild("price", $row["price"]);
     $product->addChild("discount", $row["discount"]);
}

mysqli_close($dbconn);
echo $xml->asXML();
?>