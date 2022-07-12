<%------Created By Diwakar.G------%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="biddetails.aspx.cs" Inherits="biddetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width:100%;text-align:center">
<tr><td colspan="2" style="height:25px"></td></tr>
<tr><td colspan="2" style="height:25px"></td></tr>
<tr><td style="text-align:center" colspan="2"><asp:Label ID="lblHeader" runat="server" Text="Bid Details" Font-Bold="true" Font-Size="25px"></asp:Label></td></tr>
<tr><td colspan="2" style="height:25px"></td></tr>
<tr><td colspan="2" style="height:25px"></td></tr>

<tr>
<td style="width:50%;text-align:right">
    <asp:Label ID="Label1" runat="server" Text="Project ID :"></asp:Label></td>
<td style="text-align:left">
    <asp:TextBox ID="txtProjectID" runat="server" ReadOnly="true"></asp:TextBox></td>
</tr>
<tr>
<td style="width:50%;text-align:right">
    <asp:Label ID="Label2" runat="server" Text="Bid Amount :"></asp:Label></td>
<td style="text-align:left">
    <asp:TextBox ID="txtBidAmt" runat="server" ></asp:TextBox></td>
</tr>
<tr>
<td style="width:50%;text-align:right">
    <asp:Label ID="Label3" runat="server" Text="Coder Name :"></asp:Label></td>
<td style="text-align:left">
    <asp:TextBox ID="txtCoderName" runat="server" ReadOnly="true"></asp:TextBox></td>
</tr>
<tr>
<td style="width:50%;text-align:right">
    <asp:Label ID="Label4" runat="server" Text="Buyer ID :"></asp:Label></td>
<td style="text-align:left">
    <asp:TextBox ID="txtBuyerID" runat="server" ReadOnly="true"></asp:TextBox></td>
</tr>
<tr><td colspan="2" style="height:20px"></td></tr>
<tr><td colspan="2" ><asp:Button ID="btnSave" runat="server" Text="Save" Font-Size="14px" OnClick="btnSave_Click" /></td></tr>
<tr><td colspan="2" style="height:20px"></td></tr>
<tr><td colspan="2" style="height:20px"></td></tr>
<tr><td colspan="2" style="text-align:center;padding-left:50px" ><asp:HyperLink id="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="ViewAllProjects.aspx">Back</asp:HyperLink></td></tr>
<tr><td colspan="2" style="height:20px"></td></tr>
<tr><td colspan="2" style="height:20px"></td></tr>
<tr><td><asp:Label ID="lblErrorMessage" runat="server" Text="" Visible="false"></asp:Label></td><td></td></tr>
</table>

</asp:Content>

