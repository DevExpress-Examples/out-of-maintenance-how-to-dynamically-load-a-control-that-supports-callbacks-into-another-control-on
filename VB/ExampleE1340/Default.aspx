<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxCallbackPanel"
	TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v8.3" Namespace="DevExpress.Web.ASPxPanel"
	TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<table>
				<tr>
					<td>
						<dx:ASPxButton ID="btnShow" runat="server" AutoPostBack="False" Text="Show Data"
							ClientInstanceName="btnShow">
							<ClientSideEvents Click="function(s, e) {
								cbp.PerformCallback('Show');
								btnShow.SetEnabled(false);
								btnHide.SetEnabled(true);
							}" />
						</dx:ASPxButton>
					</td>
					<td>
						<dx:ASPxButton ID="btnHide" runat="server" AutoPostBack="False" Text="Hide Data"
							ClientEnabled="False" ClientInstanceName="btnHide">
							<ClientSideEvents Click="function(s, e) {
								cbp.PerformCallback('Hide');    
								btnShow.SetEnabled(true);
								btnHide.SetEnabled(false);
							}" />
						</dx:ASPxButton>
					</td>
				</tr>
			</table>
			&nbsp;<br />
			<dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" ClientInstanceName="cbp"
				OnCallback="ASPxCallbackPanel1_Callback" Width="1000px" Height="700px">
				<PanelCollection>
					<dx:PanelContent runat="server">
					</dx:PanelContent>
				</PanelCollection>
			</dx:ASPxCallbackPanel>
		</div>
	</form>
</body>
</html>