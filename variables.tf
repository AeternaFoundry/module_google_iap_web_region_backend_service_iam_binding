variable "iap_web_region_backend_service_iam_bindings" {
  description = <<EOT
Map of iap_web_region_backend_service_iam_bindings, attributes below
Required:
    - members
    - role
    - web_region_backend_service
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members                    = set(string)
    role                       = string
    web_region_backend_service = string
    project                    = optional(string)
    region                     = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

