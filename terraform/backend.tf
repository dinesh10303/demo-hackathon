terraform {
  backend "gcs" {
    bucket = "demo-hackathon-bucket"  # Replace with your bucket name
    prefix = "terraform/state"            # Path to store the state file inside the bucket
  }
}
