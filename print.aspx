<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
<!--

        function Button1_onclick() {
            window.print();
        }

// -->
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0">
            <tr>
                <td>
                    Tour Date</td>
                <td>
                    <asp:Label ID="lbldate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Tour ID</td>
                <td>
                    <asp:Label ID="lbltourid" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    User Name</td>
                <td>
                    <asp:Label ID="lbluname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Tour Date</td>
                <td>
                    <asp:Label ID="lbltourdate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Fort Name</td>
                <td>
                    <asp:Label ID="lblfortname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Bus Time</td>
                <td>
                    <asp:Label ID="lblbustime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Hotel Service</td>
                <td>
                    <asp:Label ID="lblhotelservice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    No of Ticket</td>
                <td>
                    <asp:Label ID="lblticket" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Bus Charges</td>
                <td>
                    <asp:Label ID="lblbuscharges" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Entry Fees</td>
                <td>
                    <asp:Label ID="lblentryfees" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Total Charges</td>
                <td>
                    <asp:Label ID="lbltotalcharges" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input id="Button1" type="button" value="Print" onclick="return Button1_onclick()" />&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
