<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="ASPtest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Button1を押すと、TextBox1の内容が、Label1に表示されます。<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Button" /><br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />


            -----------------------
            <br />
			SQLSERVER<br />
            <br />
			StudentID
			<asp:TextBox ID="TextBoxStudentID" runat="server"></asp:TextBox>
			<asp:Button ID="ButtonSerch" runat="server" Text="検索" /><br />
			FirstName<asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox><br />
			LastName<asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox><br />
			Birthday<asp:TextBox ID="TextBoxBirthday" runat="server"></asp:TextBox><br />
            Gender<asp:TextBox ID="TextBoxGender" runat="server"></asp:TextBox><br />
        </div>
    </form>
</body>
</html>