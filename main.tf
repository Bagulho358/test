provider "google" {
  project     = "adroit-hall-374919"
  region      = "us-central1"
  credentials ="adroit-hall-374919-4ffeb40dcae9.json"
}
resource "google_compute_instance" "default" {
  name         = "test1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]
  boot_disk {
    initialize_params { 
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "ethernet1"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }



}
resource "google_compute_instance" "default2" {
  name         = "test2"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "ethernet1"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }



}