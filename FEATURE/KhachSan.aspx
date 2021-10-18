<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="KhachSan.aspx.cs" Inherits="FEATURE_KhachSan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <title> Khách sạn</title>
   
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
   <div class="container-fluid" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
    <!-- Carousel -->
<div id="slides" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#slides" data-slide-to="0" class="active"></li>
		<li data-target="#slides" data-slide-to="1"></li>
		<li data-target="#slides" data-slide-to="2"></li>		
		<li data-target="#slides" data-slide-to="3"></li>
	</ul>
	<div class="carousel-inner">
		<div class="carousel-item active">
            <img src="../IMAGES/vinpearl-uu-dai-doc-quyen-6046d8624b0e7.jpg" />
			
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/resort-gan-ha-noi-60e57c7565789.jpg" />
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/voucher-flc-60bd9ab26b51f.jpg" />
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/resort-gan-ha-noi-60e57c7565789.jpg" />
		</div>
	</div>
</div>
        
    <form id="Form1" runat="server">
        <div class="container" style="width:451px; border:1px solid black; margin-top:10px; border-radius:10px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding-bottom:10px; height: 153px;">
            <h4 >Tìm kiếm khách sạn giá rẻ</h4>
            <hr style="margin-top:-5px;" />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="430px" CssClass="align-items-md-center" align="center" ToolTip="chọn điểm đến của bạn" Height="24px">
             <asp:ListItem Selected="True" >Điểm Đến</asp:ListItem>
                    <asp:ListItem>Nha Trang</asp:ListItem>
                    <asp:ListItem>Quy Nhơn</asp:ListItem>
                    <asp:ListItem>Hạ Long</asp:ListItem>
                    <asp:ListItem>Phú Quốc</asp:ListItem>
                    <asp:ListItem>SaPa</asp:ListItem>
        </asp:DropDownList>
            <asp:CheckBox ID="cb_all" runat="server" AutoPostBack="True" OnCheckedChanged="cb_all_CheckedChanged" Text="hiển thị tất cả" />
           
            <br />
            Số người<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">

        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Button ID="btn_timkiem" runat="server" CssClass="btn btn-warning buttoncanle" OnClick="btn_timkiem_Click" Text="Tìm Kiếm" />
                <asp:TextBox ID="txt_dem" runat="server" Width="59px" Enabled="False"></asp:TextBox>
                <asp:Button ID="bnt_cong" runat="server" Text="+" Width="35px" OnClick="bnt_cong_Click" />
                 <asp:Button ID="btn_tru" runat="server"  Text="-" Width="35px" OnClick="btn_tru_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        
            <br />
        </div>
        </form>

    <div class="container-fluid padding">
	<div class="row welcome text-center">
		<div class="col-12">
			<h1 class="display-4" style="color:black; font-size:26px;"><strong>Deal khách sạn HOT</strong></h1>
		</div>
		<!-- Horizontal Rule -->
		
		<div class="col-12">
			<p style="font-size:15px;">Nhanh tay săn ngay những deal khách sạn HOT độc quyền chỉ có tại bét pờ rai pờ lút </p>
		</div>
	</div>
</div>
    <div class="container-fluid padding">
	<div class="row text-center padding" style="max-width:790px; margin:auto;">
		<div class="col-xs-12 col-sm-6 col-md-4 ">
            <a href="#"><img src="../IMAGES/khach-san-home-ad-01-611f65cad507c.jpg" /></a>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-4">
			<a href="#"><img src="../IMAGES/khach-san-home-ad-01-611f65cad507c.jpg" /></a>
		</div>
		<div class="col-sm-12 col-md-4">
            <a href="#"><img src="../IMAGES/khach-san-home-ad-01-611f65cad507c.jpg" /></a>
		</div>
	</div>	
	<hr class="my-4" style="width:85%;margin-bottom:2em; margin:auto;"/>	
</div>
    <div class="container-fluid padding">
	<div class="row text-center">
		<div class="col-12">
			<h3 class="display-4" style="color:black; font-size:26px;">Khám phá các chủ đề hấp dẫn</h3>
		</div>
		<!-- Horizontal Rule -->
		
		<div class="col-12">
			<p style="font-size:15px;"> Xem ngay những chủ đề khách sạn hấp dẫn đang được nhiều du khách quan tâm nhất! </p>
		</div>
	</div>
</div>
  <!-- Carousel -->
