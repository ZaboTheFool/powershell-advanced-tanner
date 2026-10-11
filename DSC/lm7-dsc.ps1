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
    
        File BaslineFile
        {
            DestinationPath = "C:\CompanyBaseline\Baseline.txt"
            Contents        = "NWTC Standard Configuration"
            Type            = "File"
            Ensure          = "Present"
            DependsOn       = "[File]BaselineFolder"
        }
    }
}