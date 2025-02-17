# tf-gh-module-github-repository
Terraform module to create a GitHub repository

---
created: 2025-02-17T14:52:37 (UTC +08:00)
tags: []
source: https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
author: 
---

# github_repository | Resources | integrations/github | Terraform | Terraform Registry

> ## Excerpt
> This resource allows you to create and manage repositories within your
GitHub organization or personal account.

---
This resource allows you to create and manage repositories within your GitHub organization or personal account.

## [Example Usage](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#example-usage)

```hcl
resource "github_repository" "example" { name = "example" description = "My awesome codebase" visibility = "public" template { owner = "github" repository = "terraform-template-module" include_all_branches = true } }
```

## [Example Usage with GitHub Pages Enabled](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#example-usage-with-github-pages-enabled)

```hcl
resource "github_repository" "example" { name = "example" description = "My awesome web page" private = false pages { source { branch = "master" path = "/docs" } } }
```

## [Argument Reference](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#name-1) - (Required) The name of the repository.
    
-   [`description`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#description-1) - (Optional) A description of the repository.
    
-   [`homepage_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#homepage_url-1) - (Optional) URL of a page describing the project.
    
-   [`private`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#private-1) - (Optional) Set to `true` to create a private repository. Repositories are created as public (e.g. open source) by default.
    
-   [`visibility`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#visibility-1) - (Optional) Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be `internal`. The `visibility` parameter overrides the `private` parameter.
    
-   [`has_issues`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#has_issues-1) - (Optional) Set to `true` to enable the GitHub Issues features on the repository.
    
-   [`has_discussions`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#has_discussions-1) - (Optional) Set to `true` to enable GitHub Discussions on the repository. Defaults to `false`.
    
-   [`has_projects`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#has_projects-1) - (Optional) Set to `true` to enable the GitHub Projects features on the repository. Per the GitHub [documentation](https://developer.github.com/v3/repos/#create) when in an organization that has disabled repository projects it will default to `false` and will otherwise default to `true`. If you specify `true` when it has been disabled it will return an error.
    
-   [`has_wiki`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#has_wiki-1) - (Optional) Set to `true` to enable the GitHub Wiki features on the repository.
    
-   [`is_template`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#is_template-1) - (Optional) Set to `true` to tell GitHub that this is a template repository.
    
-   [`allow_merge_commit`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#allow_merge_commit-1) - (Optional) Set to `false` to disable merge commits on the repository.
    
-   [`allow_squash_merge`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#allow_squash_merge-1) - (Optional) Set to `false` to disable squash merges on the repository.
    
-   [`allow_rebase_merge`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#allow_rebase_merge-1) - (Optional) Set to `false` to disable rebase merges on the repository.
    
-   [`allow_auto_merge`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#allow_auto_merge-1) - (Optional) Set to `true` to allow auto-merging pull requests on the repository.
    
-   [`squash_merge_commit_title`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#squash_merge_commit_title-1) - (Optional) Can be `PR_TITLE` or `COMMIT_OR_PR_TITLE` for a default squash merge commit title. Applicable only if `allow_squash_merge` is `true`.
    
-   [`squash_merge_commit_message`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#squash_merge_commit_message-1) - (Optional) Can be `PR_BODY`, `COMMIT_MESSAGES`, or `BLANK` for a default squash merge commit message. Applicable only if `allow_squash_merge` is `true`.
    
-   [`merge_commit_title`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#merge_commit_title-1) - Can be `PR_TITLE` or `MERGE_MESSAGE` for a default merge commit title. Applicable only if `allow_merge_commit` is `true`.
    
-   [`merge_commit_message`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#merge_commit_message-1) - Can be `PR_BODY`, `PR_TITLE`, or `BLANK` for a default merge commit message. Applicable only if `allow_merge_commit` is `true`.
    
-   [`delete_branch_on_merge`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#delete_branch_on_merge-1) - (Optional) Automatically delete head branch after a pull request is merged. Defaults to `false`.
    
-   [`web_commit_signoff_required`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#web_commit_signoff_required-1) - (Optional) Require contributors to sign off on web-based commits. See more [here](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/managing-repository-settings/managing-the-commit-signoff-policy-for-your-repository). Defaults to `false`.
    
-   [`has_downloads`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#has_downloads-1) - (Optional) Set to `true` to enable the (deprecated) downloads features on the repository.
    
-   [`auto_init`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#auto_init-1) - (Optional) Set to `true` to produce an initial commit in the repository.
    
-   [`gitignore_template`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#gitignore_template-1) - (Optional) Use the [name of the template](https://github.com/github/gitignore) without the extension. For example, "Haskell".
    
-   [`license_template`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#license_template-1) - (Optional) Use the [name of the template](https://github.com/github/choosealicense.com/tree/gh-pages/_licenses) without the extension. For example, "mit" or "mpl-2.0".
    
-   [`default_branch`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#default_branch-1) - (Optional) (Deprecated: Use `github_branch_default` resource instead) The name of the default branch of the repository. **NOTE:** This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository. This means a user will have to omit this parameter from the initial repository creation and create the target branch inside of the repository prior to setting this attribute.
    
-   [`archived`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#archived-1) - (Optional) Specifies if the repository should be archived. Defaults to `false`. **NOTE** Currently, the API does not support unarchiving.
    
-   [`archive_on_destroy`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#archive_on_destroy-1) - (Optional) Set to `true` to archive the repository instead of deleting on destroy.
    
-   [`pages`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#pages-1) - (Optional) The repository's GitHub Pages configuration. See [GitHub Pages Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#github-pages-configuration) below for details.
    
-   [`security_and_analysis`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#security_and_analysis-1) - (Optional) The repository's [security and analysis](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-security-and-analysis-settings-for-your-repository) configuration. See [Security and Analysis Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#security-and-analysis-configuration) below for details.
    
-   [`topics`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#topics-1) - (Optional) The list of topics of the repository.
    

-   [`template`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#template-1) - (Optional) Use a template repository to create this resource. See [Template Repositories](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#template-repositories) below for details.
    
-   [`vulnerability_alerts`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#vulnerability_alerts-1) (Optional) - Set to `true` to enable security alerts for vulnerable dependencies. Enabling requires alerts to be enabled on the owner level. (Note for importing: GitHub enables the alerts on public repos but disables them on private repos by default.) See [GitHub Documentation](https://help.github.com/en/github/managing-security-vulnerabilities/about-security-alerts-for-vulnerable-dependencies) for details. Note that vulnerability alerts have not been successfully tested on any GitHub Enterprise instance and may be unavailable in those settings.
    
-   [`ignore_vulnerability_alerts_during_read`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#ignore_vulnerability_alerts_during_read-1) (Optional) - Set to `true` to not call the vulnerability alerts endpoint so the resource can also be used without admin permissions during read.
    
-   [`allow_update_branch`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#allow_update_branch-1) (Optional) - Set to `true` to always suggest updating pull request branches.
    

### [GitHub Pages Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#github-pages-configuration)

The `pages` block supports the following:

-   [`source`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#source-1) - (Optional) The source branch and directory for the rendered Pages site. See [GitHub Pages Source](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#github-pages-source) below for details.
    
-   [`build_type`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#build_type-1) - (Optional) The type of GitHub Pages site to build. Can be `legacy` or `workflow`. If you use `legacy` as build type you need to set the option `source`.
    
-   [`cname`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#cname-1) - (Optional) The custom domain for the repository. This can only be set after the repository has been created.
    

#### GitHub Pages Source

The `source` block supports the following:

-   [`branch`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#branch-1) - (Required) The repository branch used to publish the site's source files. (i.e. `main` or `gh-pages`.
    
-   [`path`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#path-1) - (Optional) The repository directory from which the site publishes (Default: `/`).
    

### [Security and Analysis Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#security-and-analysis-configuration)

The `security_and_analysis` block supports the following:

-   [`advanced_security`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#advanced_security-1) - (Optional) The advanced security configuration for the repository. See [Advanced Security Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#advanced-security-configuration) below for details. If a repository's visibility is `public`, advanced security is always enabled and cannot be changed, so this setting cannot be supplied.
    
-   [`secret_scanning`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#secret_scanning-1) - (Optional) The secret scanning configuration for the repository. See [Secret Scanning Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#secret-scanning-configuration) below for details.
    
-   [`secret_scanning_push_protection`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#secret_scanning_push_protection-1) - (Optional) The secret scanning push protection configuration for the repository. See [Secret Scanning Push Protection Configuration](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#secret-scanning-push-protection-configuration) below for details.
    

#### Advanced Security Configuration

The `advanced_security` block supports the following:

-   [`status`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#status-1) - (Required) Set to `enabled` to enable advanced security features on the repository. Can be `enabled` or `disabled`.

#### Secret Scanning Configuration

-   [`status`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#status-2) - (Required) Set to `enabled` to enable secret scanning on the repository. Can be `enabled` or `disabled`. If set to `enabled`, the repository's visibility must be `public` or `security_and_analysis[0].advanced_security[0].status` must also be set to `enabled`.

#### Secret Scanning Push Protection Configuration

-   [`status`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#status-3) - (Required) Set to `enabled` to enable secret scanning push protection on the repository. Can be `enabled` or `disabled`. If set to `enabled`, the repository's visibility must be `public` or `security_and_analysis[0].advanced_security[0].status` must also be set to `enabled`.

### [Template Repositories](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#template-repositories)

`template` supports the following arguments:

-   [`owner`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#owner-2): The GitHub organization or user the template repository is owned by.
-   [`repository`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#repository-1): The name of the template repository.
-   [`include_all_branches`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#include_all_branches-1): Whether the new repository should include all the branches from the template repository (defaults to false, which includes only the default branch from the template).

## [Attributes Reference](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#attributes-reference)

The following additional attributes are exported:

-   [`full_name`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#full_name-1) - A string of the form "orgname/reponame".
    
-   [`html_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#html_url-1) - URL to the repository on the web.
    
-   [`ssh_clone_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#ssh_clone_url-1) - URL that can be provided to `git clone` to clone the repository via SSH.
    
-   [`http_clone_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#http_clone_url-1) - URL that can be provided to `git clone` to clone the repository via HTTPS.
    
-   [`git_clone_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#git_clone_url-1) - URL that can be provided to `git clone` to clone the repository anonymously via the git protocol.
    
-   [`svn_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#svn_url-1) - URL that can be provided to `svn checkout` to check out the repository via GitHub's Subversion protocol emulation.
    
-   [`node_id`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#node_id-1) - GraphQL global node id for use with v4 API
    
-   [`repo_id`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#repo_id-1) - GitHub ID for the repository
    
-   [`primary_language`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#primary_language-1) - The primary language used in the repository.
    
-   [`pages`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#pages-2) - The block consisting of the repository's GitHub Pages configuration with the following additional attributes:
    
    -   [`custom_404`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#custom_404-1) - Whether the rendered GitHub Pages site has a custom 404 page.
    -   [`html_url`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#html_url-2) - The absolute URL (including scheme) of the rendered GitHub Pages site e.g. `https://username.github.io`.
    -   [`status`](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#status-4) - The GitHub Pages site's build status e.g. `building` or `built`.

## [Import](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#import)

Repositories can be imported using the `name`, e.g.

```
$ terraform import github_repository.terraform terraform
```
