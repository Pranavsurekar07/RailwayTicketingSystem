<%@ Page Title="Add Fare page" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="updatefare.aspx.cs" Inherits="updatefare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container">
            <div class="form-horizontal"><br /><br />
           <h2>Add Fare</h2>
        <div class="form-group">
            <label class="col-xs-11">Train Number</label>
            <div class="col-xs-11">
                <asp:TextBox ID="trainnumber" runat="server" Class="form-control" placeholder="Train Number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="trainnumber" runat="server" ErrorMessage="Train Number is Required !!" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

             <div class="container">
                    <asp:Label ID="Label4" runat="server" CssClass="col-xs-11" Text="Select Class :" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    <div class="col-md-3">
                    <asp:DropDownList ID="selectclass" runat="server">
                        <asp:ListItem Value="0">-- Select Class --</asp:ListItem>
                        <asp:ListItem>General Class</asp:ListItem>
                        <asp:ListItem>AC First Class</asp:ListItem>
                        <asp:ListItem>AC 2 tier</asp:ListItem>
                        
                        </asp:DropDownList>
                        <br />
                    </div>
                </div>
            <label class="col-xs-11">Fare</label>
            <div class="col-xs-11">
                <asp:TextBox ID="fare" runat="server" Class="form-control" placeholder="Fare"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="fare" runat="server" ErrorMessage="Fare is Required !!" ValidationExpression="^[0-9]+$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
             <div class="col-xs-11 space-vert">
                <asp:Button ID="addfarebtn" runat="server" Class="btn btn-success" Text="Add Fare" OnClick="btn_add" Font-Bold="True" Font-Size="Medium" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
                 <br />
                 <br />
            </div>
            <div class="col-md-3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="497px" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" >
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="TrainNumber" HeaderText="TrainNumber" SortExpression="TrainNumber" >
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="Classtype" HeaderText="Classtype" SortExpression="Classtype" >
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="Fare" HeaderText="Fare" SortExpression="Fare">
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
               <SortedAscendingCellStyle BackColor="#FDF5AC" />
               <SortedAscendingHeaderStyle BackColor="#4D0000" />
               <SortedDescendingCellStyle BackColor="#FCF6C0" />
               <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
                
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Class]"  DeleteCommand="DELETE from [Class] where [Id]=@Id"></asp:SqlDataSource>
            </div>
            
          
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
                </div>
           </div>
    
</asp:Content>

