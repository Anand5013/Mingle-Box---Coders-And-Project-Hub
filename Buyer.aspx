<%----Created By Anand.B----%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buyer.aspx.cs" Inherits="Buyer" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width: 100%">
                    <tr>
                        <td style="width: 40%;">
                            <img src="Images/untitled.bmp" /></td>
                        <td style="width: 1%">
                        </td>
                        <td style="width: 58%;">
                            <table style="width: 100%">
                            <tr><td style="height:50px;" colspan="2" align="right">
                                        <a href=CoderBuyerLogin.aspx>Logout</a>
                                    </td></tr>
                              
                                <tr>
                                    <td style="height: 20px" colspan="2">
                                    </td>
                                </tr>
                              
                                <tr>
                                    <td colspan="2">
                                        <table id="Table1" cellspacing="4" cellpadding="4">
                                            <tr>
                                                <td >
                                                    <asp:LinkButton ID="lbViewCoders" runat="server" OnClick="lbViewCoders_Click">View Coders</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <asp:LinkButton ID="lbPostAPorject" runat="server" OnClick="lbPostAPorject_Click">Post Project</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <asp:LinkButton ID="ViewOpenProjects" runat="server" OnClick="ViewAllProjects_Click">View All Projects</asp:LinkButton></td>
                                            </tr>
                                             <tr>
                                                <td >
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ViewOpenProjects_Click">View Open Projects</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td >
                                                    <asp:LinkButton ID="lbPaymentDetails" runat="server" OnClick="lbPaymentDetails_Click">Payment Details</asp:LinkButton></td>
                                            </tr>
                                           
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px" colspan="2">
                                    </td>
                                </tr>
                               
                            </table>
                        </td>
                    </tr>
                </table>

</asp:Content>

