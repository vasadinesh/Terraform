resource "aws_lambda_function" "name" {
    function_name = "LambdaFunction"
    runtime       = "python3.14"
    role          = aws_iam_role.iam_for_lambda.arn
    handler       = "lambda_function.lambda_handler"
}

resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.iam_for_lambda.name
 policy_arn = "arn:aws:iam::141591874817:role/service-role/function-role-ws9gabj6"
}