using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class CrearCuenta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ActivateStep(Object sender, EventArgs e)
    {
        ListBox1.DataSource = Roles.GetAllRoles();
        ListBox1.DataBind();
    }
    public void DeactiveStep(Object sender, EventArgs e)
    {
        string[] st = new string[1];
        st[0] = User.Identity.Name;
        Roles.AddUsersToRole(st, ListBox1.SelectedValue);
    }


}