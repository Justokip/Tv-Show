page 50107 "Playlist list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Tv Show Playlist";
    CardPageId = "Playlist Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Show No"; Rec."Show No")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Show Type"; Rec."Show Type")
                {
                    ApplicationArea = All;

                }
                field(Producer; Rec.Producer)
                {
                    ApplicationArea = All;

                }
                field("Duration (hrs)"; Rec."Duration (hrs)")
                {
                    ApplicationArea = All;

                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = All;

                }
                field("Release Date"; Rec."Release Date")
                {
                    ApplicationArea = All;

                }
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