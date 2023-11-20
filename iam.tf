module "cs-folders-iam-0-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 1"].ids["Non-Production"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-0-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 1"].ids["Non-Production"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-1-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 2"].ids["Non-Production"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-1-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 2"].ids["Non-Production"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-2-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 3"].ids["Non-Production"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-2-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 3"].ids["Non-Production"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-3-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 1"].ids["Development"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-3-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 1"].ids["Development"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-4-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 2"].ids["Development"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-4-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 2"].ids["Development"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-5-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 3"].ids["Development"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-folders-iam-5-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs["Team 3"].ids["Development"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:cffd1-gcp-developers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-projects-iam-6-loggingviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-logging-fd930-ie900.project_id,
  ]
  bindings = {
    "roles/logging.viewer" = [
      "group:cffd1--gcp-logging-viewers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-projects-iam-6-loggingprivateLogViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-logging-fd930-ie900.project_id,
  ]
  bindings = {
    "roles/logging.privateLogViewer" = [
      "group:cffd1--gcp-logging-viewers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-projects-iam-6-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-logging-fd930-ie900.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:cffd1--gcp-logging-viewers@tranquilitybase-demo.io",
    ]
  }
}

module "cs-projects-iam-7-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-logging-fd930-ie900.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:cffd1-gcp-security-admins@tranquilitybase-demo.io",
    ]
  }
}

module "cs-service-projects-iam-8-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-team-1-prod-svc-sssy.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-team-1-prod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-9-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-team-1-nonprod-svc-sssy.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-team-1-nonprod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-10-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-team-2-prod-svc-sssy.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-team-2-prod-service.id}",
    ]
  }
}

module "cs-service-projects-iam-11-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-team-2-nonprod-svc-sssy.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-team-2-nonprod-service.id}",
    ]
  }
}
