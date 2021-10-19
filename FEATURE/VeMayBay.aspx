<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="VeMayBay.aspx.cs" Inherits="FEATURE_VeMayBay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <title>Vé Máy Bay</title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 40%;
            border: 1px solid #FF6600;
        }
        .auto-style2 {
            color: #FF6600;
        }
        .auto-style3 {
            width: 35px;
            height: 20px;
        }
        .auto-style4 {
            font-size: 22px;
        }
        .auto-style7 {
            width: 288px;
        }
        .auto-style8 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
        <table align="center" cellpadding="2" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>
                    <img class="auto-style3" src="../IMAGES/121414.png"/><span class="auto-style4">Vé Máy Bay</span></strong></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="50px" Width="40%">
                        <asp:ListItem>Điểm đi</asp:ListItem>
                        <asp:ListItem>Hà Nội</asp:ListItem>
                        <asp:ListItem>Phú Quốc</asp:ListItem>
                        <asp:ListItem>Đà Nẵng</asp:ListItem>
                        <asp:ListItem>Hồ Chí Minh</asp:ListItem>
                        <asp:ListItem>Quảng Ninh</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="50px" Width="40%">
                        <asp:ListItem>Điểm Đến</asp:ListItem>
                        <asp:ListItem>Hà Nội</asp:ListItem>
                        <asp:ListItem>Phú Quốc</asp:ListItem>
                        <asp:ListItem>Đà Nẵng</asp:ListItem>
                        <asp:ListItem>Hồ Chí Minh</asp:ListItem>
                        <asp:ListItem>Quảng Ninh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Height="30px" Width="48%">Ngày đi</asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" Height="30px" Width="48%">Ngày Về</asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="30px" Width="69%">
                        <asp:ListItem>Số Người</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Tìm Kiếm" Width="30%" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

