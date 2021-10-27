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
        .auto-style9 {
            width: 448px;
            height: 74px;
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
        <h5 style="text-align:center;">xắp xếp giá theo:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>không xắp sếp</asp:ListItem>
            <asp:ListItem>tăng dần</asp:ListItem>
            <asp:ListItem>giảm dần</asp:ListItem>
            </asp:DropDownList>
            xắp xếp theo sao:<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>không xắp xếp</asp:ListItem>
                <asp:ListItem>tăng dần</asp:ListItem>
                <asp:ListItem>giảm dần</asp:ListItem>
            </asp:DropDownList>
        </h5>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#FF66FF" BorderStyle="None" BorderWidth="2px" CellPadding="10"   Font-Strikeout="False" Font-Underline="False" ForeColor="White"   CellSpacing="29" ShowFooter="False" ShowHeader="False" Font-Bold="False" Font-Italic="False" Font-Overline="False"  GridLines="Vertical" ToolTip="ấn vào để xem chi tiết" ViewStateMode="Disabled"  CssClass="data_view"  align="center">
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
            <ItemTemplate>
                <table class="auto-style1 data_view" style="text-align:center;">
                    <tr>
                        <td class="auto-style5" rowspan="8">
                            <asp:Image ID="Image1" runat="server" Height="216px" ImageUrl='<%# Eval("Anh") %>' Width="284px" />
                        </td>
                        <td class="auto-style9"><strong>Tên Khách</strong> <strong>sạn:</strong><asp:Label ID="lb_tenks" runat="server" Text='<%# Eval("TenKS") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Địa Chỉ:</strong><asp:Label ID="lb_diachi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><strong>Số Điện Thoại:</strong><asp:Label ID="lb_sdt" runat="server" Text='<%# Eval("SDT") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Xếp Loại</strong>:<asp:Label ID="lb_xeploai" runat="server" Text='<%# Eval("XepLoai") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Địa Điểm</strong>:<asp:Label ID="Label1" runat="server" Text='<%# Eval("DiaDiem") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Giá(1Đêm):</strong><br />
                            <asp:Label ID="lb_gia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:HyperLink ID="HyperLink2" runat="server">xem chi tiết</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("Chitiet") %>'>ấn vào để xem</asp:HyperLink>
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
            <p>
                <asp:Button ID="btn_dau" runat="server" Text="Trang đầu" OnClick="btn_dau_Click" CssClass="btn btn-warning"/>
                <asp:Button ID="btn_truoc" runat="server" Text="trước" OnClick="btn_truoc_Click" CssClass="btn btn-warning"/>

                <asp:TextBox ID="txt_trang" runat="server" Height="28px" Width="93px" Enabled="False" CssClass="text-center" ToolTip="số trang/số bảng ghi" BackColor="White" BorderStyle="Solid" Font-Bold="True" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="btn_sau" runat="server" Text="sau" OnClick="btn_sau_Click" CssClass="btn btn-warning"/>


                <asp:Button ID="btn_cuoi" runat="server" Text="Trang cuối" OnClick="btn_cuoi_Click" CssClass="btn btn-warning"/>


            </p>
        
        </div>
        <hr />
    </form>
</asp:Content>

