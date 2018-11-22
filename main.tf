# todo - add in encrypted efs fs parameters and resource
#  https://www.terraform.io/docs/providers/aws/r/efs_file_system.html
resource "aws_efs_file_system" "efs_fs" {
  creation_token = "${var.name}"
  tags           = "${merge(var.tags, map("Name", var.name))}"
}


resource "aws_efs_mount_target" "efs_mount_target" {
  count = "${length(var.mount_targets)}"

  file_system_id  = "${aws_efs_file_system.efs_fs.id}"
  subnet_id       = "${lookup(var.mount_targets[count.index], "subnet_id")}"
  security_groups = ["${split(",",lookup(var.mount_targets[count.index], "security_groups"))}"]
}
