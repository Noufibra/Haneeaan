<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="رقم_الطلب" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="الحالة" HeaderText="الحالة" SortExpression="الحالة" />
                <asp:BoundField DataField="نوع_الخدمة" HeaderText="نوع_الخدمة" SortExpression="نوع_الخدمة" />
                <asp:BoundField DataField="الموقع" HeaderText="الموقع" SortExpression="الموقع" />
                <asp:BoundField DataField="نوع_الغذاء" HeaderText="نوع_الغذاء" SortExpression="نوع_الغذاء" />
                <asp:BoundField DataField="الكمية" HeaderText="الكمية" SortExpression="الكمية" />
                <asp:BoundField DataField="الوقت" HeaderText="الوقت" SortExpression="الوقت" />
                <asp:BoundField DataField="اليوم" HeaderText="اليوم" SortExpression="اليوم" />
                <asp:BoundField DataField="رقم_الطلب" HeaderText="رقم_الطلب" InsertVisible="False" ReadOnly="True" SortExpression="رقم_الطلب" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hajj_HakathonConnectionString %>" SelectCommand="SELECT [الحالة], [نوع الخدمة] AS نوع_الخدمة, [الموقع], [نوع الغذاء] AS نوع_الغذاء, [الكمية], [الوقت], [اليوم], [رقم الطلب] AS رقم_الطلب FROM [Services]"></asp:SqlDataSource>
    
        
</form>

</asp:Content>

