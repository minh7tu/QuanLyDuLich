<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DatTour.aspx.cs" Inherits="FEATURE_DatTour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đặt tour</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />       
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet" />    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="../STYLES/plugins.css" rel="stylesheet" />
    <link href="../STYLES/styleforpage.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="../IMAGES/4141.ico" />
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
            font-size:23px;
        }
        .auto-style2 {
            width: 230px;
            float: right;
        }
    </style>
    <script>
        function msgError() {
            alert("Gửi yêu cầu đặt tour thất bại ^^");
        }
        function msgSuccess() {
            alert("Gửi yêu cầu đặt tour thành công");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="text-align:center">Thông tin người dùng</h1>
        <p style="text-align:center">&nbsp;</p>
        <table align="center" class="auto-style1 table-light">
            <tr>
                <td class="auto-style2">Họ đệm :</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td style="width:400px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Không được bỏ trống họ đệm" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tên :</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Không được bỏ trống tên" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email :</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Nhập sai định dạng email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Số điện thoại :</td>
                <td>
                    <asp:TextBox ID="txtNumberPhone" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNumberPhone" Display="Dynamic" ErrorMessage="Không được bỏ trống số điện thoại" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Địa chỉ : </td>
                <td>
                    <asp:TextBox ID="txtAddr" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">

                    Hình thức thanh toán:</td>
                <td>
                    <asp:DropDownList ID="ddlLoaiHinh" runat="server" AutoPostBack="True" Width="100%">
                        <asp:ListItem>Lựa chọn loại hình thanh toán</asp:ListItem>
                        <asp:ListItem>Thanh toán bằng thẻ</asp:ListItem>
                        <asp:ListItem>Thanh toán sau</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">

                    Tên thẻ :</td>
                <td>

                    <asp:DropDownList ID="ddlCard" runat="server" AutoPostBack="True" Width="100%">
                        <asp:ListItem>Lựa chọn tên thẻ</asp:ListItem>
                        <asp:ListItem>Thẻ Agribank</asp:ListItem>
                        <asp:ListItem>Thẻ Viettinbank</asp:ListItem>
                        <asp:ListItem>Thẻ Techcombank</asp:ListItem>
                        <asp:ListItem>Thẻ MB Bank</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Số tài khoản :
                </td>
                <td>

                    <asp:TextBox ID="txtSoTK" runat="server" Width="100%"></asp:TextBox>

                </td>
            </tr>
        </table>

        <div align="center">
            <br />
            <asp:Button ID="btnOrder" runat="server" Text="Gửi yêu cầu" CssClass="btn-light"  Width="100px" OnClick="btnOrder_Click" />
        </div>
    </div>
    </form>
</body>
</html>
