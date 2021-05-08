resource "aws_lambda_function" "lambda" {
    function_name = "${var.project_name}lambda"
    role = aws_iam_role.lambda_role.arn
    image_uri = var.image_url
    memory_size = var.memory
    package_type = "Image"
}

# Permission
resource "aws_lambda_permission" "apigw" {
	action        = "lambda:InvokeFunction"
	function_name = aws_lambda_function.lambda.arn
	principal     = "apigateway.amazonaws.com"

	source_arn = "${aws_apigatewayv2_api.apigw.execution_arn}/*/*"
}