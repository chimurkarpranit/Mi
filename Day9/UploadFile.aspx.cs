using System;
using System.IO;
using System.Configuration;

namespace ADV_ASP_Day12_13
{
    public partial class UploadFile : System.Web.UI.Page
    {
        ConstantMessages objconst;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string filePath, fileName;
            try
            {
                //check to make sure a file is selected
                if (InpFileUpload.HasFile)
                {
                    if (hdnTestValue.Value == "T")
                    {
                        //create the path to save the file to
                        filePath = ConfigurationManager.AppSettings["Path"].ToString();
                        fileName = Path.Combine(Server.MapPath(filePath), InpFileUpload.FileName);
                        //save the file to our path
                        InpFileUpload.SaveAs(fileName);
                        objconst = new ConstantMessages();
                        ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('" + objconst.strFileUploadSuccessfully + "');", true);
                    }
                }
            }
            catch (Exception)
            {
                objconst = new ConstantMessages();
                Response.Redirect(objconst.strErrorPage);//Error Page
            }
            finally
            {
                objconst = null;
            }
        }
    }
}