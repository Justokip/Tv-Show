page 50100 "TvShow List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "TvShow";
    CardPageId = "Tv Show Card";
    ApplicationArea = all;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field(Type; Rec.Type) { ApplicationArea = Basic; }
                field("Name"; Rec."Name") { ApplicationArea = Basic; }
                field("Host Code"; Rec."Host Code") { ApplicationArea = Basic; }
                field("Host Name"; Rec."Host Name") { ApplicationArea = Basic; }
                field("Duration (mins)"; Rec."Duration (mins)") { ApplicationArea = Basic; }
                field("Rating"; Rec."Rating") { ApplicationArea = Basic; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = Basic; }
                field("Show Cost."; Rec."Show Cost.") { ApplicationArea = Basic; }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}