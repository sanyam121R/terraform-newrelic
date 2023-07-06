module "scrpting_api" {
  source = "./modules/synthetics-monitor"

  config_data = var.config_data
}
