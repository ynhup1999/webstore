<?php
	include_once("Model/Category.php");
	$cate = new Category();
	include_once("View/Category/Insert.php");
	if(isset($_POST['btnSave']))
	{
		$categoryName = $_POST['txtCategoryName'];
		$position = $_POST['txtPosition'];
		if($categoryName != "" && is_numeric($position))
		{
			$ret=$cate->InsertCategory($categoryName,$position);
			if($ret>0)
			{
				header("location:adminManager.php?mod=category&act=manage");
			}
			else
				echo "<p class=\"error\">Thêm bị lỗi</p>";
		}
		echo "<p class=\"error\">Dữ liệu không hợp lệ</p>";
	}
?>