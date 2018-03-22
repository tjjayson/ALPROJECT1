page 50101 "Reward Card"
{
    PageType = Card;
    SourceTable = Reward;
    
    layout
    {
        area(content)
        {
            group(Reward)
            {
                field("Reward Id";"Reward ID")
                {
                   ApplicationArea = All; 
                }
                 field("Discount Percentage";"Discount Percentage")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                   ApplicationArea = All; 
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}