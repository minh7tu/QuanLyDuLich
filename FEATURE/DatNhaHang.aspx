<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="DatNhaHang.aspx.cs" Inherits="FEATURE_TK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
    {
        width: 81%;
            height: 598px;
        }
    .auto-style13
    {
        color: #FF3300;
    }
    .auto-style14
    {
        width: 434px;
    }
        .auto-style15
        {
            width: 434px;
            height: 35px;
        }
        .auto-style16
        {
            height: 35px;
        }
    .auto-style18
    {
        text-align: center;
    }
        .auto-style19
        {
            width: 498px;
            height: 609px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style12">
    <tr>
        <td class="auto-style13" colspan="2" style="text-align: center"><strong><em>Thông Tin Yều Cầu Đặt Nhà Hàng Của Quý Khách</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style15">Mã Nhà Hàng:</td>
        <td class="auto-style16">
            <asp:TextBox ID="txtMaNH" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMaNH" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">Tên Nhà Hàng:</td>
        <td class="auto-style16">
            <asp:TextBox ID="txtTenNH" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenNH" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Thời gian bắt đầu:</td>
        <td>
            <asp:TextBox ID="txtTGBD" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTGBD" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtTGBD" ErrorMessage="ngày không hợp lệ" MaximumValue="30/12/2099" MinimumValue="01/01/2021"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Thời Gian Kết Thúc:</td>
        <td>
            <asp:TextBox ID="txtTGKT" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTGKT" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtTGKT" ErrorMessage="ngày không hợp lệ" MaximumValue="30/12/2099" MinimumValue="01/01/2021"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Địa Điểm:</td>
        <td>
            <asp:TextBox ID="txtDiaDiem" runat="server" AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Số Người Tham Gia:</td>
        <td>
            <asp:TextBox ID="txtSoNguoi" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoNguoi" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Số điện thoại:<td>
            <asp:TextBox ID="txtSdt" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSdt" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Số Bàn:</td>
        <td>
            <asp:TextBox ID="txtSoBan" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoBan" ErrorMessage="Không được phép bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Loại Nhà Hàng:</td>
        <td>
            <asp:DropDownList ID="ddlLoaiNH" runat="server" AutoPostBack="True">
                <asp:ListItem>Nhà Hàng Bình Dân</asp:ListItem>
                <asp:ListItem>Nhà hàng đạt chất lượng</asp:ListItem>
                <asp:ListItem>Nhà hàng ven sông</asp:ListItem>
                <asp:ListItem>Nhà hàng tiệc </asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style18" colspan="2">
            <asp:Button ID="btnDatNH" runat="server" Text="Đặt Nhà Hàng" OnClick="btnDatNH_Click"  />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style19" src="../IMAGES/huong-dan-dat-ban-mobi.png" /></p>
</asp:Content>

