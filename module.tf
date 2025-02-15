resource "github_repository" "github_repo" {
  name                                    = var.name
  description                             = var.description
  homepage_url                            = var.homepage_url
  visibility                              = var.visibility
  has_issues                              = var.has_issues
  has_projects                            = var.has_projects
  has_wiki                                = var.has_wiki
  is_template                             = var.is_template
  allow_merge_commit                      = var.allow_merge_commit
  allow_squash_merge                      = var.allow_squash_merge
  allow_rebase_merge                      = var.allow_rebase_merge
  allow_auto_merge                        = var.allow_auto_merge
  delete_branch_on_merge                  = var.delete_branch_on_merge
  web_commit_signoff_required             = var.web_commit_signoff_required
  has_downloads                           = var.has_downloads
  auto_init                               = var.auto_init
  gitignore_template                      = var.gitignore_template
  license_template                        = var.license_template
  archived                                = var.archived
  archive_on_destroy                      = var.archive_on_destroy
  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.allow_update_branch
  topics                                  = var.topics

  dynamic "pages" {
    for_each = var.pages != null ? [var.pages] : []
    content {
      source {
        branch = var.pages.source.branch
        path   = var.pages.source.path
      }
      build_type = var.pages.build_type
      cname      = var.pages.cname
    }
  }

  dynamic "template" {
    for_each = var.template != null ? [var.template] : []
    content {
      owner                = var.template.owner
      repository           = var.template.repository
      include_all_branches = var.template.include_all_branches
    }
  }

  dynamic "security_and_analysis" {
    for_each = var.security_and_analysis != null ? [var.security_and_analysis] : []
    content {
      advanced_security {
        status = var.security_and_analysis.advanced_security.status
      }
      secret_scanning {
        status = var.security_and_analysis.secret_scanning.status
      }
      secret_scanning_push_protection {
        status = var.security_and_analysis.secret_scanning_push_protection.status
      }
    }
  }
}


resource "github_repository_environment" "github_repo_env" {

  for_each = var.environments != null ? var.environments : {}

  environment         = lookup(each.value, "environment", null)
  repository          = github_repository.github_repo.name
  prevent_self_review = lookup(each.value, "prevent_self_review", null)
  reviewers {
    users = lookup(each.value, "reviewer_users", [])
  }
  deployment_branch_policy {
    protected_branches     = lookup(each.value, "deployment_branch_policy_protected_branches", null)
    custom_branch_policies = lookup(each.value, "deployment_branch_policy_custom_branch_policies", null)
  }
  depends_on = [ github_repository.github_repo ]
}


resource "github_repository_environment_deployment_policy" "github_repo_env_deployment_policy" {

  for_each = var.deployment_policies != null ? var.deployment_policies : {}

  repository     = github_repository.github_repo.name
  environment    = github_repository_environment.github_repo_env[each.key].environment
  branch_pattern = lookup(each.value, "branch_pattern", null)
  tag_pattern    = lookup(each.value, "tag_pattern", null)
  depends_on = [ github_repository_environment.github_repo_env ]
}