Configuration TannerBaseLine
{
    Node localhost
    {
        FIle BaselineFolder
        {
            DestinationPath = "C:\CompanyBaseline"
            Type            = "Directory"
            Ensure          = "Present"
        }       
    }
}