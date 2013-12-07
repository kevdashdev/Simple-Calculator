<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css" />
</head>
<body>
    <div class="container" style="margin-top:10em;">
        
        <div class="col-lg-8 col-lg-offset-2 well">
            <h1 class="text-center">Simple calculator</h1>
            <hr />
            <form id="form1" runat="server" class="form-horizontal"  autocomplete="off">
              <div class="form-group">
                <div class="col-sm-6">
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-lg" placeholder="NUMBER e.g. 1337"></asp:TextBox>
                  <p style="margin-top:5px;">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Must be less than 5 digits" CssClass="text-danger" ControlToValidate="TextBox1" ValidationExpression="^\d{1,5}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                  </p>
                </div>
                <div class="col-sm-6">
                  <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-lg" placeholder="NUMBER e.g. 2108"></asp:TextBox>
                  <p style="margin-top:5px;">
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Must be less than 5 digits" CssClass="text-danger" ControlToValidate="TextBox2" ValidationExpression="^\d{1,5}$" Display="Dynamic"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                  </p>
                </div>
              </div>
              <hr />
              <div class="form-group">
                <div class="col-sm-3">
                  <asp:Button ID="Button1" runat="server" Text="+ Add" CssClass="btn-primary btn btn-block" OnClick="Button1_Click" />
                </div>
                <div class="col-sm-3">
                  <asp:Button ID="Button2" runat="server" Text="- Subtract" CssClass="btn-primary btn btn-block" OnClick="Button2_Click1" />
                </div>
                <div class="col-sm-3">
                  <asp:Button ID="Button3" runat="server" Text="/ Divide" CssClass="btn-primary btn btn-block" OnClick="Button3_Click1" />
                </div>
                <div class="col-sm-3">
                  <asp:Button ID="Button4" runat="server" Text="* Multiply" CssClass="btn-primary btn btn-block" OnClick="Button4_Click" />
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-9">
                  <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-lg" placeholder="Result" disabled="true"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                  <asp:Button ID="Button5" runat="server" Text="Clear" CausesValidation="false" CssClass="btn-danger btn btn-block btn-lg" OnClick="Button5_Click1" />
                </div>
              </div>
            </form>
        </div>
    </div>
</body>
</html>
