provider "google" {
  credentials = file("mygcp-creds.json")
  project = "MyVMs"
  region  = "us-west2"
  zone    = "us-west2-a"
}

resource "google_compute_instance" "roberts_vm" {
  name         = "virtual-machine-from-terraform"
  machine_type = "e2-micro"
  zone         = "us-west2-a"
  boot_disk{
    initialize_parms{
      image = "debain-cloud/demain-9"
    }
  }

network_interface{
  network = "default"
  access_config{}      // enable public IP
}
