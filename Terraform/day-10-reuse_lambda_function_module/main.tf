module "lambda_function" {
  source = "../day-10-lambda_function_module"           

  lambda_role_name        = "my_lambda_role"
  lambda_function_name    = "my_lambda_function"
  lambda_runtime          = "python3.12"
  lambda_handler          = "lambda_function.lambda_handler"
  lambda_timeout          = 900
  lambda_memory_size      = 128
  lambda_zip_file         = "lambda_function.py.zip"
}