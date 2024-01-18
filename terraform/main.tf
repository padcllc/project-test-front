provider "aws" {
  region = var.region  # Replace with your desired AWS region
}

# AWS Amplify App
resource "aws_amplify_app" "my_amplify_app" {
  name       = var.amplify_app_name
  repository = var.github_repo_url

  environment {
    name = var.amplify_dev_environment
  }

  environment {
    name = var.amplify_staging_environment
  }

  environment {
    name = var.amplify_prod_environment
  }
}

# AWS Amplify Branch
resource "aws_amplify_branch" "main_branch" {
  app_id   = aws_amplify_app.my_amplify_app.id
  branch_name = "main"
  environment_variables = {
    # Add any necessary environment variables
  }
}

# AWS Amplify Domain for Development
resource "aws_amplify_domain" "dev_domain" {
  domain_name = var.dev_domain_name
  app_id      = aws_amplify_app.my_amplify_app.id
  subdomain_settings {
    prefix = var.amplify_dev_environment
    branch = aws_amplify_branch.main_branch.branch_name
  }
}

# AWS Amplify Domain for Staging
resource "aws_amplify_domain" "staging_domain" {
  domain_name = var.staging_domain_name
  app_id      = aws_amplify_app.my_amplify_app.id
  subdomain_settings {
    prefix = var.amplify_staging_environment
    branch = aws_amplify_branch.main_branch.branch_name
  }
}

# AWS Amplify Domain for Production
resource "aws_amplify_domain" "prod_domain" {
  domain_name = var.prod_domain_name
  app_id      = aws_amplify_app.my_amplify_app.id
  subdomain_settings {
    prefix = var.amplify_prod_environment
    branch = aws_amplify_branch.main_branch.branch_name
  }
}

