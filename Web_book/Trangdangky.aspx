<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangdangky.aspx.cs" Inherits="Web_book.Trangdangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dang ky</title>
    <link rel="stylesheet" href="Style/Trangdangky.css">
    <link rel="stylesheet" href="Style/Base.css">
</head>
<body>
    <div class="header">
        <a href="Trangchu.aspx">
            <img width="200"  src="images/Logo.png" title="Logo"/>
        </a>
        <div id="login" class="login" runat="server">
            <p class="user"></p>
            <a href="Trangdangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
        </div>	
    </div>

    <div class="menu" id="menu">
        <ul>
            <li><a href="Trangchu.aspx">Trang chủ</a></li>
            <li><a href="gioithieu.aspx">Giới thiệu</a></li>
            <li><a href="donghonam.aspx">Sách</a></li>
            <li><a href="donghonu.aspx">Truyện</a></li>
            <li><a href="Lienhe.aspx">Liên hệ</a></li>
            <li><a href="Giohang.aspx">Giỏ hàng</a></li>
        </ul>
    </div>


    <!--Form dang ky-->
    <div class="grid">
        <div id="reg-form" class="auth">
                    <form action="Trangdangky.aspx" method="post" runat="server">
                    <div class="auth__header">
                        <h2>Đăng ký</h2>
                        <a href="Trangdangnhap.aspx">Đăng nhập</a>
                    </div>
                    <div class="auth__form">
                        <div class="form-control">
                            <label for="username">Tên đăng nhập</label>
                            <input type="text" id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                            <p runat="server" id="username_error"></p>
                        </div>
                        <div class="form-control">
                            <label for="email">Email</label>
                            <input type="text" id="email" placeholder="abcd@gmail.com" name="email"/>
                            <p></p>
                        </div>
                        <div class="form-control">
                            <label for="password">Mật khẩu</label>
                            <input type="password" id="password" placeholder="Nhập mật khẩu" name="password"/>
                            <p></p>
                        </div>
                        <div class="form-control">
                            <label for="re-password">Xác nhận mật khẩu</label>
                            <input type="password" id="re-password" placeholder="Nhập lại mật khẩu" name="re-password"/>
                            <p></p>
                        </div>
                        <p runat="server" id="btn_error" style="color:red"></p>
                        <button class="auth_btn" id="btnReg">Đăng ký</button>
                    </div>
                    </form>
                </div>
            
        </div>

    <!--Footer-->
     <footer class="footer">
        <div class="grid">
            <div class="grid_row">
                
                    <div class="grid_col2">
                        <h4 class="footer_heading">Chăm sóc khách hàng</h4>
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a href="" class="footer_item1">Trung tâm trợ giúp</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Hướng dẫn mua hàng</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Thanh toán và Hoàn hàng</a>
                            </li>
                        </ul>

                    </div>
                    <div class="grid_col2">
                        <h3 class="footer_heading">Giới thiệu</h3>
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a href="" class="footer_item1">Giới thiệu về shop</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Tuyển dụng</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Chính sách bảo mật</a>
                            </li>
                        </ul>

                    </div>
                    <div class="grid_col2">
                        <h3 class="footer_heading">Đơn vị vận chuyển</h3>
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a href="" class="footer_item1">GHTK</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Giao hàng nhanh</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">VN Post</a>
                            </li>
                        </ul>

                    </div>
                    <div class="grid_col2">
                        <h3 class="footer_heading">Theo dõi</h3>
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a href="" class="footer_item1">Facebook</a>
                            </li>
                            <li class="footer_item">
                                <a href="" class="footer_item1">Instagram</a>
                            </li>
                           
                        </ul>

                    </div>
                    <div class="grid_col2">
                        <h3 class="footer_heading">Quốc gia</h3>
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a href="" class="footer_item1">Việt Nam</a>
                            </li>
                           
                        </ul>

                    </div>
                </div>
                <div class="grit_row">
                    <div class="banquyen"><p>© 2022 Bản quyền thuộc về nhóm Alpha.</p></div>
                </div>
            </div>
        
    </footer>    
</body>
</html>
