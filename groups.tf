# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {
  user_project_override = true
  billing_project       = "cs-host-3628f9fbdc964c8a8ed521"
}

# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-team-1-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "team-1-prod-service@tranquilitybase-demo.io"
  display_name = "team-1-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-team-1-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "team-1-nonprod-service@tranquilitybase-demo.io"
  display_name = "team-1-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-team-2-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "team-2-prod-service@tranquilitybase-demo.io"
  display_name = "team-2-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-team-2-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "team-2-nonprod-service@tranquilitybase-demo.io"
  display_name = "team-2-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
