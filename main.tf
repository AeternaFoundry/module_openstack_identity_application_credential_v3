resource "openstack_identity_application_credential_v3" "identity_application_credential_v3s" {
  for_each = var.identity_application_credential_v3s

  name         = each.value.name
  description  = each.value.description
  expires_at   = each.value.expires_at
  region       = each.value.region
  roles        = each.value.roles
  secret       = each.value.secret
  unrestricted = each.value.unrestricted

  dynamic "access_rules" {
    for_each = each.value.access_rules != null ? each.value.access_rules : []
    content {
      method  = access_rules.value.method
      path    = access_rules.value.path
      service = access_rules.value.service
    }
  }
}

