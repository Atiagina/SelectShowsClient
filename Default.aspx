<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="selectshowsclient.css" rel="stylesheet" />
    <title>ITC172 Select Shows Client by Anna Atiagina</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>List of Artists:</h1>
        <asp:BulletedList ID="BulletedListArtists" runat="server" OnClick="BulletedListArtists_Click"></asp:BulletedList>
    </div>
    <div>
<h1>List of Venues</h1>
        <asp:BulletedList ID="BulletedListVenues" runat="server"></asp:BulletedList>
        </div>
<div>
    <h1>List of Shows</h1>
    <asp:BulletedList ID="BulletedListShows" runat="server"></asp:BulletedList>
</div>
        <div>
<h1>Select show by Artist:</h1>
           
             <asp:DropDownList ID="DropDownListShowArtist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListShowArtist_SelectedIndexChanged"></asp:DropDownList>
            <asp:GridView ID="GridViewArtists" runat="server"></asp:GridView>
        </div>
    <div>
        <h1>Select a Show by Venue:</h1>
        <asp:DropDownList ID="DropDownListShow" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListShow_SelectedIndexChanged"></asp:DropDownList>
        <asp:GridView ID="GridViewShows" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
