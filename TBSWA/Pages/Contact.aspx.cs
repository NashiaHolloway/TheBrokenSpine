using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TBSWA.App_Code;
using System.IO;
using System.Web.Script.Serialization;

namespace TBSWA
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Person p = new Person();
                p.FirstName = "John";
                p.LastName = "Adams";
                p.address.Address1 = "100 Pennsylvania Ave";
                p.address.Address2 = "apt 12";
                p.address.Zip = "20013";
                p.address.City = "NW";
                p.address.State = "Washington DC";
                p.address.Country = "USA";

                JavaScriptSerializer JSS = new JavaScriptSerializer();

                string JSONObject = JSS.Serialize(p);
                lblJSON.Text = JSONObject;
            }
            else
            {
                HttpCookie JSON = Request.Cookies.Get("JSON");
                if (JSON != null)
                {
                    JavaScriptSerializer JSS = new JavaScriptSerializer();
                    Person p = JSS.Deserialize<Person>(lblJSON.Text);
                    txtFname.Text = p.FirstName;
                    txtLName.Text = p.LastName;
                    txtAdd1.Text = p.address.Address1;
                    txtAdd2.Text = p.address.Address2;
                    txtCity.Text = p.address.City;
                    txtCountry.Text = p.address.Country;
                    txtState.Text = p.address.State;
                    txtZip.Text = p.address.Zip;
                }
            }
        }
    }
}