output "rds_hostname" {
 description = "RDS instance hostname"
 value = aws_db_instance.education.address
 sensitive = true
}