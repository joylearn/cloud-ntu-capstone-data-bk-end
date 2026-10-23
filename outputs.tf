output "aurora_cluster_endpoint" {
  description = "Writer endpoint for the Aurora MySQL cluster"
  value       = aws_rds_cluster.aurora.endpoint
}

output "aurora_reader_endpoint" {
  description = "Reader endpoint for the Aurora MySQL cluster"
  value       = aws_rds_cluster.aurora.reader_endpoint
}

output "aurora_port" {
  description = "Aurora MySQL port"
  value       = aws_rds_cluster.aurora.port
}

output "aurora_database_name" {
  description = "Initial database name"
  value       = aws_rds_cluster.aurora.database_name
}

output "aurora_cluster_arn" {
  description = "Aurora cluster ARN (used by the Data API)"
  value       = aws_rds_cluster.aurora.arn
}

output "aurora_master_secret_arn" {
  description = "Secrets Manager ARN holding the Aurora master credentials"
  value       = aws_rds_cluster.aurora.master_user_secret[0].secret_arn
}

output "aurora_security_group_id" {
  description = "Security group attached to the Aurora cluster"
  value       = aws_security_group.aurora.id
}
