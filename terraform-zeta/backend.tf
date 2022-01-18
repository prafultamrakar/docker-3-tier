# terraform {
#   backend "s3" {
#     region         = "us-east-1"
#     bucket         = "my-bucket-name-for-terraform-state"
#     key            = "terraform.tfstate"
#     dynamodb_table = "my-table-name-for-terraform-state-lock"
#     encrypt        = true
#   }
# }