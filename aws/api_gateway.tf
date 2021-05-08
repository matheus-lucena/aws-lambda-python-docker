resource "aws_apigatewayv2_api" "apigw" {
  name          = "${var.project_name}_apigw"
  protocol_type = "HTTP"
  target        = aws_lambda_function.lambda.arn
  cors_configuration{
      max_age = 1
  }
}

output "ENDPOINT" {
  description = "The ARN of the API"
  value       = aws_apigatewayv2_api.apigw.api_endpoint
}