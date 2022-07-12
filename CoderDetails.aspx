<%----Created By Kirubananthan.R----%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CodersDetails.aspx.cs" Inherits="codersdeatils" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 10px;">
            
            
                <img src="Images/library-computer-use.jpg" 
                    style="width: 445px; height: 300px" /></td>
            
            <td valign="top">
            <table style="width: 444px">
            <tr>
            <td align="right">
            <table>
            <tr>
            <td><asp:LinkButton ID="lbHome" runat="server" OnClick="lbHome_Click">Coder Home</asp:LinkButton></td>
             <td>|</td>
             <td><a href=CoderBuyerLogin.aspx>Logout</a></td>                               
            </tr>
            </table>
            </td>
            </tr>
            <tr>
             <td style="height: 20px; font-family: Garamond; font-size: x-large; font-weight: bolder; color: #CC00FF;" 
                    align="center">Coders Profile Editing</td>
            </tr>
            <tr>
            <td>
            <table>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label3" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Coder Id</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtCoderID" runat="server" Enabled="False" Width="156px" ReadOnly="true"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label4" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Name</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtName" runat="server" Enabled="False" Width="156px" ReadOnly="true"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label5" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Qualification</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtQualification" runat="server" Width="156px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label6" runat="server" Width="223px" Font-Names="Georgia" Font-Italic="False"
                                                        Font-Bold="True" Font-Size="Medium">Year of PassedOut</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtPassOut" runat="server" Width="156px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label7" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Expert In</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtExpert" runat="server" Width="156px"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label8" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Phone</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtPhone" runat="server" Enabled="False" Width="156px" ReadOnly="true"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label9" runat="server" Font-Names="Georgia" Font-Italic="False" Font-Bold="True"
                                                        Font-Size="Medium">Mail Id</asp:Label></td>
                                                <td align="center">
                                                    <asp:TextBox ID="txtmail" runat="server" Enabled="False" Width="156px" ReadOnly="true"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>                              
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                            OnClick="btnSubmit_Click" Font-Bold="True" ForeColor="#660033"></asp:Button>
                                     <asp:Button ID="Button1" runat="server" Text="update" 
                                            OnClick="btnSubmit_Click1" Font-Bold="True" ForeColor="#660033"></asp:Button>
                                    
                                  
                                    <asp:Label ID="Label10" runat="server" Visible = "false" 
                                            style="font-size: large; color: #800000"  ></asp:Label>
                                    </td>
                                    
                                    <td>
                                       </td>
                                </tr>			
                            </table>
            
            </td>
            </tr>
            </table>
            
           
</asp:Content>
