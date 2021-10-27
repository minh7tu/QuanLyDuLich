<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="DanhGia.aspx.cs" Inherits="FEATURE_DanhGia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
            width:700px;
        }
        .auto-style13
        {
            text-align: center;
        }
        .auto-style16
    {
        text-align: center;
        height: 18px;
    }
    .auto-style17
    {
        text-align: center;
        color: #FF3300;
        height: 55px;
    }
        .auto-style19
        {
            font-size: large;
        }
        .auto-style20
        {
            width: 480px;
            height: 431px;
        }
        .auto-style25
    {
        text-align: center;
        width: 200px;
        height: 65px;
    }
    .auto-style26
    {
        width: 291px;
        height: 65px;
    }
    .auto-style29
    {
        text-align: center;
        height: 43px;
        width: 200px;
    }
    .auto-style30
    {
        height: 43px;
        width: 291px;
    }
    .auto-style31
    {
        text-align: center;
        height: 47px;
        width: 200px;
    }
    .auto-style32
    {
            height: 47px;
            width: 291px;
        }
    .auto-style33
    {
        text-align: center;
        height: 48px;
        width: 200px;
    }
    .auto-style34
    {
        height: 48px;
        width: 291px;
    }
    .auto-style35
    {
        text-align: center;
        height: 35px;
        width: 200px;
    }
    .auto-style36
    {
        height: 35px;
        width: 291px;
    }
    .auto-style37
    {
        text-align: center;
        height: 44px;
        width: 200px;
    }
    .auto-style38
    {
        height: 44px;
        width: 291px;
    }
    .auto-style39
    {
        text-align: center;
        height: 36px;
        width: 200px;
    }
    .auto-style40
    {
        height: 36px;
        width: 291px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style12">
        <tr>
            <td class="auto-style13" colspan="2"><strong><em class="auto-style19">Đánh giá về dich vụ nhà hàng của chúng tôi</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style33">Món Ăn:</td>
            <td class="auto-style34">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="Ngon Miệng" />
            </td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32">
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text="Hấp Dẫn"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30">
                <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" Text="Giá Cả hợp lí"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">Phục Vụ:</td>
            <td class="auto-style26">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Hài Lòng" AutoPostBack="True" Checked="True" GroupName="pv" />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Tạm chấp nhận được" AutoPostBack="True" GroupName="pv"/>
                <asp:RadioButton ID="RadioButton2" runat="server" Text=" Không Hài Lòng" AutoPostBack="True" GroupName="pv"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style35">An Toàn:</td>
            <td class="auto-style36">
                <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Text="Hợp vệ sinh"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style37"></td>
            <td class="auto-style38">
                <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" Text="An ninh Nhà hàng tốt"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">Nhân Viên:</td>
            <td class="auto-style40">
                <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" Text="Nhiệt Tình" />
            </td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style32">
                <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" Text="Phục Vụ Tốt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hoàn Tất" style="color: #003300; background-color: #FFFF00" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="2"><strong class="auto-style19">Cảm Ơn Quý Khách Đã Góp Ý Nhà Hàng Chúng Tôi</strong></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style20" src="../IMAGES/md_2020_06_29______81c7c97dff2721aa8f70860ca8f9aeb5.png" style="width: 247px; height: 400px;" /></p>
</asp:Content>

