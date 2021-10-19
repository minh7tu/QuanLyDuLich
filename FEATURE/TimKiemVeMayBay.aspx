<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="TimKiemVeMayBay.aspx.cs" Inherits="FEATURE_TimKiemVeMayBay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 50%;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style2 {
            width: 192px;
        }
        .auto-style4 {
            width: 225px;
        }
        .auto-style5 {
            height: 38px;
            width: 225px;
        }
        .auto-style6 {
            height: 24px;
            width: 225px;
        }
        .auto-style7 {
            height: 32px;
            width: 225px;
        }
        .auto-style8 {
            width: 225px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaV" align="center">
            <ItemTemplate>
                <br />
                <table align="center" cellpadding="3" cellspacing="4" class="auto-style1">
                    <tr>
                        <td class="auto-style2" rowspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="236px" ImageUrl='<%# Eval("Anh") %>' Width="290px" />
                        </td>
                        <td class="auto-style7">Tên vé:<asp:Label ID="TenVLabel" runat="server" Text='<%# Eval("TenV") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Khởi Hành:
                            <asp:Label ID="TenSBKHLabel0" runat="server" Text='<%# Eval("TenSBKH") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Điểm đến:
                            <asp:Label ID="TenSBDLabel0" runat="server" Text='<%# Eval("TenSBD") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">NgayBay:
                            <asp:Label ID="NgayBayLabel0" runat="server" Text='<%# Eval("NgayBay") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Giá vé:
                            <asp:Label ID="GiaVLabel" runat="server" Text='<%# Eval("GiaV") %>' />
                        </td>
                    </tr>
                </table>
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>

