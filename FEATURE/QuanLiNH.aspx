<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="QuanLiNH.aspx.cs" Inherits="FEATURE_TimKiemNH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .menu1 
        {
            padding:0;
            float:left;
            width:100%;
            margin:0 auto;
            background:#00FF66;
        }
       .menu1 ul
       {
            list-style:none;
            margin:0;
            padding-top:7px;
            padding-left:0;
        }
        .menu1 ul li
        {
            float:left;
            margin:0;
        }
       .menu1 ul li a
       {
            padding-right:20px;
            color:red;
            text-decoration:none;
        }
        .menu1 ul li a:hover
        {
         color:yellow;
        text-decoration:underline;
        }
       
        .auto-style20
        {
            width:700px;
        }
       
        .auto-style13
        {
            text-align: center;
            color: #0000FF;
        }
        .auto-style21
        {
            text-align: center;
            font-size: large;
            font-style: italic;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
            
        <h1 class="auto-style13"><strong class="auto-style21">Quản Lí Nhà Hàng</strong></h1>
        <div class="menu1">
            <ul>
                <li>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FEATURE/QuanLiNH.aspx">Nhà Hàng</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FEATURE/NhanVien.aspx">Nhân Viên</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/FEATURE/MonAn.aspx">Món Ăn</asp:HyperLink></li>
            </ul>
        </div>
        <asp:Table ID="Table1" runat="server" Height="19px" Width="700px" BorderStyle="Solid" BorderWidth="1px"  GridLines="Vertical" >
            <asp:TableRow runat="server" Class="auto-style20" BackColor="#FF99FF" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" TableSection="TableHeader">
                <asp:TableCell runat="server">Mã Nhà Hàng</asp:TableCell>
                <asp:TableCell runat="server">Tên Nhà Hàng</asp:TableCell>
                <asp:TableCell  runat="server">Địa Điểm</asp:TableCell>
                <asp:TableCell runat="server">Số Điện Thoại</asp:TableCell>
                <asp:TableCell runat="server">Xếp Hạng</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <img src="../IMAGES/images%20(1).jpg" style="width: 219px" />
</asp:Content>

