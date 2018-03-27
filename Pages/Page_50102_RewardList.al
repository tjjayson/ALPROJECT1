page 50102 "Reward List"
{
    PageType = List;
    SourceTable = Reward;
    CardPageId ="Reward List";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Reward ID";"Reward ID")
                {
                    ApplicationArea =All;
                }
                field("Discount Percentage";"Discount Percentage")
                {
                    ApplicationArea =All;
                }
                field(Description;Description)
                {
                    ApplicationArea =All;
                }
                field("Discount Percentage2";"Discount Percentage")
                {
                    ApplicationArea =All;
                }

            }
        }
        area(factboxes)
        {
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
}