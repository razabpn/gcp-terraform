
#this is creating pubsub topic in GCP via Terraform
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.51.0"
    }
  }
}
provider "google" {
  credentials = file("login.json")
}
resource "google_pubsub_topic" "my_topic" {
  name = "my_topic"
}

resource "google_pubsub_subscription" "my_subscription" {
  name  = "my_sub"
  topic = google_pubsub_topic.my_topic.name
}
