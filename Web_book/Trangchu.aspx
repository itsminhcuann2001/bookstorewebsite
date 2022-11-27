<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Web_book.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="Style/Trangchu.css" rel="stylesheet" />
    <link href="Style/Base.css" rel="stylesheet" />
</head>
<body>
    
        <div class="header">
        <a href="Trangchu.aspx">
            <img width="200" src="images/Logo.png" title="Logo"/>
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
    
    <div class="banner">
		<!--<div class="noidung_banner">
				<h2>Mona Watch</h2>
				<h1>Đồng hồ Classio</h1>
				<p>Cùng với sự phát triển không ngừng của thời trang thế giới, rất nhiều thương hiệu cho ra đời những mẫu đồng hồ nam chính hãng đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ…</p>
		</div>-->
		<img id="img" src="images/banner3.png" width="auto"/>
	</div>
    <!--Danh muc-->
    <div class="grid">
        <div class="grid_row">
            <div class="danhmuc">
                <h3>Sách mới</h3>     
            </div>
        </div>
    </div>
    <!--Layout san pham 10 cot-->
    <div class="grid">
        <div class="grid_row">
            <asp:ListView ID="sanpham" runat="server">
				<ItemTemplate>
            <div class="grid_col2">               
                <a class="sanpham" href="Trangchitiet.aspx?id=<%# Eval("Id") %>">
                    <div class="sanpham_img" style="background-image:url(<%# Eval("Images") %>)" title="sach"></div>
                    <h4 class="sanpham_name"><%# Eval("Name") %></h4>
                    <div class="sanpham_gia">
                        <span class="sanpham_price"><%# Eval("Price") %></span>
                    </div>
                </a>
            </div>
                  </ItemTemplate>
			    </asp:ListView>  
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
            </div>
        </footer>
    
</body>
</html>
