tableextension 50050 "DXCSalesLineExt" extends "Sales Line" 
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

    procedure DXCShowLineTagInfo();
    var
      DXCTagInfo : Record "DXC Tag Info";
      DXCTagInfoEditablePage :Page "DXC Tag Info Editable";
      
    begin
      Rec.TESTFIELD("Document No.");
      Rec.TESTFIELD("Line No.");
      DXCTagInfo.SETRANGE("Document Type","Document Type");
      DXCTagInfo.SETRANGE("Document No.","Document No.");
      DXCTagInfo.SETRANGE("Document Line No.","Line No.");
      DXCTagInfoEditablePage.SETTABLEVIEW(DXCTagInfo);
      DXCTagInfoEditablePage.RUNMODAL;  
    end;

}

