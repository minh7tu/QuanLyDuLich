<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="KetQuaTK.aspx.cs" Inherits="FEATURE_KetQuaTK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <h1 class="auto-style13" style="text-align: center">Kết Quả Tìm Kiếm Của Quý Khách</h1>
    <p>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
                    <ItemTemplate>
                        <table class="auto-style22">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("Anh") %>' Width="128px" />
                                </td>
                                <td>
                                    Tên Nhà Hàng:<asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenNH") %>'></asp:HyperLink><br />
                                    Địa Điểm:<asp:Label ID="Label1" runat="server" Text='<%# Eval("DiaDiem") %>'></asp:Label><br />
                                    Món:<asp:Label ID="Label5" runat="server" Text='<%# Eval("MonAn") %>'></asp:Label><br />
                                    Giá:<asp:Label ID="Label4" runat="server" Text='<%# Eval("ChiPhi") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style12" src="../IMAGES/trang-tri-mon-an-nha-hang-sao-cho-dep-mat_1592556419.jpg" style="width: 247px; height: 300px;" /></p>
</asp:Content>

