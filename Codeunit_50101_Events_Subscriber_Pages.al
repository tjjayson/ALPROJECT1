codeunit 50101 Events_Subscriber_Pages
{
    trigger OnRun();
    begin
    end;
    var
    // SALES ORDER SUBFORM EVENTS  
    [EventSubscriber(ObjectType::Page, 46, 'OnAfterGetCurrRecordEvent', '', false, false)]
        local procedure SalesOrderSubform_OnAfterGetCurrRecordEvent(VAR Rec : Record "Sales Line"); 
            var 
        begin 
            //if rec.Name <> xRec.Name Then
         //Message('Customer modify Event is called');
        end;
    // SALES ORDER SUBFORM FIELD CONTROL EVENTS  
    [EventSubscriber(ObjectType::Page, 46, 'OnAfterValidateEvent', 'Quantity', false, false)]
        local procedure SalesOrderSubform_Quantity_OnAfterValidateEvent(VAR Rec : Record "Sales Line";VAR xRec : Record "Sales Line"); 
            var 
        begin 
            if rec.Quantity <> xRec.Quantity Then
                Message('Sasles Order Line Quantity Event is called');
        end;
}