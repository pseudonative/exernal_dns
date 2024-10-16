terraform {
  source = "git::https://github.com/pseudonative/external_dns_modules.git//vpc?ref=main"
}

inputs = {
  aws_region = "us-east-1"  # Example region
  assume_role_arn = "arn:aws:iam::520291287938:role/ProdFullAccess"
  session_name    = "Terraform-ProdUpdate"
  cidr_block      = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  azs             = ["us-east-1a", "us-east-1b"]
  tags = {
    Environment = "staging"
    Owner       = "team"
  }
}
