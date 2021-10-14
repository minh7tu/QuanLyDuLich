<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("DatNhaHang.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DatNhaHang.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DatNhaHang.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DatNhaHang.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("DatNhaHang.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    
    <style type="text/css">
        .ndr
        {
            float:left;
        }
        .ndphu
        {
            width: 30%;
            padding:0;
            margin:0 auto;
            float: right;
            font-style: italic;
            background-color:#cbdffa;
            height: 1856px;
        }
        .anhphu1
        {
            height:210px;
            width:200px;
        }
        .auto-style14
        {
            width: 50%;
            border: 1px solid #FF00FF;
            height: 1838px;
        }
        .auto-style15
        {
            width: 258px;
            height: 190px;
        }
        .auto-style16
        {
            text-align: center;
            font-weight: normal;
            color: #FF3300;
        }
        .auto-style17
        {
            width: 250px;
            height: 182px;
        }
        .auto-style18
        {
            height: 182px;
            float:left;
            margin: 0 auto;
            padding:5px 7px 2px 4px;
        }
        .auto-style19
        {
            font-size: medium;
        }
        .vitri
        {
            height:25px;
            width:20px;
        }
        .thia
        {
            height:25px;
            width:20px;
        }
        .dat
        {
            margin:0 auto;
        }
        .auto-style20
        {
            height: 190px;
            float: left;
            margin: 0 auto;
            padding: 4px 7px 2px 4px;
        }
        .auto-style21
        {
            width: 250px;
            height: 184px;
        }
        .auto-style22
        {
            height: 184px;
            float: left;
            margin: 0 auto;
            padding: 5px 7px 2px 4px;
        }
        .auto-style23
        {
            width: 250px;
            height: 185px;
        }
        .auto-style24
        {
            height: 185px;
            float: left;
            margin: 0 auto;
            padding: 5px 7px 2px 4px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <h2 class="auto-style16"><strong><em class="auto-style19">Top 20 Nhà hàng Nổi Tiếng Không thể bỏ qua</em></strong></h2>
    
    
    <table align="left" class="auto-style14">
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/images%20(2).jpg" style="width: 247px; height: 266px;" /></td>
            <td class="auto-style18"><strong>Việt Phố-45,47,49,Lê Quý Đôn</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            45,47,49 Lê Quý Đôn, Hải Sản Tươi Sống Gọi Món Á-Âu<br />
                <asp:Button ID="Button1" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/Sky-View-Restaurant-nha-hang-da-nang.jpg" style="width: 247px; height: 292px;" /></td>
            <td class="auto-style18"><strong>Sky View Restaurant</strong><br />
                 <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            216 Võ Nguyên Giáp, Phước Mỹ, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Buffet,cá hồi, cá ngừ, tôm, sò,… các món chính như mì ý penne, khoai tây bỏ lò, kèm salad,.. Các món ăn tráng miệng <br />
                <asp:Button ID="Button3" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/Square–Novotel-Premier-Han-River-nha-hang-da-nang.jpg" style="width: 247px; height: 329px;" /></td>
            <td class="auto-style18"><strong> The Square – Novotel Premier Han River</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            số Bạch Đằng, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Các món ăn hấp dẫn,Đặc biệt là với thiết kế khu bếp mở bạn sẽ được chiêm ngưỡng tận mắt quá trình làm ra món ăn của các đầu bếp tài năng nhất ở đây<br />
                <asp:Button ID="Button5" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/La-Rive-Gauche-nha-hang-da-nang.jpg" style="width: 247px; height: 433px;" />&nbsp;</td>
            <td class="auto-style18"><strong> La Rive Gauche, Khách sạn Grand Mercure, Khu Đảo Xanh</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
           Lô A1, Khu biệt thự Đảo Xanh, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Buổi sáng có Phở và Bún Bò, Mỳ Quảng và Cao lầu. Khám phá ẩm thực Quảng Đông thì có Dimsum hay thực đơn tự chọn. Đặc biệt ở đây chủ yếu là BBQ nên bạn sẽ được thưởng thức các món ăn từ thịt và hải sản tươi ngon và thượng hạng với mức giá hợp lý.<br />
                <asp:Button ID="Button6" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <img src="../IMAGES/The-Rachel-Restaurant-Bar-nha-hang-da-nang.jpg" style="width: 247px; height: 314px;" /></td>
            <td class="auto-style24"><strong>The Rachel Restaurant & Bar Đà Nẵng</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            số 166 -168 Bạch Đằng, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Khi được ngồi ăn những món ăn thượng hạng ở đây, nhâm nhi chút rượu vang ngắm thành phố lung linh ánh đèn, ta thật sự đã có những khoảng khắc vô cùng đáng giá.<br />
                <asp:Button ID="Button11" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" />
            </td>
        </tr>
    </table>
    <table align="right" class="auto-style14">
        <tr>
            <td class="auto-style15">
                <img src="../IMAGES/nom-bistro-nha-hang-da-nang-1.jpg" style="width: 254px; height: 372px;" /></td>
            <td class="auto-style20"><strong>Phố 79-Sương Nguyệt Ánh</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
                01-A4, khu biệt thự Đảo Xanh, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia" />Nơm Bistro được thiết kế với 3 tầng phục vụ đủ công suất từ đồ uống, các món ăn phong phú, cách bài trí cũng đẹp mắt hạng cao cấp. Ngoài ra, bạn còn có thể dùng điểm tâm, cà phê, thưởng thức bia, rượu vang tại quầy bar. Âm nhạc thì luôn có vào mỗi tối.<br />
                <asp:Button ID="Button2" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <img src="../IMAGES/nom-bistro-nha-hang-da-nang-1.jpg" style="width: 254px; height: 354px;" /></td>
            <td class="auto-style20"><strong>Nơm Bistro</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
                Số 79 Sương Ánh Nguyệt,P.BếGọi Món Việt<br />
                <img src="../IMAGES/images.png" class="thia" />Nơm Bistro được thiết kế với 3 tầng phục vụ đủ công suất từ đồ uống, các món ăn phong phú, cách bài trí cũng đẹp mắt hạng cao cấp. Ngoài ra, bạn còn có thể dùng điểm tâm, cà phê, thưởng thức bia, rượu vang tại quầy bar. Âm nhạc thì luôn có vào mỗi tối.<br />
                <asp:Button ID="Button4" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/Hai-cang-nha-hang-da-nang.jpg" style="width: 247px; height: 293px;" /></td>
            <td class="auto-style18"><strong>Hải Cảng</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            số 36 – 38 Bạch Đằng, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Ẩm thực Hoa hảo hạng từ các món ăn hoành thánh, cơm chiên, bào ngư, tổ yến,… từ chính tay các đầu bếp người Trung Quốc làm. Hi vọng bạn sẽ có thêm một trải nghiệm thú vị tại đây.<br />
                <asp:Button ID="Button7" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <img src="../IMAGES/madame-lan-nha-hang-da-nang-2.jpg" style="width: 247px; height: 372px;" /></td>
            <td class="auto-style18"><strong>Memory Lounge</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            số 7 Bạch Đằng, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/> Memory Lounge được thiết kế bao gồm nhà hàng, quầy bar và 3 phòng vip sang trọng. Tầng trệt là nơi dùng cà phê, điểm tâm nhẹ tận hưởng vẻ đẹp thành phố về đêm. Quầy bar và khu vực các phòng vip nằm ở tầng lầu. Khu ẩm thực Á – Âu và chuyên nghiệp từng chi tiết trong cách phục vụ.<br />
                <asp:Button ID="Button8" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <img src="../IMAGES/madame-lan-nha-hang-da-nang-2.jpg" style="width: 247px; height: 368px;" /></td>
            <td class="auto-style22"><strong>Madame Lân Đà Nẵng</strong><br />
                <img src="../IMAGES/png-clipart-google-map-mark-computer-icons-location-symbol-map-location-miscellaneous-angle.png" class="vitri"/>
            số 4 Bạch Đằng, quận Hải Châu, Đà Nẵng<br />
                <img src="../IMAGES/images.png" class="thia"/>Ở đây, thực đơn lên đến 300 món ăn hội tụ từ cả 3 vùng miền hoặc cả kiểu Á mà giá cả vô cùng hợp lý. Có phục vụ những món ăn chay rất ngon nữa. Tất cả được chế biến từ các đầu bếp lành nghề nhất hứa hẹn sẽ là điểm yêu thích cho những ai muốn tìm hiểu ẩm thực Việt Nam<br />
                <asp:Button ID="Button9" runat="server" Text="Đặt Chỗ Ngay" style="background: red" class="dat" />
            </td>
        </tr>
    </table>
    
    
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <table class="ndphu">
        <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
        <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
         <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
         <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
         <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
         <tr>
            <td>
                <img src="../IMAGES/24416c7b5af40.png_list.jpg" class="anhphu1"/>
            </td>
        </tr>
    </table>
</asp:Content>

