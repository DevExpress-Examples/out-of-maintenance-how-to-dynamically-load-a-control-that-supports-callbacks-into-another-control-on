using System;
using System.Web.UI;

public partial class _Default: System.Web.UI.Page {
    protected void Page_Init(object sender, EventArgs e) {
        if (Session["Loaded"] != null) {
            LoadUserControl();
            if (!IsPostBack) {
                btnShow.ClientEnabled = false;
                btnHide.ClientEnabled = true;
            }
        }
    }
    protected void ASPxCallbackPanel1_Callback(object source, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        if (e.Parameter == "Show") {
            LoadUserControl();
            Session["Loaded"] = true;
        }
        else {
            UnloadUserControl();
            Session.Remove("Loaded");
        }

    }
    protected void LoadUserControl() {
        Control control = LoadControl("~/DataViewUserControl.ascx");
        control.ID = "uc";
        ASPxCallbackPanel1.Controls.Add(control);
    }
    protected void UnloadUserControl() {
        ASPxCallbackPanel1.Controls.Clear();
    }
}