module "cs-svc-team-1-prod-svc-sssy" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "team-1-prod-service"
  project_id      = "team-1-prod-svc-sssy-1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["Team 1"].ids["Production"]

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["europe-west2/subnet-prod-1"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-team-1-prod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-team-1-nonprod-svc-sssy" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "team-1-nonprod-service"
  project_id      = "team-1-nonprod-svc-sssy-1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["Team 1"].ids["Non-Production"]

  shared_vpc = module.cs-vpc-nonprod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-nonprod-shared.subnets["europe-west2/subnet-non-prod-1"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-team-1-nonprod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-team-2-prod-svc-sssy" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "team-2-prod-service"
  project_id      = "team-2-prod-svc-sssy-1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["Team 2"].ids["Production"]

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["europe-west1/subnet-prod-2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-team-2-prod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-team-2-nonprod-svc-sssy" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "team-2-nonprod-service"
  project_id      = "team-2-nonprod-svc-sssy-1"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["Team 2"].ids["Non-Production"]

  shared_vpc = module.cs-vpc-nonprod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-nonprod-shared.subnets["europe-west1/subnet-non-prod-2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-team-2-nonprod-service.name
  group_role = "roles/viewer"
}
