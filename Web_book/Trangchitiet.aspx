<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchitiet.aspx.cs" Inherits="Web_book.Trangchitiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chi tiết</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Style/Base.css"/>
    <link rel="stylesheet" href="Style/Trangchitiet.css"/>
</head>
<body>
    <form id="form1" runat="server">
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
    
    <!--Layout san pham 10 cot-->
<div class="grid">
    <asp:ListView ID="ListViewProductinformation" runat="server" >
			<ItemTemplate>
    <div class="grid_row">
        <div class="body1">
            <img src="<%# Eval("Images") %>" alt="sach">
        </div>
        <div class="body2">
            <div class="sach_name"><h2><%# Eval("Name") %></h2></div>
            <div class="sach_gia"><h3><%# Eval("Price") %></h3></div>
            <div class="sach_tieudemota"><h3>Mô tả sản phẩm</h3></div>
            <div class="sach_noidungmota"><p><%# Eval("Detail") %></p></div>
            
            </ItemTemplate>
	</asp:ListView>
    <p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
            <button class="btn_datmua" type="submit" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton">Đặt mua</button>
        </div>
              
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
 
    </form>
</body>
</html>
