<hr>
<marquee>
	<img src="images/a6.png" style ="height :180px; width : 180px">
	<img src="images/a9.png" style ="height :180px; width : 180px">
	<img src="images/a7.png" style ="height :180px; width : 180px">
	<img src="images/a5.png" style ="height :180px; width : 180px">
	<img src="images/a3.png" style ="height :180px; width : 180px">
	<img src="images/a4.png" style ="height :180px; width : 180px">
	<img src="images/a8.png" style ="height :180px; width : 180px">
</marquee>
<hr>

<div class="main-ver2">
	<div class="fs-ihotslale hsalebotpro">
		<div class="owl-carousel fsihots owl-loaded owl-drag">
			<div class="owl-stage-outer">
				<div class="owl-stage">

<?php
	foreach($rs as $row){
		// $chuoi = <<<EOD
			echo	"<div class=\"owl-item active\" style=\"width: 240px;\">";
			echo	"<div class=\"item center\" style=\"text-align:center\">"	;
			echo		"<p class=\"fs-icimg\">";
			echo			"<img class=\"lazy\" src=\"upload/{$row['ImageUrl']}\" title=\"{$row['ProductName']}\">";
			echo		"</p>";
			echo		"<div class=\"fs-hsif\">";
			echo		"<p><b>{$row['ProductName']}</b></p>";
			echo		"<p class=\"fs-icpri\">Giá: {$row['Price']}đ</p>";
			echo			"<div class=\"button\">";
			echo				"<a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">";
			echo				"<button type=\"button\" class=\"btn btn-dark\" id>Chi tiết</button>";
			echo				"</a>";
			echo 				"<a href=\"Controller/Cart/Add.php?id={$row['ProductID']}\"  onclick=\"return insertCart({$row['ProductID']})\">";
			echo					"<button type=\"button\" class=\"btn btn-dark\" onclick=\"return increase();\">Mua</button>";
			echo				"</a>";
			echo			"</div>";
			echo		"</div>";
			echo	"</div>";
			echo"</div>";				

						// echo $chuoi;
	}
?>
				</div>
			</div>		
		</div>
	</div>
</div>


<?php
	if($findPage>1){
		echo "<div><center>".Pages::PreNext($_GET['page'],"?",$findPage)."</center></div>";
	}
?>