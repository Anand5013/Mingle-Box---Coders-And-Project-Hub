<%-- Created By Kirubananthan.R --%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CoderBuyerLogin.aspx.cs" Inherits="CoderBuyerLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
            </td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 40%;">
                            <img src="Images/library-computer-use.jpg" 
                                style="width: 489px; height: 321px" /> </td>
                        <td style="width: 1%">
                        </td>
                        <td style="width: 58%;">
                            <table style="width: 99%">
                                <tr>
                                    <td style="width: 50%; text-align: right">
                                        <asp:LinkButton ID="lbHome" runat="server" Font-Bold="True" Font-Italic="False"
                                            Font-Size="16px" ForeColor="Blue" Font-Names="Georgia" 
                                            OnClick="lbHome_Click">Home</asp:LinkButton>
                                    </td>
                                    <td style="text-align: center">
                                        <asp:LinkButton ID="lbNewUser" runat="server" Font-Bold="True" Font-Size="16px"
                                            ForeColor="Blue" Font-Italic="False" Font-Names="Georgia" Width="113px" 
                                            OnClick="lbNewUser_Click">New User</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 40px">
                                    </td>
                                    <td >
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center; font-size: large;" 
                                        style="font-family: monospace; font-size: large; font-weight: bolder; color: #CC3399;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">&nbsp;</td><td>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: right">
                                        <table style="width: 60%; height: 72px" cellspacing="1" cellpadding="1" 
                                            border="1">
                                            <tr>
                                            <td style="font-size: medium; font-weight: bolder;">
                                            Select Type
                                            </td>
                                            <td style="font-size: medium; font-weight: bolder">
                                            <asp:DropDownList ID="ddlCoderBuyer" runat="server" ForeColor="#003366" Font-Bold="True"
                                            Width="158px" Font-Size="16px" Font-Italic="False" Font-Names="Georgia">
                                            <asp:ListItem Value="Coder">Coder</asp:ListItem>
                                            <asp:ListItem Value="Buyer">Buyer</asp:ListItem>
                                        </asp:DropDownList>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 50%">
                                                    <asp:Label ID="Label4" runat="server" Font-Size="16px" Font-Bold="True" Font-Italic="False"
                                                        Font-Names="Georgia">UserName</asp:Label></td>
                                                <td style="width: 50%; text-align: left">
                                                    <asp:TextBox ID="txtUserName" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Font-Size="16px" Font-Bold="True" Font-Italic="False"
                                                        Font-Names="Georgia">Password</asp:Label></td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px" colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" colspan="2">
                                    <asp:Label ID="lblErrorMeaage" runat="server" ForeColor="red" Visible="false"></asp:Label>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Font-Bold="true" 
                                            Font-Size="Medium" Width="80px" Height="27px" ForeColor="red" 
                                            OnClick="btnLogin_Click" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
