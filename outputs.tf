output name {
  value = var.name
}

output tags {
  value = merge(var.tags, {
    Owner = var.owner
    Product = var.product
    ManagementBy = "Terraform"
  })
}

output port {
  value = {
    any = 0
    ssh = 22
    http = 80
    https = 443
  }
}

output protocol {
  value = {
    tcp = "tcp"
  }
}

output cidr_block {
  value = {
    all = "0.0.0.0/0"
  }
}
