<div>
	<h2><span><a href="index.php?mod=user&act=login">Đăng nhập hệ thống</a></span></h2>
     <p>
     <form method="post" action="index.php?mod=user&act=login" onsubmit="return IsLogin();" class="form">
        <p><label>Tên đăng nhập</label><input type="text" name="txtUserName" id="txtUserName" /></p>
        <p><label>Mật khẩu</label><input type="password" name="txtPassWord" id="txtPassWord" /></p>
        <p><label>&nbsp;</label><input type="submit" name="btnLogin" id="btnLogin" value="Đăng nhập" /></p>
        <p id="error"></p>
    </form>
     </p>
</div> 
</div>