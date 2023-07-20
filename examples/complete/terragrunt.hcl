locals {
  account = get_env("ACCOUNT_NAME")

  namespace   = "cc"
  project     = "Cambridge"
  environment = get_env("ENVIRONMENT")
  stage       = basename(get_terragrunt_dir()) //returns immediate directory name
  label_order = ["namespace", "environment", "stage", "name", "attributes"]
  domain_name = "${local.stage}.${local.environment}.cmbg.${include.cambridge_cloud.locals.parent_dns_name}"
}


inputs = {

  # Context
  namespace   = local.namespace
  project     = local.project
  environment = local.environment
  stage       = local.stage
  label_order = local.label_order
  domain_name = local.domain_name
  region      = "us-east-1"


}

remote_state {}