<div id="Div1" class="carousel slide" data-ride="carousel">
	<ul class="carousel-indicators">
		<li data-target="#slides" data-slide-to="0" class="active"></li>
		<li data-target="#slides" data-slide-to="1"></li>
		<li data-target="#slides" data-slide-to="2"></li>		
		<li data-target="#slides" data-slide-to="3"></li>
	</ul>
	<div class="carousel-inner">
		<div class="carousel-item active">
            <img src="../IMAGES/khach-san-nghi-duong-gan-ha-noi-6090aa8bd1748.jpeg" style="border-radius:5px;"/>
            <div class="carousel-caption d-none d-md-block">
                <h3>Khách sạn nghỉ dưỡng Gần Hà nội</h3>
                 <h4>Xem ngay</h4>
            </div>
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/khach-san-nghi-duong-gan-hcm-6090aac3bdd7f.jpeg" style="border-radius:5px;"/>
            <div class="carousel-caption d-none d-md-block">
                <h3>Khách sạn nghỉ dưỡng Gần <br>Thành Phố Hồ Chí Minh</br></h3>
                 <h4>Xem ngay</h4>
            </div>
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/khach-san-nghi-le-quoc-khanh-29-6090ab2e82484.jpeg" style="border-radius:5px;"/>
            <div class="carousel-caption d-none d-md-block">
                <h3>Khách sạn nghỉ dưỡng Ngày Lễ 2/9</h3>
                 <h4>Xem ngay</h4>
            </div>
		</div>
		<div class="carousel-item">
            <img src="../IMAGES/khach-san-nghi-duong-gan-ha-noi-6090aa8bd1748.jpeg" style="border-radius:5px;"/>
            <div class="carousel-caption d-none d-md-block">
                <h3>Khách sạn nghỉ dưỡng Gần Hà nội</h3>
                 <h4>Xem ngay</h4>
            </div>
		</div>
	</div>
     <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <!-- Horizontal Rule -->
		<hr style="width:85%;  margin-bottom:2em; margin:auto; margin-top:10px;"/> 
    <div class="container-fluid">
	<div class="row padding">
		<div class="col-md-12 col-lg-6" style="margin-top:10px;">
            <h2 style="padding: 20px; margin-left:20px;"><b>Điểm đến trong nước nổi bật</b></h2>
			<p style="padding: 20px; margin-left:20px;">Cơ hội đặt phòng khách sạn tại những điểm đến trong nước nổi bật, được nhiều du khách lựa chọn với giá tốt nhất.<a href="#" style="color:red;" class="a_hover">Khám phá ngay!
</a> 

            </p>
			<br/>
		</div>
		<div class="col-lg-6">
           <div class="container">
  <div class="row" style="border: 10px solid white;">
      
    <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4 col-sm-4 col-xs-4 imagesize" >
        <img src="../IMAGES/nha-trang-6062d50fd4916-476x476.jpg" style="border-radius:10px;" title="Nha Trang"/> <figcaption class="canle">Nha Trang</figcaption>
    </a>
          
    <a href="https://unsplash.it/1200/768.jpg?image=252" data-toggle="lightbox" data-gallery="gallery" class="col-md-4  col-sm-4 col-xs-4 imagesize">
        <img src="../IMAGES/phu-quoc-6062d4c77e096-476x476.jpg"style="border-radius:10px;"  title="Phú Quốc"/><figcaption class="canle"> Phú Quốc</figcaption>
    </a>
    
    <a href="https://unsplash.it/1200/768.jpg?image=253" data-toggle="lightbox" data-gallery="gallery" class="col-md-4  col-sm-4 col-xs-4 imagesize">
        <img src="../IMAGES/quy-nhon-6062d568d5375-476x476.jpg"style="border-radius:10px;" title="Quy Nhơn" /><figcaption class="canle">Quy Nhơn</figcaption>
    </a>
  </div>
  <div class="row" style="border: 10px solid white;">
    <a href="https://unsplash.it/1200/768.jpg?image=254" data-toggle="lightbox" data-gallery="gallery" class="col-md-4 col-sm-4 col-xs-4 imagesize">
        <img src="../IMAGES/sapa-60a39553465e7-476x476.png"style="border-radius:10px;" title="Sa Pa" /><figcaption class="canle">Sa Pa</figcaption>
    </a>
    <a href="https://unsplash.it/1200/768.jpg?image=255" data-toggle="lightbox" data-gallery="gallery" class="col-md-4   col-sm-4 col-xs-4 imagesize">
        <img src="../IMAGES/ha-long-6062d7e697fae-476x476.jpg"style="border-radius:10px;" title="Hạ Long" /><figcaption class="canle"> Hạ Long</figcaption>
    </a>
    <a href="https://unsplash.it/1200/768.jpg?image=256" data-toggle="lightbox" data-gallery="gallery" class="col-md-4 col-sm-4 col-xs-4 imagesize">
        <img src="../IMAGES/da-nang-6062d6b1901ef-476x476.jpg"style="border-radius:10px;" title="Đà Nẵng" /><figcaption class="canle">Đà nẵng</figcaption>
    </a>
  </div>
