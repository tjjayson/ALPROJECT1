tableextension 50101 CustomerTableExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50001;RewardID;Code[30])
        {
           TableRelation            = Reward."Reward ID";
           ValidateTableRelation    = true;
            trigger OnValidate();
                begin
                    // If the "Reward ID" changed and the new record is blocked, an error is thrown. 
                    if (Rec.RewardID <> xRec.RewardID) and
                        (Rec.Blocked <> Blocked::" ") then
                        begin
                            Error('Cannot update the rewards status of a blocked customer.')
                        end;
                end;
        }
        field(50000;RewardPoints;Integer)
        {
            MinValue = 0;
        } 
    }
    
    var
        //myInt : Integer;
}