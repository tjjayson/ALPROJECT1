// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
 actions 

    { 

        addfirst("&Customer") 

        { 

            action("Reward Levels") 

            { 

                ApplicationArea = All; 

                Image = CustomerRating; 

                Promoted = true; 

                PromotedCategory = Process; 

                PromotedIsBig = true; 



                trigger OnAction(); 

                begin 

                    if CustomerRewardsExtMgt.IsCustomerRewardsActivated then 

                        CustomerRewardsExtMgt.OpenRewardsLevelPage 

                    else 

                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard; 

                end; 

            } 

        } 

    } 



    var 

        CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt.";     
}