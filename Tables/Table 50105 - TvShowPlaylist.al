table 50105 "Tv Show Playlist"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Show No"; Code[20])
        {
            Editable = false;


        }
        field(2; Name; Text[30])
        {


        }
        field(3; "Show Type"; Code[20])
        {

        }
        field(4; Producer; Text[30])
        {

        }
        field(5; "Duration (hrs)"; Integer)
        {

        }
        field(6; "Royalty Cost"; Integer)
        {

        }
        field(7; "Release Date"; DateTime)
        {

        }

    }

    keys
    {
        key(Key1; "Show No")
        {
            Clustered = true;
        }
    }
    var
        NoSeriesmgt: Codeunit NoSeriesManagement;

        playlistNoSeries: Record "Tv Show Setup";

    trigger OnInsert()
    begin
        if "Show No" = '' then begin
            playlistNoSeries.Get();
            playlistNoSeries.TestField("No.Series");
            NoSeriesMgt.InitSeries(playlistNoSeries.Name, playlistNoSeries."No.Series", WorkDate(), "Show No", playlistNoSeries.Name);
        end;
    end;

}