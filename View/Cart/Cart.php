<div class="shopping-item mx-4">
	<a href="index.php?mod=cart&act=detail" id="btnGioHang"><span class="cart-amunt"></span> <i class="fa fa-shopping-cart"></i>

	<?php
		if(isset($_SESSION['mycart'])){
			$sum=0;
			foreach($_SESSION["mycart"] as $item)
			{
				$sum+=$item;
			}
			echo "<span class=\"product-count\" id=\"soluongmonhang\">".count($_SESSION["mycart"])."</span></a>";
		}
		else{
			echo "<span class=\"product-count\" id=\"soluongmonhang\">"."0"."</span></a>";
		}
	?>
</div>