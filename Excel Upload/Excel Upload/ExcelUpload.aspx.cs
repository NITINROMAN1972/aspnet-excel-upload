using System;
using System.Configuration;

public partial class Excel_Upload_ExcelUpload : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["Ginie"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnExclUpload_Click(object sender, EventArgs e)
    {
        if (fileExcel.HasFile)
        {
            string FileExtension = System.IO.Path.GetExtension(fileExcel.FileName);

            if (FileExtension == ".xlsx" || FileExtension == ".xls")
            {
                string strFileName = DateTime.Now.Day.ToString() + '_' + DateTime.Now.Month.ToString() + '_' + DateTime.Now.Year.ToString() + '_' + DateTime.Now.Hour.ToString() + '_' +
                                     DateTime.Now.Minute.ToString() + '_' + fileExcel.FileName.ToString();

                string filePath = Server.MapPath("~/Upload/" + strFileName);

                fileExcel.SaveAs(filePath);
            }
        }
    }
}