resource "kubernetes_namespace" "infra_environment" {
  metadata {
    name = "infra_environment"
  }
}

resource "helm_release" "infra_environment" {
  name       = "infra_environment"
  chart      = "../infra_environment"  # Helm Chart 경로
  namespace  = kubernetes_namespace.infra_environment.metadata[0].name

  values = [
    file("../infra_environment/values.yaml") # values.yaml 파일을 참조
  ]
}
