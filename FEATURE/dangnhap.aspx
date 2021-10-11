<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="FEATURE_dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>đăng nhập</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="shortcut icon" type="image/x-icon" href="../IMAGES/4141.ico" />
    <style>
        .login {
  min-height: 100vh;
}

.bg-image {
  background-image: url('D:\CSharp\QuanLyDuLich-master\IMAGES\da-nang-6062d6b1901ef-476x476.jpg');
  background-size: cover;
  background-position: center;
}

.login-heading {
  font-weight: 300;
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
}
    </style>
</head>
<body>
    
    <div class="container">
    <div class="container-fluid ps-md-0">
  <div class="row g-0">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image">
        <img src="../IMAGES/da-nang-6062d6b1901ef-476x476.jpg" />
    </div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Chào mừng quay trở lại!</h3>

              <!-- đăng nhập -->
               <form id="form1" runat="server">
                <div class="form-floating mb-3">
                    <asp:TextBox ID="txt_tk" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_tk" Display="Dynamic" ErrorMessage="bạn chưa nhập tài khoản" ForeColor="Red"></asp:RequiredFieldValidator>
                  <label for="floatingInput">Tên đăng nhập</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="txt_mk" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_mk" Display="Dynamic" ErrorMessage="bạn chưa nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                  <label for="floatingPassword">mật khẩu</label>
                </div>

                <div class="form-check mb-3">
                    <asp:CheckBox ID="CheckBox1" runat="server"   />
                  <label class="form-check-label" for="rememberPasswordCheck">
                   nhớ tôi!
                  </label>
                </div>

                <div class="d-grid">
                    <asp:Button ID="Button1" runat="server" Text="Đăng nhập" CssClass="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2"/>
                  <div class="text-center">
                    <a class="small" href="#">quên mật khẩu</a>
                  </div>
                </div>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    </div>
    
</body>
</html>
