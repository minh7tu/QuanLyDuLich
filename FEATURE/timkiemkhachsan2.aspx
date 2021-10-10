<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="timkiemkhachsan2.aspx.cs" Inherits="FEATURE_timkiemkhachsan2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
    <title>Tìm kiếm khách sạn</title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
        }
        .auto-style5 {
            width: 244px;
        }
        .auto-style6 {
            width: 448px;
            height: 50px;
        }
        .auto-style8 {
            width: 448px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
    <form id="form1" runat="server" >
        <h1 style="text-align:center;">Tìm kiếm khách sạn<asp:Label ID="lb_diemden" runat="server"></asp:Label>
        </h1>
        <h4 style="text-align:center;">tìm thấy:
        <asp:Label ID="lb_dem" runat="server" Text=""></asp:Label>
        </h4>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#FF66FF" BorderStyle="None" BorderWidth="2px" CellPadding="3"   Font-Strikeout="False" Font-Underline="False" ForeColor="White"   CellSpacing="15" ShowFooter="False" ShowHeader="False" Font-Bold="False" Font-Italic="False" Font-Overline="False"  GridLines="Vertical" ToolTip="ấn vào để xem chi tiết" ViewStateMode="Disabled"  CssClass="data_view"  align="center">
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
            <ItemTemplate>
                <table class="auto-style1 data_view">
                    <tr>
                        <td class="auto-style5" rowspan="8">
                            <asp:Image ID="Image1" runat="server" Height="216px" ImageUrl='<%# Eval("Anh") %>' Width="284px" />
                        </td>
                        <td class="auto-style8">Tên Khách sạn:<asp:Label ID="lb_tenks" runat="server" Text='<%# Eval("TenKS") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Địa Chỉ:<asp:Label ID="lb_diachi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Số Điện Thoại:<asp:Label ID="lb_sdt" runat="server" Text='<%# Eval("SDT") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Xếp Loại:<asp:Label ID="lb_xeploai" runat="server" Text='<%# Eval("XepLoai") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Địa Điểm:<asp:Label ID="lb_diadiem" runat="server" Text='<%# Eval("DiaDiem") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Giá(1Đêm):<br />
                            <asp:Label ID="lb_gia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:HyperLink ID="HyperLink2" runat="server">xem chi tiết</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><asp:Button ID="btn_dat" runat="server" Text="đặt Ngay" align="right" CssClass="btn-danger" OnClick="btn_dat_Click"/>
                            
                            
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <div class="text-xxl-center" style="text-align:center;">
        <br />
          <h4><a href="KhachSan.aspx" class="a_hover" style="text-align:center;">Quay trở lại trang khách sạn</a></h4>
        
        </div>
        <hr />
    </form>
</asp:Content>

