page 50108 "Playlist Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Tv Show Playlist";
    PromotedActionCategories = 'Post,New,Create,Approvals';

    layout
    {
        area(Content)
        {
            group(General)
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
    }

    actions
    {
        area(Processing)
        {
            action(Approvals)
            {
                ApplicationArea = All;
                Image = SendApprovalRequest;
                Promoted = true;
                PromotedCategory = Category4;
                Caption = 'Send Approval';

                trigger OnAction()
                begin

                end;
            }
            action(Approvalss)
            {
                ApplicationArea = All;
                Image = CancelApprovalRequest;
                Promoted = true;
                PromotedCategory = Category4;
                Caption = 'Cancel Approval';

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}