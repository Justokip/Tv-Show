page 50102 "Tv Show Role"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

            part(Headline; "Headline RC Administrator")
            {
                ApplicationArea = Basic, Suite;
            }
            part(TvshowCues; TvShowsCues)
            {
                ApplicationArea = Basic, Suite;
            }
            part(kid; "My Accounts")
            {
                ApplicationArea = Basic, Suite;
            }

        }
    }

    actions
    {
        area(Creation)
        {
            action(ActionBarAction)
            {
                RunObject = Page "TvShow List";

            }
        }
        area(Sections)
        {
            group(SectionsGroupName)
            {
                Caption = 'Tv Station';
                action(SectionsAction)
                {
                    RunObject = Page "TvShow List";
                    Caption = 'Tv Show';
                    ApplicationArea = all;
                }
                action(Eem)
                {
                    RunObject = Page "Tv Show Type";
                    Caption = 'TvShow Type';
                    ApplicationArea = all;
                }

            }

            group(SectionsName)
            {
                Caption = 'Report';
                action(Section1)
                {
                    RunObject = report TvShowReport;
                    Caption = 'Report';
                    ApplicationArea = all;
                }

            }
            group(SectionsGroup)
            {
                Caption = 'TvShow Setup';
                action(st)
                {
                    RunObject = page "TvShow Setup Page";
                    Caption = 'Tv Show Setup';
                    ApplicationArea = all;
                }


            }
        }
        area(Embedding)
        {

            action(Em1)
            {
                RunObject = Page "Customer List";
                Caption = 'Subscribers';
                ApplicationArea = all;
            }
            action(Em2)
            {
                RunObject = Page Currencies;
                Caption = 'Currencies';
                ApplicationArea = all;
            }
        }
    }
}
profile Tv
{
    Caption = 'Tv Show';
    RoleCenter = "Tv Show Role";
}

