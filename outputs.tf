output "aws_efs_file_system_id" {
  value = "${aws_efs_file_system.efs_fs.id}"
}

output "aws_efs_file_system_dns_name" {
  value = "${aws_efs_file_system.efs_fs.dns_name}"
}
