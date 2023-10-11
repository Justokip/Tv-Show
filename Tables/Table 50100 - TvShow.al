table 50100 "TvShow"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            Editable = false;



        }
        field(21; "Type"; Code[20])
        {
            TableRelation = TvShowType;
            trigger OnValidate()
            var
                Tvtypes: Record "TvShowType";
            begin
                if Tvtypes.Get(Type) then begin
                    Type := Tvtypes.Type;
                    Name := Tvtypes.Name;
                    "Host Code" := Tvtypes."Host Code";
                    "Show Cost." := Tvtypes."Show Cost";

                end;


            end;

        }

        field(30; "Name"; Text[30])
        {
            // TableRelation = TvShowType;
            // trigger OnValidate()
            // var
            //     Tvtypes: Record "TvShowType";
            // begin
            //     if Tvtypes.Get(Name) then begin
            //         Name := Tvtypes.Name;
            //         "Episode Count" := Tvtypes."Episode Count";
            //     end;


            // end;
        }

        field(20; "Description"; Text[50])
        {

        }



        field(40; "Host Code"; Code[20])
        {

        }
        field(50; "Host Name"; Text[40])
        {

        }
        field(60; "Duration (mins)"; Integer) { }
        field(70; "Rating"; Decimal) { }
        field(80; "Advertising Revenue"; Decimal) { }
        field(90; "Show Cost."; Decimal) { }
        field(100; "Episode Count"; Integer) { }
        field(110; "Last Modified Date"; DateTime) { }
        field(91; "No. Si"; Code[20]) { }



    }
    var
        NumberSeriesMgt: Codeunit NoSeriesManagement;
        SalesSetUpMtg: Record "Tv Show Setup";

    trigger OnInsert()

    begin
        SalesSetUpMtg.Get();
        if Rec."No." = '' then
            NumberSeriesMgt.TestManual(SalesSetUpMtg."No.Series");
        NumberSeriesMgt.InitSeries(SalesSetUpMtg."No.Series", xRec."No. Si", 0D, Rec."No.", "No. Si");
    end;


}