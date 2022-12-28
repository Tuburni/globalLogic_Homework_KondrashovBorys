terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file("keyforserver.json")

  project = "fine-command-372319"
  region  = "us-west4"
  zone    = "us-west4-b"
}
# Creating Instance
resource "google_compute_instance" "project" {
  name = "project1"
  machine_type = "e2-micro"

  tags = ["http-server", "https-server"]
  
    boot_disk {
    initialize_params {
        image = "debian-10-buster-v20221206"
        size = 15
    }
  }

  metadata_startup_script =  file("bash.sh")

  network_interface {
    network = google_compute_network.vpc_network3.name
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network3" {
  name = "vpc-firewall3"
}

resource "google_compute_firewall" "ssh" {
  name          = "allow-ssh3"
  network       = google_compute_network.vpc_network3.name
  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = "65534"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "http" {
  name          = "allow-http3"
  network       = google_compute_network.vpc_network3.name
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
  direction     = "INGRESS"
  priority      = "1000"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

resource "google_compute_firewall" "https" {
  name          = "allow-https3"
  network       = google_compute_network.vpc_network3.name
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
  direction     = "INGRESS"
  priority      = "1000"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}