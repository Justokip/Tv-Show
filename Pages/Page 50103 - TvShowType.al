page 50103 "Tv Show Type"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TvShowType;
    CardPageId = "Tv Show Type Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                }
                field("Show Cost";Rec."Show Cost")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }
}
