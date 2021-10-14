<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="ThanhToan.aspx.cs" Inherits="FEATURE_ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style10
        {
            width: 60%;
            border: 1px solid #FF00FF;
        }
        .auto-style11
        {
            color: #FF3300;
        }
        .auto-style15
        {
            width: 80%;
            border: 1px solid blue;
        }
        .auto-style16
        {
            color: #333333;
            width: 418px;
        }
        .auto-style17
        {
            text-align: center;
        }
        .auto-style18
        {
            color: #333333;
            width: 418px;
            height: 25px;
        }
        .auto-style19
        {
            height: 25px;
        }
    .auto-style20
    {
        text-align: left;
    }
         .auto-style21
         {
             width: 225px;
             height: 273px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style15">
        <tr>
            <td colspan="2" style="text-align: center">Thanh Toán Của Quý Khách</td>
        </tr>
        <tr>
            <td style="color: #333333" class="auto-style20">Mã Nhà Hàng:</td>
            <td>
                <asp:TextBox ID="txtMaNH" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMaNH" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #333333" class="auto-style20">Số điện thoại:</td>
            <td>
                <asp:TextBox ID="txtSdt" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSdt" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: #333333" class="auto-style20">Tên Khách Hàng:</td>
            <td>
                <asp:TextBox ID="txtTenKH" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTenKH" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="color: #333333">Ngày thanh toán:</td>
            <td>
                <asp:TextBox ID="txtNgayTT" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNgayTT" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="color: #333333">Chi tiết:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="color: #333333">Hình thức thanh toán:</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Trực Tiếp" AutoPostBack="True" Checked="True" GroupName="gt" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Bằng Thẻ" AutoPostBack="True" GroupName="gt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Loại thẻ:</td>
            <td>
                <asp:DropDownList ID="ddlLoaiThe" runat="server" AutoPostBack="True">
                    <asp:ListItem>AgriBank</asp:ListItem>
                    <asp:ListItem>VietTinBank</asp:ListItem>
                    <asp:ListItem>BIDV</asp:ListItem>
                    <asp:ListItem>ACB</asp:ListItem>
                    <asp:ListItem>SHB</asp:ListItem>
                    <asp:ListItem>MSB</asp:ListItem>
                    <asp:ListItem>VIB</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Số tài khoản:</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtSoTK" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoTK" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Nhập Mật Khẩu:</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtMK" runat="server" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMK" ErrorMessage="không được bỏ trống"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Tổng Tiền:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2">
                <asp:Button ID="Button2" runat="server" Text="Hoàn Tất" OnClick="Button2_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style21" src="../IMAGES/tải%20xuống%20(5).jpg" /></p>
</asp:Content>

