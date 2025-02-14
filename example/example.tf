module "github_repository" {
    source = "git::https://github.com/BrettOJ/tf-gh-module-github-repository?ref=main"
  name                                    = var.name
  description                             = var.description
  homepage_url                            = var.homepage_url
  private                                 = var.private
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
  default_branch                          = var.default_branch
  archived                                = var.archived
  archive_on_destroy                      = var.archive_on_destroy
  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.allow_update_branch
  topics                                  = var.topics

  pages = {
        source ={
            branch = var.pages_source_branch
            path   = var.pages_source_path
        }
        build_type = var.pages_build_type
        cname      = var.pages_cname
        }

template = {
      owner                = var.template_owner
      repository           = var.template_repository
      include_all_branches = var.template_include_all_branches
    }

security_and_analysis = {
      advanced_security = {
        status = var.security_and_analysis_advanced_security_status
      }
      secret_scanning ={
        status = var.security_and_analysis_secret_scanning_status
      }
      secret_scanning_push_protection ={
        status = var.security_and_analysis_secret_scanning_push_protection_status
      }
    }
}

