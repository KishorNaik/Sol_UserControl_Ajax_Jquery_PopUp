<%@ Page Language="C#" async="true" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sol_Ajax_UpdatePanel_PopUp_Issue.Default" %>

<%--User Control Load--%>
<%@ Register Src="~/ContentUserControl.ascx" TagName="Content" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="scriptManger" runat="server" EnablePageMethods="true"></asp:ScriptManager>

            <asp:UpdatePanel ID="updatePanel" runat="server">
                <ContentTemplate>

                   <%-- Call User Control--%>
                    <uc:Content id="popPuContent" runat="server" />

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
