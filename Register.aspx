<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2"><asp:TextBox ID="ID" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Label ID="ID1" runat="server" Text="الهوية أو السجل التجاري"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:TextBox ID="Name" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Name1" runat="server" Text="الاسم"></asp:Label></td>
            </tr>
            
            <tr>
                <td class="auto-style2"><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Email1" runat="server" Text="البريد"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:TextBox ID="PW" runat="server"></asp:TextBox></td>
                <td class="auto-style3"><asp:Label ID="PW1" runat="server" Text="الرقم السري"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:TextBox ID="PW2" runat="server"></asp:TextBox></td>
                <td class="auto-style3">تأكيد الرقم السري&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="text-align: left" TextAlign="Left">
                        <asp:ListItem Value="Limited"> محدود</asp:ListItem>
                        <asp:ListItem Value="Available"> متاح</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" TextAlign="Left">
                        <asp:ListItem Value="co">شركة</asp:ListItem>
                        <asp:ListItem Value="ind">فرد</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="تسجيل" OnClick="submit_Click" />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style2 {
        width: 218px;
    }
    .auto-style3 {
        text-align: left;
    }
    </style>
</asp:Content>


