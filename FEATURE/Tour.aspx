<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="Tour.aspx.cs" Inherits="FEATURE_Tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <title>Tour</title>
    <script>
        function msgError() {
            alert("Hiện server đang bận , vui lòng thử lại sau ^^");
        }
        function msgSuccess() {
            alert("Thao tác thành công");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form runat="server">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../IMAGES/tor1.png" alt=""/>
                </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../IMAGES/tor2.jpg" alt=""/>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../IMAGES/tour2.jpg" alt=""/>
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
        <table  class="table-responsive-lg" align="center" style="font-size:23px;color:white;width:600px;height:200px">
            <tr>
                <th colspan="3" style="background-color:lightgray;">Tìm tour giá rẻ</th>
            </tr>
            <tr>
                <td colspan="3"><asp:TextBox ID="txtNameOfTour" runat="server" placeholder="Bạn muốn đi đâu" Width="600px" Height="50px" BorderStyle="None"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtDate" type="date" runat="server"></asp:TextBox>
                </td>
                <td><asp:DropDownList ID="ddlCaption" runat="server" AutoPostBack="True" BorderStyle="None" Width="200px">
                    <asp:ListItem >Khởi hành từ</asp:ListItem>
                    <asp:ListItem>Đà Nẵng</asp:ListItem>
                    <asp:ListItem>Hà Nội</asp:ListItem>
                    <asp:ListItem>Hồ Chí Minh</asp:ListItem>
                    <asp:ListItem>Huế</asp:ListItem>
                    <asp:ListItem>Tây Bắc</asp:ListItem>
                    </asp:DropDownList></td>
                <td><span><asp:Button ID="btnFind" runat="server" Text="Tìm kiếm" BackColor="LightBlue" ForeColor="White" Width="200px" OnClick="btnFind_Click"/></span></td>
            </tr>
            </table>
    </form>
</asp:Content>

