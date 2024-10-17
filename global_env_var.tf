variable "github_repo_url" {
  description = "The URL of the GitHub repository"
  type        = string
  default     = "https://github.com/soundiata12/Fullpipeline-project.git"
}

variable "github_credential_id" {
  description = "GitHub credential ID or token"
  sensitive   = true
}

provider "github" {
  token = var.github_credential_id
}

output "repository_url" {
  value = var.github_repo_url
}