<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminTaken.aspx.cs" Inherits="AdminTaken" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="رقم الطلب" DataSourceID="SqlDataSource1">
            <Columns>
                 <asp:TemplateField HeaderText="اختيار طلب">
        <ItemTemplate>
          <input name="MyRadioButton" type="radio" 
                    value='<%# Eval("[رقم الطلب]") %>' />
        </ItemTemplate>
      </asp:TemplateField>

                <asp:BoundField DataField="الحالة" HeaderText="الحالة" SortExpression="الحالة" />
                <asp:BoundField DataField="نوع الخدمة" HeaderText="نوع الخدمة" SortExpression="نوع الخدمة" />
                <asp:BoundField DataField="الموقع" HeaderText="الموقع" SortExpression="الموقع" />
                <asp:BoundField DataField="نوع الغذاء" HeaderText="نوع الغذاء" SortExpression="نوع الغذاء" />
                <asp:BoundField DataField="الكمية" HeaderText="الكمية" SortExpression="الكمية" />
                <asp:BoundField DataField="الوقت" HeaderText="الوقت" SortExpression="الوقت" />
                <asp:BoundField DataField="اليوم" HeaderText="اليوم" SortExpression="اليوم" />
                <asp:BoundField DataField="رقم الطلب" HeaderText="رقم الطلب" InsertVisible="False" ReadOnly="True" SortExpression="رقم الطلب" />
           
                
                
                 </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hajj_HakathonConnectionString %>" SelectCommand="select * from Services where [الحالة] = 'معلق'"></asp:SqlDataSource>
    
        <asp:Button ID="Submit" runat="server" Text="تنفيذ" OnClick="Submit_Click" />
    </form>

</asp:Content>

