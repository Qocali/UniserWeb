<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="UniserWeb.Create1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">  
        <div> 
              <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" /> 
             <asp:Label ID="labelId" runat="server">Name</asp:Label>  
<asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox>  
             <asp:Label ID="label1" runat="server">SubName</asp:Label>  
<asp:TextBox ID="SubName" runat="server" ToolTip="Enter User Name"></asp:TextBox> 
             <asp:Label ID="label2" runat="server">Price</asp:Label>  
<asp:TextBox ID="Price" runat="server" ToolTip="Enter User Name"></asp:TextBox>  
            <p>Browse to Upload File</p>  
            
        </div>  
        <p>  
            <asp:Button ID="Button1" runat="server" Text="Upload File" OnClick="Button1_Click" />  
        </p>  
    </form>  
    <p>  
        <asp:Label runat="server" ID="FileUploadStatus"></asp:Label>  
    </p>  
</body>
</html>
