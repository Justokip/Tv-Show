report 50100 "TvShowReport"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'Tvshow.docx';


    dataset
    {
        dataitem(DataItemName; "TvShow")
        {
            column(No_; "No.")
            {

            }
            column(Type; Type) { }
            column("Name"; "Name") { }
            column(Host_Code; "Host Code") { }
            column(HostName; "Host Name") { }
            column(Duration__mins_; "Duration (mins)") { }
            column("Rating"; "Rating") { }
            column(Advertising_Revenue; "Advertising Revenue") { }
            column(Show_Cost_; "Show Cost.") { }
            column(Logo; Company.Picture) { }

        }

        dataitem(User; User)
        {
            column(User_Name; "User Name") { }

        }
    }
    var
        Company: Record "Company Information";

    trigger OnInitReport()
    var
        Company: Record "Company Information";
    begin
        Company.Get();
        Company.CalcFields(Picture);
    end;
}