---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "hpegl_vmaas_datastore Data Source - terraform-provider-hpegl"
subcategory: ""
description: |-
  The hpeglvmaasdatastore data source can be used to discover the ID of a hpegl vmaas datastore.
          This can then be used with resources or data sources that require a hpeglvmaasdatastore,
          such as the hpeglvmaasinstance resource.
---

# hpegl_vmaas_datastore (Data Source)

The hpegl_vmaas_datastore data source can be used to discover the ID of a hpegl vmaas datastore.
		This can then be used with resources or data sources that require a hpegl_vmaas_datastore,
		such as the hpegl_vmaas_instance resource.

## Example Usage

```terraform
# (C) Copyright 2021 Hewlett Packard Enterprise Development LP

data "hpegl_vmaas_datastore" "c_3par" {
  cloud_id = data.hpegl_vmaas_cloud.cloud.id
  name     = "Compute-3par-A64G-FC-1TB"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- **cloud_id** (String) Unique ID to identify a cloud.
- **name** (String) Name of the datastore as it appears on GLPC Portal. If there is no datastore with this name, a 'NOT FOUND' error will returned.

### Optional

- **id** (String) The ID of this resource.
- **timeouts** (Block, Optional) (see [below for nested schema](#nestedblock--timeouts))

<a id="nestedblock--timeouts"></a>
### Nested Schema for `timeouts`

Optional:

- **read** (String)

