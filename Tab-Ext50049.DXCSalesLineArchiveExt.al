tableextension 50049 "DXCSalesLineArchiveExt" extends "Sales Line Archive" 
{
    fields
    {
        field(50000;"DXC No. of Tags";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("DXC Tag Info" WHERE ("Document Type"=FIELD("Document Type"),
                                                      "Document No."=FIELD("Document No."),
                                                      "Document Line No."=FIELD("Line No.")));
            Caption = 'No. of Tags';
            Description = 'AOB-68';
            Editable = false;
            FieldClass = FlowField;
        }
    }
}

