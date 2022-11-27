using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Web_book
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //tk mac dinh
            Application["Users"] = new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("thanhnam", "thanhnam@gmail.com", "thanhnam", "thanhnam"));
            Users.Add(new NguoiDung("dung", "dung@gmail.com", "dung", "dung"));
            Users.Add(new NguoiDung("nguyenhuy", "nguyenhuy@gmail.com", "nguyenhuy", "nguyenhuy"));
            Users.Add(new NguoiDung("duyhuy", "duyhuy@gmail.com", "duyhuy", "duyhuy"));
            //sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../images/sach1.jpg", Name = "Thư viện nửa đêm", Price = "89000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "2", Images = "../images/sach2.png", Name = "Một cuốn sách về chủ nghĩa tối giản-Chi Nguyễn", Price = "80000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "3", Images = "../images/sach3.jpg", Name = "Ám ảnh Sợ xã hội (Lý Thế Cường)", Price = "210000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "4", Images = "../images/sach4.jpg", Name = "Làm sạch tâm hồn-NISHI KATSUZO", Price = "70000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "5", Images = "../images/sach5.jpg", Name = "Hiểu về trái tim", Price = "79000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });

            Application["ProductList"] = ProductList;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}