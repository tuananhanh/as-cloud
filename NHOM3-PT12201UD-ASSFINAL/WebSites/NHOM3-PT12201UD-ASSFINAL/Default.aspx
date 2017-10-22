<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
<!--Home page style-->
<header class="home-bg">
	<div class="overlay-img">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="header-details">
						<h1><b>FPT SHOP</b><br>Điện thoại di động chính hãng</h1>
						<p>Khẳng định phong cách phái mạnh</p>
						<a class="btn btn-danger" href="shop.aspx">XEM NGAY</a>
					</div>
				</div>
			</div>
		</div>
	</div>	
    </header>
    <!-- Sections -->
    <section id="promotion-area" class="sections">
        <div class="container">
            <!-- Example row of columns -->
            <div class="row">
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>SẢN PHẨM<i class="fa fa-circle"></i></h1>
					<p>Bán điện thoại chính hãng Samsung, iPhone, Oppo, ... luôn có khuyến mãi lớn, trả góp lãi suất thấp 0%, giao hàng tận nơi trong 30 phút, 1 đổi 1 trong 1 tháng.</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>ĐANG SALE<i class="fa fa-circle"></i></h1>
					<p>* Giảm ngay 1,5 triệu (chỉ áp dụng cho các đơn hàng đặt và nhận hàng trong ngày 13/10 - 15/10) <br />*
Miếng dán màn hình (Nếu không có quà sẽ hoàn 56,000đ)</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="promotion">
						
					<h1>ĐANG HOT<i class="fa fa-circle"></i></h1>
					<p> Những Sản Phẩm Hot Nhất Hiện Nay</p>
					<a href="shop.aspx"><h4>Xem Ngay<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						
					</div>
				</div>

            </div>
        </div> <!-- /container -->       
    </section>
    <section id="portfolio-area" class="sections">
            <div class="container">
                <!-- Example row of columns -->
                <div class="row">
					<div class="col-sm-6 col-sm-12 col-xs-12">
						<div class="portfolio">
							<img src="/images/computer.jpg" alt="">
						</div>
					</div>
					
					<div class="col-sm-5 col-sm-12 col-xs-12">
						<div class="portfolio">
						
						<div class="item">
						<h1>FPT SHOP APP<i class="fa fa-circle"></i></h1>
						<h5>Ứng dụng mua hàng FPT SHOP tiện ích</h5>
						<p>Bạn muốn mua hàng FPT SHOP nhanh chóng và dễ dàng nhất</p>
						<p>Hãy sử dùng ngay ứng dụng FPT SHOP APP trên điện thoại thông minh của bạn.</p>
						<a href="#"><h4>TẢI VỀ<span><i class="fa fa-long-arrow-right"></i></span></h4></a>
						</div>
						
						</div>
					</div>

                </div>
            </div> <!-- /container -->       
        </section>
    <section id="our-team" class="sections">
        <div class="container">
            <!-- Example row of columns -->
            <div class="row">
					<div class="team-heading">
						<h1>Tin Công Nghệ<i class="fa fa-circle"></i></h1>
						
					</div>
				
			<div class="team-member">
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
						<a href="#"><img src="/images/news-1.jpg" width="150" width="150" alt=""></a>
						<div class="team-info">
							<a href="#"><small>OPPO F5 bất ngờ xuất hiện tại Việt Nam thông qua MV* của Noo?</small></a>
						</div>
					</div>	
				</div>
					
				<div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
						<img src="/images/news-2.jpg" width="150" width="150" alt="">
						<div class="team-info">
							<small>Huawei Honor 6C Pro ra mắt: RAM 3GB, ROM 32GB, Android 7 & pin khỏe</small>
						</div>
					</div>	
				</div>
                <div class="col-sm-4 col-sm-12 col-xs-12">
					<div class="team">
						<a href="#"><img src="/images/news-1.jpg" width="150" width="150" alt=""></a>
						<div class="team-info">
							<a href="#"><small>OPPO F5 bất ngờ xuất hiện tại Việt Nam thông qua MV* của Noo?</small></a>
						</div>
					</div>	
				</div>
			
					
				

                
					
			</div>	
					
			</div>
                
        </div> <!-- /container -->       
    </section>
</asp:Content>
