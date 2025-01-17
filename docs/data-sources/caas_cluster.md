---
page_title: "hpegl_caas_cluster Data Source - terraform-provider-hpegl"
subcategory: "caas"
description: |-
  Cluster data source allows reading cluster data
              based on name and space ID. Required inputs are name and space_id
---
# hpegl_caas_cluster (Data Source)

Cluster data source allows reading cluster data 
			based on name and space ID. Required inputs are name and space_id



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String)
- `space_id` (String)

### Read-Only

- `api_endpoint` (String)
- `appliance_name` (String)
- `blueprint_id` (String)
- `cluster_provider` (String)
- `created_date` (String)
- `default_storage_class` (String)
- `default_storage_class_description` (String)
- `health` (String)
- `id` (String) The ID of this resource.
- `kubeconfig` (String)
- `kubernetes_version` (String)
- `last_update_date` (String)
- `machine_sets` (List of Object) (see [below for nested schema](#nestedatt--machine_sets))
- `machine_sets_detail` (List of Object) (see [below for nested schema](#nestedatt--machine_sets_detail))
- `service_endpoints` (List of Object) (see [below for nested schema](#nestedatt--service_endpoints))
- `site_id` (String)
- `state` (String)

<a id="nestedatt--machine_sets"></a>
### Nested Schema for `machine_sets`

Read-Only:

- `count` (Number)
- `machine_blueprint_id` (String)
- `name` (String)
- `os_image` (String)
- `os_version` (String)


<a id="nestedatt--machine_sets_detail"></a>
### Nested Schema for `machine_sets_detail`

Read-Only:

- `compute_type` (String)
- `count` (Number)
- `machine_blueprint_id` (String)
- `machine_provider` (String)
- `machine_roles` (List of String)
- `machines` (List of Object) (see [below for nested schema](#nestedobjatt--machine_sets_detail--machines))
- `name` (String)
- `networks` (List of String)
- `os_image` (String)
- `os_version` (String)
- `proxy` (String)
- `size` (String)
- `size_detail` (List of Object) (see [below for nested schema](#nestedobjatt--machine_sets_detail--size_detail))
- `storage_type` (String)

<a id="nestedobjatt--machine_sets_detail--machines"></a>
### Nested Schema for `machine_sets_detail.machines`

Read-Only:

- `created_date` (String)
- `health` (String)
- `hostname` (String)
- `id` (String)
- `last_update_date` (String)
- `name` (String)
- `state` (String)


<a id="nestedobjatt--machine_sets_detail--size_detail"></a>
### Nested Schema for `machine_sets_detail.size_detail`

Read-Only:

- `cpu` (Number)
- `ephemeral_disk` (Number)
- `memory` (Number)
- `name` (String)
- `persistent_disk` (Number)
- `root_disk` (Number)



<a id="nestedatt--service_endpoints"></a>
### Nested Schema for `service_endpoints`

Read-Only:

- `endpoint` (String)
- `name` (String)
- `namespace` (String)
- `type` (String)


