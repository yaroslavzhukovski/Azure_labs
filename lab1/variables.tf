variable "application_name" {
  type = string
  validation {
    condition     = length(var.application_name) <= 12
    error_message = "Should be more or equal 12 symbols"
  }
}
variable "environment_name" {
  type = string
}
variable "api_key" {
  type      = string
  sensitive = true
}
variable "instance_count" {
  type = number
}
variable "region" {
  type = list(string)

}
variable "region_instance_count" {
  type = map(string)
}
variable "region_set" {
  type = set(string)
}
