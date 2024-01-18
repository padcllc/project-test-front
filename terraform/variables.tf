variable "region"{
	description = "The AWS region"
	default = "us-east-1"
}

variable "amplify_app_name" {
  description = "Name of the Amplify app"
  default     = "my-amplify-app"  # Replace with your desired app name
}

variable "amplify_dev_environment" {
  description = "Amplify development environment name"
  default     = "dev"
}

variable "amplify_staging_environment" {
  description = "Amplify staging environment name"
  default     = "staging"
}

variable "amplify_prod_environment" {
  description = "Amplify production environment name"
  default     = "prod"
}

variable "github_repo_url" {
  description = "URL of your GitHub repository"
  default     = "https://github.com/padcllc/project-test-front.git"
}

variable "dev_domain_name" {
  description = "Domain name for the development environment"
  default     = "dev.example.com"  # Will be added after having one
}

variable "staging_domain_name" {
  description = "Domain name for the staging environment"
  default     = "staging.example.com"  # Will be added after having one
}

variable "prod_domain_name" {
  description = "Domain name for the production environment"
  default     = "www.example.com"  # Will be added after having one
}

