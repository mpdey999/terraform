module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.2.3"

  account_id = "PpAShYwORdCYNK9nLAQ4qw"
  delegate_token = "MDJmMzdkNjE5ODY4MzEwZWYzYmQ0Mzc3N2Q2Y2MzNmE="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "harness-delegate-ng"
  manager_endpoint = "https://app.harness.io"
  delegate_image = "us-docker.pkg.dev/gar-prod-setup/harness-public/harness/delegate:26.08.89804"
  replicas = 1
  upgrader_enabled = true
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
