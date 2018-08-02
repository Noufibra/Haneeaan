<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server">
        <div id="d" class="myDiv">
            <table style="margin: auto; align-items: center; height: 200px; width: 400px; border: none;">
                <tr>
                    <td style="height: 39px; width: 167px;" align="center">
                        <asp:TextBox ID="txtUserID" Width="148px" runat="server" value='' onfocus="this.value=''"></asp:TextBox>
                        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="ID Incorrect*"></asp:RequiredFieldValidator>--%>
                    </td>
                    <td style="height: 39px; width: 115px;">
                        <label for="txtUsername">
                            <br />
                           رقم الهوية /السجل التجاري &nbsp;
                        </label>
                    </td>
                    
                </tr>
                <tr>
                     <td style="width: 167px" align="center">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" value='' onfocus="this.value=''" Width="148px"></asp:TextBox>

                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Incorrect*"></asp:RequiredFieldValidator>--%>
                    </td>
                    <td style="width: 115px">
                        <label for="txtPassword">
                            الرقم السري <br />
                        </label>
                    </td>
                   
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Reg" runat="server" Text="تسجيل" OnClick="Reg_Click" />
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_OnClick" Text="تسجيل الدخول" />
                    </td>
                </tr>
            </table>

            &nbsp;&nbsp;
            <asp:Label ID="lblMsg" runat="server" style="align-items:center"></asp:Label>
        </div>
    </form>


</asp:Content>

