codeunit 50102 Events_Subscriber_CodeUnits
{
    trigger OnRun();
    begin
    end;
    var
    //RELEASE SALES DOCUMENT EVENTS  
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", 'OnBeforeReleaseSalesDoc', '', false, false)]
        local procedure ReleaseSalesDocument_OnBeforeReleaseSalesDoc(VAR SalesHeader : Record "Sales Header"); 
            var 

        begin 
            //Message(SalesHeader."Sell-to Customer Name");
        end;

}