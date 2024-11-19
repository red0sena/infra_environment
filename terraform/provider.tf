provider "kubernetes" {
  config_path = "~/.kube/config"  # Minikube kubeconfig 경로
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}