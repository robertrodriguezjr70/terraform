provider "google" {
  credentials = file("mygcp-creds.json")
  project = "myvms-324222"
  region  = "us-west2"
  zone    = "us-west2-a"
}

resource "google_compute_instance" "roberts_vm" {
  name         = "virtual-machine-from-terraform"
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
      image = "centos-7-v20210817"
    }
  }

network_interface {
  network = "default"
  access_config{}      // enable public IP
}

}

