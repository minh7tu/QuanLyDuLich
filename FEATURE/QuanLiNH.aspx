<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="QuanLiNH.aspx.cs" Inherits="FEATURE_TimKiemNH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12
    {
        width: 70%;
        border: 1px solid #0000FF;
    }
    .auto-style13
    {
        height: 25px;
        text-align: center;
            color: #FF3300;
        }
    .auto-style14
    {
        width: 347px;
    }
    .auto-style15
    {
        height: 25px;
        text-align: center;
    }
    .auto-style16
    {
        height: 25px;
    }
    .auto-style17
    {
        width: 347px;
        height: 35px;
    }
    .auto-style18
    {
        height: 35px;
    }
    .auto-style19
    {
        height: 25px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style12">
    <tr>
        <td class="auto-style13" colspan="2"><strong>Quản Lý Nhà Hàng </strong> </td>
    </tr>
    <tr>
        <td class="auto-style14">Mã Nhà hàng:</td>
        <td>
            <asp:TextBox ID="txtMaNH" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMaNH" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Tên Nhà hàng:</td>
        <td>
            <asp:TextBox ID="txtTenNH" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTenNH" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Chọn Khu Vực</td>
        <td class="auto-style18">
            <asp:DropDownList ID="ddlKhuVuc" runat="server" AutoPostBack="True">
                <asp:ListItem>Hà Nội</asp:ListItem>
                <asp:ListItem>Cao Bằng</asp:ListItem>
                <asp:ListItem>Bắc Giang</asp:ListItem>
                <asp:ListItem>Hà Nam</asp:ListItem>
                <asp:ListItem>Huế</asp:ListItem>
                <asp:ListItem>Thanh Hóa</asp:ListItem>
                <asp:ListItem>Nam Định</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">Món ăn:</td>
        <td>
            <asp:TextBox ID="txtMonAn" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMonAn" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Loại Nhà Hàng:</td>
        <td class="auto-style16">
            <asp:DropDownList ID="ddlLoaiNH" runat="server" AutoPostBack="True">
                <asp:ListItem>Nhà hàng ven sông</asp:ListItem>
                <asp:ListItem>Nhà hàng cao cấp</asp:ListItem>
                <asp:ListItem>Nhà hàng thượng hạng</asp:ListItem>
                <asp:ListItem>Nhà hàng bình dân</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style19">Giá:</td>
        <td class="auto-style16">
            <asp:TextBox ID="txtGia" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGia" ErrorMessage="Không được bỏ trống"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" colspan="2">
            <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" OnClick="btnTimKiem_Click"/>
        </td>
    </tr>
</table>

    <img src="../IMAGES/images%20(1).jpg" style="width: 219px" />
</asp:Content>

