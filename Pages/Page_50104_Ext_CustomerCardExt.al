pageextension 50104 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        // The "addlast" construct adds the field control as the last control in the General 
        // group.
        addafter(Name)
        {
            field(RewardID;RewardID)
            {
                ApplicationArea = All;
                // Lookup property is used to provide a lookup window for 
                // a text box. It is set to true, because a lookup for 
                // the field is needed.
                Lookup = true;
            }
        }
    }
    actions
    {
        // The "addfirst" construct will add the action as the first action
        // in the Navigation group.
        addfirst(Navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;

                // "RunObject" sets the "Reward List" page as the object 
                // that will run when the action is activated.
                RunObject = page "Reward List";
            }
        }
    }
    var
        myInt : Integer;
}