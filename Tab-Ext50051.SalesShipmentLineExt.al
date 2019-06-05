tableextension 50051 "SalesShipmentLineExt" extends "Sales Shipment Line" 
{
    fields
    {
        field(50000;"DXC No. of Tags";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("DXC Tag Info" WHERE ("Document Type"=CONST(Order),
                                                      "Document No."=FIELD("Order No."),
                                                      "Document Line No."=FIELD("Line No.")));
            Caption = 'No. of Tags';
            Description = 'AOB-68';
            Editable = false;
            FieldClass = FlowField;
        }
    }
}

