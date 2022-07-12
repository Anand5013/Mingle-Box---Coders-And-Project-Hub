<%----Created By Diwakar.G----5>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Coder.aspx.cs" Inherits="Coder" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%">
                    <tr>
                        <td style="width: 40%;">
                            <img src="Images/library-computer-use.jpg" 
                                style="width: 433px; height: 300px" /></td>
                        <td style="width: 1%">
                        </td>
                        <td valign="top" align="right">
                            <table>
                            <tr>
                            <td height="5"></td>
                            </tr>
                            <tr><td><asp:LinkButton ID="lbCoderDetails" runat="server" OnClick="lbCoderDetails_Click">Details</asp:LinkButton></td><td>|</td>
                            <td><asp:LinkButton ID="lbViewProjects" runat="server" OnClick="lbViewProjects_Click">View Projects</asp:LinkButton></td><td>|</td>
                            <td><asp:LinkButton ID="lbCoderlogOut" runat="server" OnClick="lbCoderlogOut_Click">Logout</asp:LinkButton></td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                </table>

</asp:Content>

