<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SchedOrders.aspx.cs" Inherits="SchedOrders" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="الثامن">الثامن</asp:ListItem>
                        <asp:ListItem Value="عرفة">عرفة</asp:ListItem>
                        <asp:ListItem Value="عيد الأضحى">عيد الأضحى</asp:ListItem>
                        <asp:ListItem Value="الحادي عشر">الحادي عشر</asp:ListItem>
                        <asp:ListItem Value="الثاني عشر">الثاني عشر</asp:ListItem>
                        <asp:ListItem Value="الثالث عشر">الثالث عشر</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">اليوم</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="الفجر">الفجر</asp:ListItem>
                        <asp:ListItem Value="الظهر">الظهر</asp:ListItem>
                        <asp:ListItem Value="العصر">العصر</asp:ListItem>
                        <asp:ListItem Value="المغرب">المغرب</asp:ListItem>
                        <asp:ListItem Value="العشاء">العشاء</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">الوقت</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>150</asp:ListItem>
                        <asp:ListItem>200</asp:ListItem>
                        <asp:ListItem>250</asp:ListItem>
                        <asp:ListItem>300</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">الكمية</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem Value="أ">منطقة أ</asp:ListItem>
                        <asp:ListItem Value="ب">منطقة ب</asp:ListItem>
                        <asp:ListItem Value="ج">منطقة ج</asp:ListItem>
                        <asp:ListItem Value="د">منطقة د</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">المكان</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem Value="ماء">ماء</asp:ListItem>
                        <asp:ListItem Value="عصيرات">عصيرات</asp:ListItem>
                        <asp:ListItem Value="وجبات خفيفة">وجبات خفيفة</asp:ListItem>
                        <asp:ListItem Value="إفطار">إفطار</asp:ListItem>
                        <asp:ListItem Value="غداء">غداء</asp:ListItem>
                        <asp:ListItem Value="عشاء">عشاء</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">نوع الطعام</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList6" runat="server" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                        <asp:ListItem Value="مجدولة">مجدولة</asp:ListItem>
                        <asp:ListItem Value="فورية">فوري</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">نوع الخدمة</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="submit" runat="server" style="text-align: right" Text="إضافة" OnClick="submit_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 33px;
            text-align: right;
        }
    </style>
</asp:Content>


