Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		If Session("Loaded") IsNot Nothing Then
			LoadUserControl()
			If (Not IsPostBack) Then
				btnShow.ClientEnabled = False
				btnHide.ClientEnabled = True
			End If
		End If
	End Sub
	Protected Sub ASPxCallbackPanel1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.ASPxClasses.CallbackEventArgsBase)
		If e.Parameter = "Show" Then
			LoadUserControl()
			Session("Loaded") = True
		Else
			UnloadUserControl()
			Session.Remove("Loaded")
		End If

	End Sub
	Protected Sub LoadUserControl()
		Dim control As Control = LoadControl("~/DataViewUserControl.ascx")
		control.ID = "uc"
		ASPxCallbackPanel1.Controls.Add(control)
	End Sub
	Protected Sub UnloadUserControl()
		ASPxCallbackPanel1.Controls.Clear()
	End Sub
End Class