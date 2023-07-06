variable "account_id" {
  type        = number
  description = "Account id of demo account"
}

variable "api_key" {
  type = string
}

variable "region" {
  type = string
}

variable "incident_preference" {
  type = string
}

variable "count_ac" {
  type        = list(any)
  description = "different alert conditions using count.."
}

variable "for_ac" {
  type        = map(any)
  description = "different alert conditions using for_each loop.."
}
