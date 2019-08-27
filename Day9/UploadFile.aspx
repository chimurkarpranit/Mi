<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="ADV_ASP_Day12_13.UploadFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style type="text/css">
    .table
    {
        background-color:#FFE6E6;
        border: 2px ridge black;        
    } 
</style>
<script type ="text/javascript">
    var validFilesTypes = ["xls", "xlsx", "csv"];
    function ValidateFile() 
    {
        var file = document.getElementById("<%=InpFileUpload.ClientID%>");
        var label = document.getElementById("<%=LblMessage.ClientID%>");
        var path = file.value;
        var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();
        var isValidFile = false;
        for (var i = 0; i < validFilesTypes.length; i++) {
            if (ext == validFilesTypes[i]) {
                isValidFile = true;
                document.getElementById('<%= hdnTestValue.ClientID %>').value = "T";
                break;
            }
        }
        if (!isValidFile) {
            label.style.color = "red";
            label.innerHTML = "Invalid File. Please upload a File with" +
         " extension:\n\n" + validFilesTypes.join(", ");                
        }
        return isValidFile;                
    }
</script>
    <title>UploadFile</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u><font color="blue">File Upload</font></u></h2>
    <table class="table">
    <tr>
        <td>
            <asp:hiddenfield runat="server" id="hdnTestValue" />    
        </td>
    </tr>
    <tr>
        <td>
            <asp:FileUpload ID="InpFileUpload" runat="server" /><br />        
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label><br /><br />        
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="BtnUpload" runat="server" Text="Upload" 
            onclick="BtnUpload_Click" style="font-weight: 700" Width="95px" OnClientClick="return ValidateFile()" />
        </td>
    </tr>
    </table>
        
    </div>
    </form>
</body>
</html>
