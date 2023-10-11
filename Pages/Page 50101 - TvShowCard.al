page 50101 "Tv Show Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = TvShow;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic;
                    Tooltip = 'Specifies the number of the tv show.';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = Basic;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ApplicationArea = Basic;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Duration (mins)"; Rec."Duration (mins)") { ApplicationArea = Basic; }
                field("Rating"; Rec."Rating") { ApplicationArea = Basic; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { ApplicationArea = Basic; }
                field("Show Cost."; Rec."Show Cost.") { ApplicationArea = Basic; Editable = false; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}