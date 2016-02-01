using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    SelectShowsReference.SelectShowsServiceClient db = new SelectShowsReference.SelectShowsServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        LoadDropDown();
        }
    }
    protected void DropDownListShow_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGrid();
    }

    protected void LoadDropDown() {
        string[] venues = db.GetVenues();
        DropDownListShow.DataSource = venues;
        DropDownListShow.DataBind();
        DropDownListShow.Items.Insert(0, "Choose a Venue");
    
    }

    protected void FillGrid() {
        string venue = DropDownListShow.SelectedItem.Text;
        SelectShowsReference.ShowLite[] shows = db.GetShowByVenue(venue);
        GridViewShows.DataSource = shows;
        GridViewShows.DataBind();

    
    }
}