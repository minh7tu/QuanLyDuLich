<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="TimKiemNH.aspx.cs" Inherits="FEATURE_QuanLiNH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
            width: 80%;
        }
        .auto-style13
        {
            margin:0 auto;
        }
        .auto-style14
        {
            width: 396px;
            height: 221px;
            margin:0 auto;
        }
        .auto-style15
        {
            width: 501px;
        }
        .auto-style16
        {
            color: #FF3300;
        }
        .auto-style17
        {
            width: 167px;
        }
        .auto-style18
        {
            width: 393px;
            height: 205px;
        }
        .auto-style19
        {
            width: 389px;
            height: 183px;
        }
        .auto-style20
        {
            width: 320px;
            height: 505px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style12">
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style16"><strong>Tìm Kiếm Sản Phẩm Nhà Hàng</strong></td>
        </tr>
        <tr>
            <td class="auto-style15">Thực Đơn:<asp:TextBox ID="txtThucDon" runat="server"></asp:TextBox>
                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" OnClick="btnTimKiem_Click" />
            </td>
            <td class="auto-style17">Giá:<asp:DropDownList ID="ddlGia" runat="server" AutoPostBack="True">
                <asp:ListItem>Trung Bình(100K)</asp:ListItem>
                <asp:ListItem>Vừa(200K-500K)</asp:ListItem>
                <asp:ListItem>Cao(trên 1 triệu)</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <img alt="" class="auto-style14" src="../IMAGES/tải%20xuống.jpg" /></td>
            <td class="ThongTin">
                Món Ăn:Lẩu Phan<br />
                Giá:200k;<br />
                Số Lượng:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                Chọn Món:<asp:CheckBox ID="ckbMon1" runat="server" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <img alt="" class="auto-style18" src="../IMAGES/bate.jpg" /></td>
            <td class="ThongTin">
                MónĂn:Hamperger <br />
                Giá:100k;<br />
                Số Lượng:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                Chọn Món:<asp:CheckBox ID="ckbMonAn" runat="server" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <img alt="" class="auto-style19" src="../IMAGES/bò.jpg" /></td>
            <td class="ThongTin">
                Món Ăn:Bò Bít Tết<br />
                Giá:300k;<br />
                Số Lượng:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                Chọn Món:<asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style20" src="../IMAGES/chup-anh-mon-an-7.jpg" /></p>
</asp:Content>

