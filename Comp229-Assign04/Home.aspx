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
    
        <asp:GridView ID="Gview" runat="server" AutoGenerateColumns="false" DataKeyNames="MiniName">
                    <Columns>
                        <asp:HyperLinkField DataTextField="MiniName" HeaderText="Mini Name" Visible="true" 
                             DataNavigateUrlFields="MiniName" DataNavigateUrlFormatString="Model.aspx?MiniName={0}" />
                        </Columns>
                 </asp:GridView>
          <br /><br />
          <asp:Button runat="server" ID="addbtn" CssClass="btn btn-primary btn-lg" Text="Add New Model" OnClick="addbtn_Click"  />
           <div id="add" runat="server">
        <table >
            <tr><td>
                    <asp:Label runat="server" Text="Name"/></td>
                   <th><asp:TextBox ID="nametxt" runat="server" />
                </th> </tr>
            <tr><td>
                    <asp:Label runat="server" Text="Faction" /></td>

                <th><asp:TextBox ID="facttxt" runat="server"></asp:TextBox>
                  </th></tr>
            <tr><td>
                    <asp:Label runat="server" Text="Rank" /></td>
                <th><asp:TextBox ID="ranktxt" TextMode="Number" runat="server"></asp:TextBox>
                    
                </th></tr>
            <tr><td>
                <asp:Label runat="server" Text="Base" /></td>
                <th><asp:TextBox ID="basetxt" Text="Base" TextMode="Number" runat="server"  />
                   
                </th></tr>
            <tr><td >
                    <asp:Label runat="server" Text="Size" />
                </td><th>
                    <asp:TextBox ID="sizetxt" TextMode="Number" runat="server" />
                </th></tr>            
            <tr><td >
                    <asp:Label runat="server" Text="Mobility" />
                </td> <th>
                    <asp:TextBox ID="mobtxt" TextMode="Number" runat="server" />
                </th></tr>
            <tr><td>
                    <asp:Label runat="server" Text="Deployment Zone" /></td>
                <th><asp:TextBox ID="deptxt"  runat="server" />                   
                </th></tr>
            <tr><td>
                    <asp:Label runat="server" Text="Resilance" />
                </td>
                <td><asp:TextBox ID="restxt" TextMode="Number" runat="server" />
                </td></tr>
                <tr><td>
                    <asp:Label runat="server" Text="Willpower"/></td>
                <th><asp:TextBox ID="willtxt" TextMode="Number" runat="server" />
                </th></tr>
                  <tr><td>
                    <asp:Label runat="server" Text="Wounds" /></td>
                <th><asp:TextBox ID="woundtxt" TextMode="Number" runat="server" />
                </th></tr>
            <tr><td >
                    <asp:Button Text="Cancel" ID="cnclbtn" runat="server" CssClass="btn btn-danger btn-sm"
                        UseSubmitBehavior="false" OnClick="cnclbtn_Click" />
                </td>
                <th>
                    <asp:Button Text="Save" ID="savebtn" CssClass="btn btn-primary btn-lg"
                        runat="server" OnClick="savebtn_Click" /></th></tr>
        </table>



        <div id="email" runat="server">
            <table>
                <tr><td>
                        <asp:Label runat="server" Text="Email" /></td>
                    <th>
                        <asp:TextBox runat="server" ID="etxt" /></th></tr>              
                <tr><td>
                        <asp:Label runat="server" Text="Message" /></td>
                    <th>
                        <asp:TextBox runat="server" ID="txttxt" TextMode="MultiLine" /></th></tr>
                <tr><td><asp:Button runat="server" ID="send" CssClass="btn btn-primary btn-lg" Text="Save and send" OnClick="send_Click" /></td>
                    <th></th><asp:Label runat="server" ID="emaillbl" /></tr>
            </table>
        </div>
    </div>
        </div>
    </div>
</asp:Content>
