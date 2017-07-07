defmodule CodeCorps.GithubAppInstallationView do
  use CodeCorps.PreloadHelpers, default_preloads: [:organization_github_app_installations, :project, :user]
  use CodeCorps.Web, :view
  use JaSerializer.PhoenixView

  attributes [:github_id, :inserted_at, :installed, :state, :updated_at]

  has_one :project, serializer: CodeCorps.ProjectView
  has_one :user, serializer: CodeCorps.UserView

  has_many :organization_github_app_installations, serializer: CodeCorps.OrganizationGithubAppInstallationView, identifiers: :always
end
