module "scrpting_api" {
  source = "./modules/synthetics-monitor"

  config_data = var.config_data
}

module "workload_flows" {
  source = "./modules/workload"

  config_data = var.config_data
}
