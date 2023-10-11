
table 50103 "TvShowCue"
{
    DataClassification = CustomerContent;
    DataPerCompany = true;

    fields
    {
        field(1; "Field1"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unread reports';

        }

        field(2; "Field2"; Integer)
        {

            //FieldClass = FlowField;
            Caption = 'Total Costs this Month';
            //CalcFormula = sum(TvShow."Show Cost.");

        }

        field(3; "Field3"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Subscribers';
        }
        field(5; "No of users logged on"; Duration) { }
    field(6; " Tv Types"; Integer)
    {
        //DataClassification = ToBeClassified;
        FieldClass = FlowField;
        CalcFormula = count(TvShowType);
    }
    }

    keys
    {
        key(PK; "Field1")
        {
            Clustered = true;
        }
    }
}
