{
  "AWSTemplateFormatVersion": "2010-09-09",

  "Resources" : {
    "EmailSNSTopic": {
      "Type" : "AWS::SNS::Topic",
      "Properties" : {
        "DisplayName" : "${display_name}",
        "Subscription": [
          {
           "Endpoint" : "${email_address}",
           "Protocol" : "${protocol}"
          }
        ]
      }
    }
  },

  "Outputs" : {
    "ARN" : {
      "Description" : "Email SNS Topic ARN",
      "Value" : { "Ref" : "EmailSNSTopic" }
    },
    "NAME" : {
      "Description" : "Name of the SNS Topic",
      "Value" : { "Fn::GetAtt" : ["EmailSNSTopic", "TopicName"]}
    }
  }
}
