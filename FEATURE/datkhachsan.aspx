<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datkhachsan.aspx.cs" Inherits="FEATURE_datkhachsan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>đặt khách sạn</title>
     <link rel="shortcut icon" type="image/x-icon" href="../IMAGES/4141.ico" />
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
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
        <h2 style="text-align:center;">gửi yêu cầu đến khách sạn</h2>
        <table align="center" style="width:76%; height: 437px;">
            <tr>
                <td class="auto-style1"><strong>Ngày nhận phòng:</strong><br />
                    <asp:TextBox ID="TextBox1" runat="server" type="date"></asp:TextBox>
                </td>
                <td class="auto-style4"><strong>Ngày trả phòng:</strong><br />
                    <asp:TextBox ID="TextBox2" runat="server" type="date"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style1"><strong>số lượng:</strong>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="txt_soluong" runat="server" Width="56px" Enabled="False" CssClass="text-center"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn-primary" OnClick="Button1_Click" Width="50px" CausesValidation="False"/>
                            <asp:Button ID="btn_tru" runat="server" CssClass="btn-primary" OnClick="btn_tru_Click" Text="-" Width="50px" CausesValidation="False" />
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
        <asp:Button ID="btn_dat" runat="server" Text="gửi yêu cầu" CssClass=" btn btn-warning" Width="350px" align="center" Height="39px" OnClick="btn_dat_Click" />
                    <asp:CheckBox ID="ck_in" runat="server" Text="In  Yêu cầu" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
