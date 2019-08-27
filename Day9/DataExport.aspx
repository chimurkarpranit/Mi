<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataExport.aspx.cs" Inherits="ADV_ASP_Day12_13.DataExport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DataExport</title>
    <style type="text/css">
    .b1
    {
        margin-left:300px;                    
    }
    </style>
</head>
<body>
    <form id="FrmDataExport" runat="server">
    <div class="b1">
    <h2 class="b1"> Employee Details</h2>
        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" 
            Width="850px" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="6" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="EmployeeID" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"EmployeeID") %>' ID="empid"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Firstname" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text=' <%#DataBinder.Eval(Container.DataItem,"FirstName") %>' ID="fname"></asp:Label>                       
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lastname" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LastName") %>' ID="lname"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BirthDate" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"BirthDate") %>' ID="birthday"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left" Width="20%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text=' <%#DataBinder.Eval(Container.DataItem,"Address") %>' ID="address"></asp:Label>                       
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left" Width="14%"></HeaderStyle>

<ItemStyle HorizontalAlign="Left" Width="20%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City"  HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"City") %>' ID="city"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Country") %>' ID="country"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ContactNo" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                    <asp:Label runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"HomePhone") %>' ID="contactno"></asp:Label>                        
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle HorizontalAlign="Left" Width="20%"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>        
    <asp:Button ID="BtnExport" runat="server" Text="Export Details" 
        Height="32px" onclick="BtnExport_Click" Width="150px" 
            style="font-weight: 700" />
        </div>    
    </form>
</body>
</html>
