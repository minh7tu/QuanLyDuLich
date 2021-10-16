<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="KetQuaTK.aspx.cs" Inherits="FEATURE_KetQuaTK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <h1 class="auto-style13" style="text-align: center">Kết Quả Tìm Kiếm Của Quý Khách</h1>
    <asp:Table ID="Table1" runat="server" Height="19px" Width="700px" BackColor="White" BorderColor="#3366FF" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0066FF" GridLines="Vertical" >
        <asp:TableRow runat="server" BackColor="#FF99FF" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" TableSection="TableHeader">
            <asp:TableCell runat="server">Mã Nhà Hàng</asp:TableCell>
            <asp:TableCell runat="server">Tên Nhà Hàng</asp:TableCell>
            <asp:TableCell runat="server">Địa Điểm</asp:TableCell>
            <asp:TableCell runat="server">Chi Phí</asp:TableCell>
            <asp:TableCell runat="server">Xếp Hạng</asp:TableCell>
            <asp:TableCell runat="server">Đánh Giá</asp:TableCell>
            <asp:TableCell runat="server">Món Ăn</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <style>
        .auto-style12
        {
            width: 600px;
            height: 400px;
        }
    
        .auto-style13
        {
            color: #FF3300;
            font-size: large;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style12" src="../IMAGES/trang-tri-mon-an-nha-hang-sao-cho-dep-mat_1592556419.jpg" style="width: 247px; height: 300px;" /></p>
</asp:Content>

