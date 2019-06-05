codeunit 50006 "DXC Tag Info Handling"
{
    trigger OnRun();
    begin
    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnBeforeInsertEvent', '', false, false)]
    local procedure HandleBeforeInsertOnSalesLine(var Rec : Record "Sales Line";RunTrigger : Boolean);
    begin
        Rec."DXC Order No." := Rec."Document No.";
    end;
}

