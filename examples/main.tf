module "efs_filesystem" {
  source = "../"

  name          = "tf-module-efs-filesystem"
  mount_targets = [
    { subnet_id = "subnet-0ad8ed9c684456183", security_groups = "sg-00899fec0d406cb92" },
    { subnet_id = "subnet-084946ead8af6b569", security_groups = "sg-00899fec0d406cb92" },
    { subnet_id = "subnet-0bd4e71851c689adf", security_groups = "sg-00899fec0d406cb92" },
  ]
  tags          = {
    environment_stage = "poc"
    environment_name  = "gary-sandbox"
    project = "roche_genentech"
    owner   = "gary"
  }
}
