<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/MasterPage.master" AutoEventWireup="true" CodeFile="DatVeMayBay.aspx.cs" Inherits="FEATURE_DatVeMayBay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TieuDe" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" Runat="Server">
        <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>đặt khách sạn</title>
     <link rel="shortcut icon" type="image/x-icon" href="../IMAGES/4141.ico" />
    <!-- CSS only -->

    <style type="text/css">
        .auto-style1 {
            height: 56px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            height: 56px;
            width: 297px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" id="bill">
        <img src="../IMAGES/121414.png"  class="rounded mx-auto d-block" style="max-width:200px; height: 170px; width: 204px;"/>
        <h2 style="text-align:center;">Đặt vé máy bay</h2>
        <table align="center" style="width:76%; height: 437px;">
            <tr>
                <td class="auto-style1"><strong>Hành lí đi:</strong><br />
                    <asp:TextBox ID="txt_hanhlidi" runat="server" >123</asp:TextBox>
                </td>
                <td class="auto-style4"><strong>Hành lí về:</strong><br />
                    <asp:TextBox ID="txt_hanhlive" runat="server"  ></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style1"><strong>số lượng:</strong>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txt_soluong" runat="server" Width="56px" Enabled="False" CssClass="text-center"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn-primary"  Width="50px" CausesValidation="False" OnClick="Button1_Click"/>
                            <asp:Button  ID="btn_tru" runat="server" CssClass="btn-primary"  Text="-" Width="50px" CausesValidation="False" OnClick="btn_tru_Click" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                    <br />
                </td>
            </tr>
            <tr>
                <td><strong>Quý danh:</strong><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="225px">
                        <asp:ListItem>Ông</asp:ListItem>
                        <asp:ListItem>Bà</asp:ListItem>
                        <asp:ListItem>Anh</asp:ListItem>
                        <asp:ListItem>Chị</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2"><strong>Họ Tên:</strong><span class="auto-style3">(*)</span><br />
                    <asp:TextBox ID="txt_hoten" runat="server"  Width="485px" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_hoten" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Số Điện Thoại:</strong><span class="auto-style3">(*)<br />
                    </span>
                    <asp:TextBox ID="txt_sdt" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_sdt" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style2" colspan="2"><strong>Email:</strong><br />
                    <asp:TextBox ID="txt_email" runat="server" Width="485px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="bạn nhập không đúng định dạng email" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
        <strong>Yêu cầu đặc biệt:</strong><br />
        <asp:TextBox ID="TextBox7" runat="server" Height="141px" TextMode="MultiLine" Width="793px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3" align="center">
        <asp:Button ID="btn_dat" runat="server" Text="Đặt" CssClass=" btn btn-warning" Width="350px" align="center" Height="39px"  />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
    <script type="text/javascript">
        function Curen() {
            document.getElementById("btn_tru").style.cursor = "wait";
        }
    </script>
</body>
    
</html>


</asp:Content>

