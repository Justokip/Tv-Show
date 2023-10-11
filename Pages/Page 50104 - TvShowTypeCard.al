page 50104 "Tv Show Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TvShowType;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Tv Show Type"; Rec."Type")
                {
                    ApplicationArea = All;
                }
                field("Host Code"; Rec."Host Code")
                {
                    ApplicationArea = All;

                }
                field("Episode Count"; Rec."Episode Count")
                {
                    ApplicationArea = All;

                }
                field("Last Modified Date"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;

                }
                field("Show Cost"; Rec."Show Cost")
                {
                    ApplicationArea = All;
                }



            }
        }
    }
}