output "arn" {
  value       = aws_cloudformation_stack.sns-topic.outputs["ARN"]
  description = "Email SNS topic ARN"
}

output "name" {
  value       = aws_cloudformation_stack.sns-topic.outputs["NAME"]
  description = "Name of the SNS topic"
}

