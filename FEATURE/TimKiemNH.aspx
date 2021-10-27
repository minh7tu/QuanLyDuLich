<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/NhaHang.master" AutoEventWireup="true" CodeFile="TimKiemNH.aspx.cs" Inherits="FEATURE_QuanLiNH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
            width: 80%;
        }
        .auto-style20
        {
            width: 320px;
            height: 505px;
        }
        .auto-style21
        {
            font-size: large;
            color: #FF5050;
        }
        .auto-style22
        {
            width: 100%;
        }
        .auto-style23
        {
            width: 117px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <table align="center" class="auto-style12">
        <tr>
           <td align="center" class="auto-style21">Tìm Kiếm Sản Phẩm Nhà Hàng </td>
        </tr>
        <tr>
            <td style="text-align: right">Nhập Vào Món Ăn:<asp:TextBox ID="txtMonAn" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Tìm Kiếm" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td>

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

            </td>
        </tr>        
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NoiDungPhu" Runat="Server">
    <p>
        <img alt="" class="auto-style20" src="../IMAGES/chup-anh-mon-an-7.jpg" /></p>
</asp:Content>

