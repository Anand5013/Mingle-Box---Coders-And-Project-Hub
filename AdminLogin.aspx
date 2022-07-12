<%-- Created by Kirubananthan.R --%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%">
                    <tr>
                        <td style="width: 40%;">
                        <img src="Images/untitled.bmp" />
                            </td>
                        <td style="width: 1%">
                        </td>
                        <td style="width: 58%;" valign="top">
                            <table style="width: 90%; height: 140px;">
                           
                                <tr>
                                    <td style="width: 50%; text-align: right">
                                        If Your a Coder or Buyer Please <a href=CoderBuyerLogin.aspx>Login Here</a>
                                        </td>
                                 </tr>
                              <tr>
                              <td height="100px"></td>
                              </tr>
                                <tr>
                                    <td colspan="2" valign="top" align="center">
                                        <table style="width: 60%; height: 70px" cellspacing="1" cellpadding="1" 
                                            border="1">
                                            <tr>
                                            <td align="center" colspan="2" 
                                                    style="font-family: Sylfaen; font-size: x-large; font-weight: bolder; color: #FF3399"> 
                                            Administrator Login
                                            </td>
                                            </tr>
                                            <tr>
                                            <td height="10px"></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 50%">
                                                    <asp:Label ID="Label4" runat="server" Font-Size="16px" Font-Bold="True" Font-Italic="False"
                                                        Font-Names="Georgia">UserName</asp:Label></td>
                                                <td style="width: 50%; text-align: left">
                                                    <asp:TextBox ID="TXTID" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="height: 27px">
                                                    <asp:Label ID="Label5" runat="server" Font-Size="16px" Font-Bold="True" Font-Italic="False"
                                                        Font-Names="Georgia">Password</asp:Label></td>
                                                <td style="text-align: left; height: 27px;">
                                                    <asp:TextBox ID="TXTPWD" runat="server" TextMode="Password" Width="150px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                    <td style="height: 20px" colspan="2">
                                    </td>
                                </tr>
                                             <tr>
                                    <td align="right">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Font-Bold="true" 
                                            Font-Size="Medium" Width="80px" Height="27px" ForeColor="#663300" 
                                            OnClick="btnLogin_Click" /></td>
                                        <td align="left">
                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" Font-Bold="true" 
                                                Font-Size="Medium" Width="80px" Height="25px" ForeColor="#663300" 
                                                onclick="btncancel_Click"  />
                                        </td>
                                </tr>
                                        </table>
                                    </td>
                                </tr>
                                
                               
                            </table>
                        </td>
                    </tr>
                </table>

</asp:Content>

