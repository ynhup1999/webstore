<div>
<h2><span><a href="#">Sửa giỏ hàng</a></span></h2>
<p>
	<form method="post" action="index.php?mod=cart&act=edit&id=<?php echo $id; ?>" class="form" onSubmit="return IsEditCart()">
    	<p><label>Sản phẩm</label><input type="text" name="txtProduct" id="txtProduct" value="<?php echo $productName; ?>" readonly="readonly" /></p>
        <p><label>Số lượng</label><input type="text" name="txtQuantity" id="txtQuantity" value="<?php echo $quantity; ?>" ></p>
        <p><label>&nbsp;</label><input type="submit" name="btnSave" id="btnSave" value="Lưu thay đổi" /></p>
        <p id="error" class="error"></p>
    </form>
</p>
</div>