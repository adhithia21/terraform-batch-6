variable "project" {
  type = string
  description = "variable untuk project GCP"
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "name" {
  type = string
}

variable "subnet_name" {
  type = list
}

variable "ip_cidr_range" {
  type = list
}

variable "subnet_region" {
  type = list
}