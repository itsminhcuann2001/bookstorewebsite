<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="Web_book.Giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giohang</title>
    <link rel="stylesheet" href="Style/Giohang.css">
    <link rel="stylesheet" href="Style/Base.css">
</head>
<body>
    <body>
    <div class="header">
        <a href="Trangchu.aspx">
            <img width="200"  src="images/Logo.png" title="Logo"/>
        </a>
        <div id="login" class="login" runat="server">
            <p class="user"></p>
            <!--<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>-->
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

    <!--Giỏ hàng-->
    <div class="grid">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Tác vụ</th>
						</tr>
			<asp:ListView ID="ListViewCart" runat="server">
				<ItemTemplate>
						<tr>
							<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
							<td><p><%# Eval("Name") %></p></td>
							<td><p><%# Eval("Price") %> đồng</p></td>
							<td><a href="Xoagiohang.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">Xóa</button></a></td>
						</tr>
				</ItemTemplate>
			</asp:ListView>
			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Đơn hàng<br></h2>
                    <div class="cart__products-total-price">
                        <p>Tổng tiền sản phẩm</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!--<div class="cart__delivery-price">
                        <p>Tổng phí giao hàng</p>
                        <p runat="server" id="delivery_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <hr>--->
                    <div class="cart__order-total">
                        <p>Tổng cộng: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <!-----<hr>--->
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Thanh toán</button>
                    </div>
                </div>
		</div>
	</div>
    <!--------------------------------------------------------------------------------------------------------------------------------->
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
