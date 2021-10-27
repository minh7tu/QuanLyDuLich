<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiem_Tour.aspx.cs" Inherits="TimKiem_Tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <title>Tìm kiếm tour</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size:23px;
        }
        .auto-style2 {
            width: 300px;
        }
        .table-data {
            width:50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">

    <form id="form1" runat="server" method="post" action="DatTour.aspx">
    <h1 style="text-align:center">Tìm kiếm Tour đi <asp:Label ID="lblNameOfTour" runat="server" Text=""></asp:Label></h1>
    <h2 style="text-align:center">Tìm thấy <asp:Label ID="lblResult" runat="server" Text=""></asp:Label> kết quả</h2>
        
    <asp:DataList ID="dlTour" runat="server" DataKeyField="MaT" Align="Center">
        <ItemTemplate>
            <table align="center" class="auto-style1 data_view">
            <tr>
                <td rowspan="8" class="auto-style2">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td class="table-data">Tên tour :<asp:Label ID="TenTLabel" runat="server" Text='<%# Eval("TenT") %>' /></td>
            </tr>
            <tr>
                <td>Điểm xuất phát :<asp:Label ID="DiemXPLabel" runat="server" Text='<%# Eval("DiemXP") %>' /></td>
            </tr>
            <tr>
                <td>Điểm đến :<asp:Label ID="DiemDenLabel" runat="server" Text='<%# Eval("DiemDen") %>' /></td>
            </tr>
            <tr>
                <td>Thời gian :<asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' /></td>
            </tr>
            <tr>
                <td>Phương tiện :<asp:Label ID="PhuongTienLabel" runat="server" Text='<%# Eval("PhuongTien") %>' /></td>
            </tr>
            <tr>
                <td>Số chỗ :<asp:Label ID="SoChoLabel" runat="server" Text='<%# Eval("SoCho") %>' /></td>
            </tr>
            <tr>
                <td>Chi phí :<asp:Label ID="ChiPhiLabel" runat="server" Text='<%# Eval("ChiPhi") %>' /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnOrder" runat="server" Text="Đặt ngay" OnClick="btnOrder_Click1"/>
                </td>
            </tr>
        </table>
        </ItemTemplate>
    </asp:DataList>

    <h3 style="text-align:center"><a href="Tour.aspx">Quay lại giao diện tìm kiếm tour</a></h3>
       
    </form>
    </asp:Content>

