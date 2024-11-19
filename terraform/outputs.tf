output "namespace_name" {
  value = kubernetes_namespace.infra_environment.metadata[0].name
}

output "helm_release_status" {
  value = helm_release.infra_environment.status
}
