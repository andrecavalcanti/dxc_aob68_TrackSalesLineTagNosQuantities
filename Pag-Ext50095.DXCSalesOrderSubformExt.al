pageextension 50095 "DXCSalesOrderSubformExt" extends "Sales Order Subform" 
{
    layout
    {           
        addafter("No.")
        {
            field("DXC No. of Tags";"DXC No. of Tags")
            {
            }
        }      
    }  

    actions
    {
        addafter("Related Information")
        {
            action(DXCTagInfo)
            {
                Caption = 'Tag Info';
                Image = Info;

                trigger OnAction();
                begin
                    // >> AOB-68
                    DXCShowLineTagInfo;
                    // << AOB-68
                end;
            }
        }

    }    
}

