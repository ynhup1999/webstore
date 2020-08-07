 // JavaScript Document
 function $(name){
	return document.getElementById(name);
}
function Trim(name){
	var left = /^\s+/;
	var right = /\s+$/;
	name.value=name.value.replace(left,'').replace(right,'');
}
function IsNull(name){
	name2=$(name);
	Trim(name2);
	if(name2.value==''){
		name2.focus();
		return true;
	}
	return false;
}
function IsEmail(name){
	reg1=/^[0-9A-Za-z]+[0-9A-Za-z_]*@[\w\d.]+.\w{2,4}$/;
    testmail=reg1.test($(name).value);
	return testmail;
}
function IsDelete(){
	return confirm("Bạn có chắc muốn xóa không");
}
function IsLogin(){
	if(IsNull("txtUserName")){
		$("error").innerHTML="Vui lòng nhập tên đăng nhập";
		return false;
	}
	if(IsNull("txtPassWord")){
		$("error").innerHTML="Vui lòng nhập mật khẩu";
		return false;
	}
	return true;
}
function IsRegister(){
	if(IsNull("txtFullName")){
		$("error").innerHTML="Vui lòng nhập tên";
		return false;
	}
	if(IsNull("txtUserName")){
		$("error").innerHTML="Vui lòng nhập tên đăng nhập";
		return false;
	}
	if(IsNull("txtPassWord")){
		$("error").innerHTML="Vui lòng nhập mật khẩu";
		return false;
	}
	if(IsNull("txtPrePass")){
		$("error").innerHTML="Vui lòng nhập mật khẩu";
		return false;
	}
	if($("txtPassWord").value!=$("txtPrePass").value){
		$("error").innerHTML="Mật khẩu xác nhận không đúng";
		return false;
	}
	if(IsNull("txtEmail")){
		$("error").innerHTML="Vui lòng nhập email";
		return false;
	}
	if(!IsEmail("txtEmail"))
	{
		$("error").innerHTML="Email không hợp lệ";
		return false;
	}
	return true;
}
function IsAddCategory(){
	if(IsNull("txtCategoryName")){
		$("error").innerHTML="Vui lòng nhập tên thể loại";
		return false;
	}
	return true;
}
function IsChangePass()
{
	if(IsNull("txtOldPass")){
		$("error").innerHTML="Vui lòng nhập mật khẩu cũ";
		return false;
	}
	if(IsNull("txtPass")){
		$("error").innerHTML="Vui lòng nhập mật khẩu mới";
		return false;
	}
	if(IsNull("txtPrePass")){
		$("error").innerHTML="Vui lòng xác nhận mật khẩu";
		return false;
	}
	if($("txtPass").value!=$("txtPrePass").value){
		$("error").innerHTML="Mật khẩu xác nhận không đúng";
		return false;
	}
	return true;
}
function IsUpdateUser()
{
	if(IsNull("txtFullName")){
		$("error").innerHTML="Vui lòng nhập tên";
		return false;
	}
	if(IsNull("txtEmail")){
		$("error").innerHTML="Vui lòng nhập email";
		return false;
	}
	if(!IsEmail("txtEmail"))
	{
		$("error").innerHTML="Email không hợp lệ";
		return false;
	}
	return true;
}
function IsInsertOrder()
{
	if(IsNull("txtAddress")){
		$("error").innerHTML="Vui lòng nhập địa chỉ";
		return false;
	}
	if(IsNull("txtPhone")){
		$("error").innerHTML="Vui lòng nhận số điện thoại";
		return false;
	}
	dienThoai=$("txtPhone");
	if(isNaN(dienThoai.value)){
		dienThoai.focus();
		$("error").innerHTML="Số điện thoại không hợp lệ";
       	return false;
    }
	return true;
}
function IsEditCart()
{
	if(IsNull("txtQuantity"))
	{
		$("error").innerHTML="Vui lòng nhận số sản phẩm";
		return false;
	}
	quantity=$("txtQuantity");
	if(isNaN(quantity.value)){
		quantity.focus();
		$("error").innerHTML="Số lượng sản phẩm không hợp lệ";
       	return false;
    }
	if(quantity.value<1)
	{
		quantity.focus();
		$("error").innerHTML="Số lượng sản phẩm phải lớn hơn 0";
       	return false;
	}
	return true;
}

function insertCart(id) {
    var xmlhttp = new XMLHttpRequest();
    var url="Controller/Cart/Add.php?id="+id+"&cache="+parseInt(Math.random()*10000);
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("soluong").innerHTML = this.responseText;
        }
    }
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
    return false;
}