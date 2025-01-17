# Copyright 2020-2023 Hewlett Packard Enterprise Development LP

terraform {
  required_providers {
    hpegl = {
      source  = "HPE/hpegl"
      version = ">= 0.1.0"
    }
  }
}

provider "hpegl" {
  caas {
  }
}

variable "HPEGL_SPACE" {
  type = string
}

data "hpegl_caas_site" "blr" {
  name     = "BLR"
  space_id = var.HPEGL_SPACE
}

data "hpegl_caas_cluster_blueprint" "bp" {
  name    = "demo"
  site_id = data.hpegl_caas_site.blr.id
}

data "hpegl_caas_machine_blueprint" "mbworker" {
  name    = "standard-worker"
  site_id = data.hpegl_caas_site.blr.id
}

resource "hpegl_caas_cluster" "test" {
  name               = "tf-test"
  blueprint_id       = data.hpegl_caas_cluster_blueprint.bp.id
  site_id            = data.hpegl_caas_site.blr.id
  space_id           = var.HPEGL_SPACE
  kubernetes_version = ""
  worker_nodes {
    name                 = "worker"
    machine_blueprint_id = data.hpegl_caas_machine_blueprint.mbworker.id
    count                = "1"
    osImage              = "sles-custom"
    osVersion            = "15.3"
  }
}