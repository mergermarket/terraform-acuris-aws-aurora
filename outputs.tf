// The 'writer' endpoint for the cluster
output "cluster_endpoint" {
  value = aws_rds_cluster.default.endpoint
}

// Comma separated list of all DB instance endpoints running in cluster
output "all_instance_endpoints_list" {
  value = [aws_rds_cluster_instance.cluster_instance_0.endpoint, aws_rds_cluster_instance.cluster_instance_n.*.endpoint]
}

// A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas
output "reader_endpoint" {
  value = aws_rds_cluster.default.reader_endpoint
}

// Cluster ARN - can use when defining centralised backup
output "cluster_arn" {
  value = aws_rds_cluster.default.arn
}

// Cluster ID - useful to any resources requiring cluster's ID, e.g. rds_cluster_role_association
output "cluster_id" {
  value = aws_rds_cluster.default.id
}

