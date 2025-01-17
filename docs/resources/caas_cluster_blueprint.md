---
page_title: "hpegl_caas_cluster_blueprint Resource - terraform-provider-hpegl"
subcategory: "caas"
description: |-
  The cluster blueprint resource facilitates the creation and
              deletion of a CaaS cluster blueprint.  Update is currently not supported. The
              required inputs when creating a cluster blueprint are name, kubernetesversion,
              site-id, clusterprovider, controlplane, workernodes and defaultstorageclass
---
# hpegl_caas_cluster_blueprint (Resource)

The cluster blueprint resource facilitates the creation and
			deletion of a CaaS cluster blueprint.  Update is currently not supported. The
			required inputs when creating a cluster blueprint are name, kubernetes_version,
			site-id, cluster_provider, control_plane, worker_nodes and default_storage_class

## Example Usage

```terraform
# Copyright 2022-2023 Hewlett Packard Enterprise Development LP

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

data "hpegl_caas_machine_blueprint" "mbcontrolplane" {
  name    = "standard-master"
  site_id = data.hpegl_caas_site.blr.id
}

data "hpegl_caas_machine_blueprint" "mbworker" {
  name    = "standard-worker"
  site_id = data.hpegl_caas_site.blr.id
}

data "hpegl_caas_cluster_provider" "clusterprovider" {
  name    = "ecp"
  site_id = data.hpegl_caas_site.blr.id
}

resource "hpegl_caas_cluster_blueprint" "testbp" {
  name                  = "tf-cluster-bp"
  kubernetes_version    = data.hpegl_caas_cluster_provider.clusterprovider.kubernetes_versions[0]
  default_storage_class = ""
  site_id               = data.hpegl_caas_site.blr.id
  cluster_provider      = ""
  control_plane_count   = ""
  worker_nodes {
    name                 = ""
    machine_blueprint_id = data.hpegl_caas_machine_blueprint.mbworker.id
    count                = ""
  }
  worker_nodes {
    name                 = ""
    machine_blueprint_id = data.hpegl_caas_machine_blueprint.mbworker.id
    count                = ""
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `cluster_provider` (String)
- `control_plane_count` (Number)
- `default_storage_class` (String)
- `kubernetes_version` (String)
- `name` (String)
- `site_id` (String)
- `worker_nodes` (Block List, Min: 1) (see [below for nested schema](#nestedblock--worker_nodes))

### Read-Only

- `id` (String) The ID of this resource.

<a id="nestedblock--worker_nodes"></a>
### Nested Schema for `worker_nodes`

Required:

- `count` (Number)
- `machine_blueprint_id` (String)
- `name` (String)


