---
page_title: "hpegl_vmaas_load_balancer_profile Data Source - terraform-provider-hpegl"
subcategory: "vmaas"
description: |-
  The hpeglvmaasloadbalancerprofile data source can be used to discover the ID of a hpegl vmaas network load balancer.
          This can then be used with resources or data sources
---
# hpegl_vmaas_load_balancer_profile (Data Source)

The hpegl_vmaas_load_balancer_profile data source can be used to discover the ID of a hpegl vmaas network load balancer.
		This can then be used with resources or data sources



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `lb_id` (Number) Parent lb ID, lb_id can be obtained by using LB datasource/resource.
- `name` (String) Name of the LoadBalancer Profile as it appears on HPE GreenLake for private cloud dashboard. If there is no LoadBalancer Profile with this name, a 'NOT FOUND' error will returned.

### Read-Only

- `id` (String) The ID of this resource.

