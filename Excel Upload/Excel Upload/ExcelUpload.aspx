<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExcelUpload.aspx.cs" Inherits="Excel_Upload_ExcelUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excel Upload</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5" style="width: 50%">
            <label for="fileExcel" class="form-label">Upload Excel</label>
            <div class="mb-3 d-flex justify-content-center">
                <div class="input-group has-validation">
                    <%--<span class="input-group-text" id="inputGroupPrepend">Choose Excel</span>--%>
                    <asp:FileUpload ID="fileExcel" runat="server" CssClass="form-control" aria-describedby="inputGroupPrepend" required />
                    <asp:Button ID="btnExclUpload" runat="server" OnClick="btnExclUpload_Click" Text="Upload File" CssClass="btn btn-outline-secondary" />
                    <div class="invalid-feedback">
                        Please choose a excel file
                    </div>
                </div>
            </div>
        </div>
    </form>


</body>
</html>
