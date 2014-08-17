using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GoogleStyleFileUpload_UploadWithoutButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack && FileUpload2.PostedFile != null)
        {
            if (FileUpload2.PostedFile.FileName.Length > 0)
            {
                FileUpload2.SaveAs(Server.MapPath("~/UploadWithoutButton/image/") + FileUpload2.PostedFile.FileName);

                lblMessage.Text = FileUpload2.PostedFile.FileName + " uploaded successfully !";
                imgViewFile.ImageUrl = "~/UploadWithoutButton/image/" + FileUpload2.FileName;
            }
        }
    }
}