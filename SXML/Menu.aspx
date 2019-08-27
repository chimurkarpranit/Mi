<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ADV_ASP_Day10_11.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    body
    {
        font-family: Arial;
        font-size: 10pt;
        color: #444;
        
        background: url(Backimg2.jpg);
    }
    .main_menu, .main_menu:hover
    {
        width: 100px;
        background-color: #fff;
        color: #333;
        text-align: center;
        height: 30px;
        line-height: 30px;
        margin-right: 5px;
        display: inline-block;
        font-weight:bold;
    }
    .main_menu:hover
    {
        background-color: #ccc;
    }
    .level_menu, .level_menu:hover
    {
        width: 110px;
        background-color: #fff;
        color: #333;
        text-align: center;
        height: 30px;
        line-height: 30px;
        margin-top: 5px;
    }
    .level_menu:hover
    {
        background-color: #ccc;
    }
    .selected, .selected:hover
    {
        background-color: #A6A6A6 !important;
        color: #fff;
    }
    .level2
    {
        background-color: #fff;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" DataSourceID="XmlDataSource1"
    OnMenuItemDataBound="OnMenuItemDataBound">
    <LevelMenuItemStyles>
        <asp:MenuItemStyle CssClass="main_menu" />
        <asp:MenuItemStyle CssClass="level_menu" />
    </LevelMenuItemStyles>
    <StaticSelectedStyle CssClass="selected" />

    <DataBindings>
        <asp:MenuItemBinding DataMember="Menu" TextField="Text" ValueField="Value"
            NavigateUrlField="Url" />
        <asp:MenuItemBinding DataMember="SubMenu" TextField="Text" ValueField="Value"
            NavigateUrlField="Url" />    
        
    </DataBindings>

</asp:Menu>

<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Menus.xml" XPath="/Menus/Menu">
</asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
