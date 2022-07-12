<%----Created By Anand.B----%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Administrator.aspx.cs" Inherits="Administrator" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 40%; height: 302px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/n810-1.jpg" Height="360px" Width="491px"></asp:Image>
            </td>
            <td style="width: 1%; height: 302px;">
            </td>
            <td style="width: 58%; height: 302px;" valign="top" align="right">
                <table>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lblCoder" runat="server" OnClick="lblCoder_Click">Coder</asp:LinkButton></td><td>|</td>
                              <td>
                            <asp:LinkButton ID="lblBuyer" runat="server" OnClick="lblBuyer_Click">Buyer</asp:LinkButton></td><td>|</td>
                                  <td>
                            <asp:LinkButton ID="lblLogOut" runat="server" OnClick="lblLogOut_Click">Logout</asp:LinkButton></td><td>|</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
