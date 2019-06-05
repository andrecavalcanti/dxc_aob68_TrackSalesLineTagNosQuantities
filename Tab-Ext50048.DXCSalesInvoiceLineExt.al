tableextension 50048 "DXCSalesInvoiceLineExt" extends "Sales Invoice Line" 
{   
    fields
    {
        field(50000;"DXC No. of Tags";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("DXC Tag Info" WHERE ("Document Type"=CONST(Order),
                                                      "Document No."=FIELD("DXC Order No."),
                                                      "Document Line No."=FIELD("Line No.")));
            Caption = 'No. of Tags';
            Description = 'AOB-68';
            Editable = false;
            FieldClass = FlowField;
        }

        field(50001;"DXC Order No.";Code[20])
        {
            CaptionML = ENU='Order No.',
                        ESM='Nº pedido',
                        FRC='N° commande',
                        ENC='Order No.';
            DataClassification = ToBeClassified;
            Description = 'AOB-68';
        }
    }

}

