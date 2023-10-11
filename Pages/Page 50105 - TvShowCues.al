page 50105 "TvShowsCues"
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = TvShowCue;

    layout
    {
        area(Content)
        {
            cuegroup("group1")
            {
                CuegroupLayout = Wide;
                ShowCaption = true;

                field(primaryKey; Rec."Field1")
                {
                    DrillDownPageId = "TvShow List";
                }
                field(Subscribers; Rec."Field2")
                {
                    DrillDownPageId = "Customer List";

                }
                field(Reports; Rec.Field3)
                {

                }
                field("No of users logged on"; Rec."No of users logged on")
                {
                    DrillDownPageId = "Concurrent Session List";
                }


            }
            cuegroup("UserInfo")
            {
                field(Field1; Rec.Field1)
                {

                }
                field(Field2; Rec.Field2) { }
                field(Field3; Rec.Field3) { }
                field(" Tv Types"; Rec." Tv Types")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;


}
