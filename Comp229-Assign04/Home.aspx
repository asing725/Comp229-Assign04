<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign04.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     
    
      <div class="jumbotron">
          
        <h1>
          Wrath Of Kings</h1>         
        </div>
        <br />
        <br />
     <div class="body">
      <div class="row">
    
        <asp:GridView ID="Gview" runat="server" Class="table table-bordered table-hover table-stripped" AutoGenerateColumns="false" DataKeyNames="MiniName">
                    <Columns>
                        <asp:HyperLinkField DataTextField="MiniName" HeaderText="Mini Name" Visible="true" 
                             DataNavigateUrlFields="MiniName"  DataNavigateUrlFormatString="Model.aspx?MiniName={0}" />
                        </Columns>
                 </asp:GridView>
        
          <br />
          <asp:Button runat="server" ID="addbtn" Class="btn btn-primary btn-lg" Text="Add New Model" OnClick="addbtn_Click"  />
           <div id="add" runat="server">
               <h2>Add a new mini:</h2>
        <table >
            <tr><td>
                    <asp:Label runat="server" class="control-label" Text="Name: "/></td>
                   <th><asp:TextBox ID="nametxt" required="true" CssClass="form-control" runat="server" />
                </th> </tr>
            <tr><td>
                    <asp:Label runat="server" class="control-label" Text="Faction: " /></td>

                <th><asp:TextBox ID="facttxt" Class="form-control"  required="true" runat="server"></asp:TextBox>
                  </th></tr>
            <tr><td>
                    <asp:Label runat="server" class="control-label" Text="Rank: " /></td>
                <th><asp:TextBox ID="ranktxt" Class="form-control" TextMode="Number" required="true" runat="server"></asp:TextBox>
                    
                </th></tr>
            <tr><td>
                <asp:Label runat="server" class="control-label" Text="Base: " /></td>
                <th><asp:TextBox ID="basetxt" Class="form-control" required="true" TextMode="Number" runat="server"  />
                   
                </th></tr>
            <tr><td >
                    <asp:Label runat="server" class="control-label" Text="Size: " />
                </td><th>
                    <asp:TextBox ID="sizetxt" class="form-control" TextMode="Number" required="true" runat="server" />
                </th></tr>            
            <tr><td >
                    <asp:Label runat="server" class="control-label" Text="Mobility: " />
                </td> <th>
                    <asp:TextBox ID="mobtxt" class="form-control" TextMode="Number" required="true" runat="server" />
                </th></tr>
            <tr><td>
                    <asp:Label runat="server" class="control-label" Text="Deployment Zone: " /></td>
                <th><asp:TextBox ID="deptxt" class="form-control" required="true" runat="server" />                   
                </th></tr>
            <tr><td>
                    <asp:Label runat="server"  class="control-label" Text="Resilance: " />
                </td>
                <td><asp:TextBox ID="restxt" class="form-control" required="true" TextMode="Number" runat="server" />
                </td></tr>
                <tr><td>
                    <asp:Label runat="server"  class="control-label" Text="Willpower: "/></td>
                <th><asp:TextBox ID="willtxt" class="form-control" TextMode="Number" required="true" runat="server" />
                </th></tr>
                  <tr><td>
                    <asp:Label runat="server"  class="control-label" Text="Wounds: " /></td>
                <th><asp:TextBox ID="woundtxt" class="form-control"  required="true" TextMode="Number" runat="server" />
                </th></tr>
            <tr><td >
                    <asp:Button Text="Cancel" ID="cnclbtn" runat="server" class="btn btn-danger btn-sm"
                        UseSubmitBehavior="false" OnClick="cnclbtn_Click" />
                </td>
                <th>
                    <asp:Button Text="Save" ID="savebtn" class="btn btn-primary btn-lg"
                        runat="server" OnClick="savebtn_Click" /></th></tr>
        </table>


               <br /><br />
        <div id="email" runat="server">
            <table>
                <tr><td>
                        <asp:Label runat="server"  class="control-label" required="true" Text="Email: " /></td>
                    <th>
                        <asp:TextBox runat="server" class="form-control" ID="etxt" /></th></tr>              
                <tr><td>
                        <asp:Label runat="server" class="control-label" Text="Message: " /></td>
                    <th>
                        <asp:TextBox runat="server" class="form-control" ID="txttxt" TextMode="MultiLine" /></th></tr>
                <tr><td><asp:Button runat="server" ID="send" class="btn btn-primary btn-lg" Text="Save and send" OnClick="send_Click" /></td>
                    <th></th><asp:Label runat="server" ID="emaillbl" /></tr>
            </table>
        </div>
    </div>
        </div>
    </div>
</asp:Content>
