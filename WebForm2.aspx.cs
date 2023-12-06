using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user information is available in the Session
            if (Session["UserName"] == null || Session["UserDOB"] == null)
            {
                // Redirect to Page1 if information is not available
                Response.Redirect("WebForm1.aspx");
            }
        }

        // Make the CalculateAge method protected or public
        protected int CalculateAge(string dob)
        {
            DateTime birthDate;

            // Parse the date in the new format "DD/MM/YYYY"
            if (DateTime.TryParseExact(dob, "dd/MM/yyyy", null, System.Globalization.DateTimeStyles.None, out birthDate))
            {
                DateTime currentDate = DateTime.Now;
                int age = currentDate.Year - birthDate.Year;

                // Adjust age if the birthday hasn't occurred yet this year
                if (currentDate.Month < birthDate.Month || (currentDate.Month == birthDate.Month && currentDate.Day < birthDate.Day))
                {
                    age--;
                }

                return age;
            }
            else
            {
                // Handle invalid date format
                // Display an error message or redirect to WebForm1
                Response.Redirect("WebForm1.aspx");
                return -1; 
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}