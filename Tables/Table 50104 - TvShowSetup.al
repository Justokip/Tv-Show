table 50104 "Tv Show Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Pk; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "No.Series"; Code[20])
        {
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Pk; Pk)
        {
            Clustered = true;
        }
    }

}