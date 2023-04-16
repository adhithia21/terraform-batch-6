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

variable "network" {
  type = string
}

variable "port" {
  type = list
}

variable "target_tags" {
  type = list
}

variable "source_ranges" {
  type = list
}