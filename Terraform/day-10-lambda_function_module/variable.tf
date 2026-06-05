variable "lambda_role_name" {
  default = "lambda_execution_role"
}

variable "lambda_function_name" {
  default = "my_lambda_function"
}

variable "lambda_runtime" {
  default = "python3.12"
}

variable "lambda_handler" {
  default = "lambda_function.lambda_handler"
}

variable "lambda_timeout" {
  default = 900
}

variable "lambda_memory_size" {
  default = 128
}

variable "lambda_zip_file" {
  default = "lambda_function.py.zip"
}