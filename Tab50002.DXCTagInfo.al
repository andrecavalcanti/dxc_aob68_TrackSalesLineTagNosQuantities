table 50002 "DXC Tag Info"
{
    Caption = 'Tag Info';
    DrillDownPageID = "DXC Tag Info";
    LookupPageID = "DXC Tag Info";

    fields
    {
        field(10;"Document Type";Option)
        {
            CaptionML = ENU='Document Type',
                        ESM='Tipo documento',
                        FRC='Type de document',
                        ENC='Document Type';
            OptionCaptionML = ENU='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,,,,,,Reservation',
                              ESM='Cotización,Pedido,Factura,Nota crédito,Pedido abierto,Devolución',
                              FRC='Devis,Commande,Facture,Note de crédit,Commande permanente,Retour',
                              ENC='Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,,,,,,Reservation;
        }
        field(20;"Document No.";Code[20])
        {
            CaptionML = ENU='Document No.',
                        ESM='Nº documento',
                        FRC='N° de document',
                        ENC='Document No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type"=FIELD("Document Type"));
        }
        field(30;"Document Line No.";Integer)
        {
            CaptionML = ENU='Line No.',
                        ESM='Nº línea',
                        FRC='N° ligne',
                        ENC='Line No.';
        }
        field(40;"Line No.";Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50;"Tag No.";Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(60;"Length/Qty.";Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(70;Comment;Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Document Type","Document No.","Document Line No.","Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