</div>
		</div>
	</div>
</div>
    <div>
    <h4 class="canlechu">Khách Sạn nước ngoài</h4>
    <p class="canlechu">Đừng bỏ lỡ hàng trăm cơ hội đặt khách sạn khuyến mại đến với các vùng đất mơ ước đang chờ đón bạn.
    </p>
   
        </div>
       <div class="container-fluid">
    <div class="row" >
        <div class="col" >
            <a href="#"><img src="../IMAGES/campuchia-5f719edf93b68.jpg" class="imagesize rounded mx-auto d-block" title="Cam Pu Chia"/><figcaption class="canle">CamPuChia</figcaption></a>

        </div>
        <div class="col">
            <a href="#"><img src="../IMAGES/bangkok-543c931b71a67.jpg" class="imagesize rounded mx-auto d-block" /><figcaption class="canle">Băng Cốc</figcaption></a>

        </div>
        <div class="col ">
            <a href="#"><img src="../IMAGES/singapore-5f36602ed5966.jpg" class="imagesize rounded mx-auto d-block" title="singgapore" /><figcaption class="canle">SingGaPore</figcaption></a>

        </div>
        <div class="col ">
            <a href="#"><img src="../IMAGES/thai-lan-5f36610f951cf.jpg"class="imagesize rounded mx-auto d-block"  /><figcaption class="canle">Thái Lan</figcaption></a>
                </div>
    </div>
           </div>
    <div class="container">
        <div class="horizontal-line">
        <h3 style="margin-top:10px;">Khách sạn theo địa điểm</h3>
            </div>
        <div class="row">
            <h5><b> Khách Sạn trong nước</b></h5>
            <div class="col"><a href="#" class="a_hover"><p>Khách sạn Phú Quốc</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Quy Nhơn</p></a>
                <a href="#" class="a_hover"><p>Khách Sạn Phan Thiết</p></a>
            </div>
            <div class="col">
                <a href="#" class="a_hover"><p>Khách sạn Nha Trang</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Hạ Long</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Hà Nội</p></a>
            </div>
             <div class="col">
                 <a href="#" class="a_hover"><p>Khách sạn đà Nẵng</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Hội An</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Hồ Chí Minh</p></a>
            </div>
             <div class="col">
                 <a href="#" class="a_hover"><p>Khách sạn SaPa</p></a>
                <a href="#" class="a_hover"><p>Khách sạn Đà Lạt</p></a>
                
            </div>
        </div>
    </div>
    <hr class="my-4" style="width:85%;margin-bottom:2em; margin:auto;" />
      <div class="container">
        <div class="row">
            <h5><b> Khách Sạn Nước Ngoài</b></h5>
            <div class="col"><a href="#" class="a_hover"><p>Khách sạn Singapore</p></a>
               
            </div>
            <div class="col">
                <a href="#" class="a_hover"><p>Khách sạn Thái Lan</p></a>
                
            </div>
             <div class="col">
                 <a href="#" class="a_hover"><p>Khách sạn Bangkok</p></a>  
            </div>
           
        </div>
    </div>
     <hr class="my-4" style="width:85%;margin-bottom:2em; margin:auto;" />
      <div class="container">
        <div class="row">
            <h5><b>Chủ đề Khách Sạn </b></h5>
            <div class="col">
                <a href="#" class="a_hover"><p>Resort gần Hà Nội</p></a>
               <a href="#" class="a_hover"><p>Khách sạn Hot 30/4</p></a>
            </div>
            <div class="col">
                <a href="#" class="a_hover"><p>Resort nghỉ dưỡng gần HCM</p></a>
                
            </div>
             <div class="col">
                 <a href="#" class="a_hover"><p>Khách sạn dành cho cặp đôi</p></a>  
            </div>
           <div class="col">
                 <a href="#" class="a_hover"><p>Khách sạn tốt Lễ Quốc khánh 2/9</p></a>  
            </div>
        </div>
    </div>

<hr />
</div>
   
</asp:Content>

