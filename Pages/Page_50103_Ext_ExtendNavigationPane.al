pageextension 50103 ExtendNavigationPane extends "Order Processor Role Center"
{

    actions
    {
        addlast(Sections)
        {
            group("ALPROJECTS")
            {
                Caption = 'ALPROJECTS';
                action("Reward List")
                {
                    RunObject = page "Reward List";
                    ApplicationArea = All;
                } 
            }
        }
    }
}
