table 50100 Reward
{
    DataClassification  = ToBeClassified;
    LookupPageId        = "Reward List"; 
    fields
    {
        field(1;"Reward ID";Code[30])
        {
            DataClassification = ToBeClassified;
            
            trigger OnValidate();
            begin
                
            end;
        }
         field(2;Description;Text[250])
        {
            DataClassification = ToBeClassified;
            NotBlank =true;
            trigger OnValidate();
            begin
                
            end;
        }
        field(3;"Discount Percentage";Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank =true;
            MinValue = 0;
            MaxValue =100;
            DecimalPlaces =2;
            
            trigger OnValidate();
            begin
                
            end;
        }
        field(4;"No. Of Records";Integer)
        {
            /*DataClassification = ToBeClassified;
            NotBlank =true;
            MinValue = 0;
            MaxValue =100;
            DecimalPlaces =2;
            */
            FieldClass = FlowField;
            CalcFormula = count(Reward);
            Editable = false;
            trigger OnValidate();
            begin
                
            end;
        }
    }

    keys
    {
        key(PK;"Reward ID")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}