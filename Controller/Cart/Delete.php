<?php
	if(isset($_SESSION["mycart"]) && isset($_GET["id"]))
	{
		$id=(int)$_GET["id"];
		include_once("Model/Cart.php");
		Cart::DeleteCart($id);
		header("location:index.php?mod=cart&act=detail");
	}
?>