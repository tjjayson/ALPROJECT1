codeunit 50100 Events_Subscriber_Tables
{
    trigger OnRun();
    begin
    end;
    var
   itemrec : record Item;
   count : integer;
    //CUSTOMER EVENTS  
    [EventSubscriber(ObjectType::Table, 18, 'OnAfterModifyEvent', '', false, false)]
        local procedure Customer_OnAfterModifyEvent(VAR Rec : Record Customer;VAR xRec : Record Customer;RunTrigger : Boolean); 
            var 

            begin 
                if rec.Name <> xRec.Name Then
                    //Message('Customer modify Event is called');
                    Message(rec.Name);
            end;

    //ITEM EVENTS
    [EventSubscriber(ObjectType::Table,27, 'OnAfterModifyEvent', '', false, false)]
        local procedure Item_OnAfterModifyEvent(VAR Rec : Record Item;VAR xRec : Record Item;RunTrigger : Boolean); 
            var 
        begin 
            if rec.Description <> xRec.Description Then
                message('Item Name modify Event is called');
        end;
    //ITEM FIELD EVENTS
    [EventSubscriber(ObjectType::Table,27, 'OnAfterValidateEvent','Blocked', false, false)]
        local procedure Item_Blocaked_OnAfterValidateEvent(VAR Rec : Record Item;VAR xRec : Record Item;CurrFieldNo : Integer); 
            var 

        begin 
            if rec.Blocked <> xRec.Blocked Then
                Message('Item Blocaked Validate Event is called');
        end;
    
}