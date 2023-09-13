resource "google_compute_firewall" "rules" {
  project     = "${var.project_id}"
  name        = "web-ingress-rules"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# allow ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# allow vnc
resource "google_compute_firewall" "allow-vnc" {
  name    = "allow-vnc"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["5900", "5901", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# allow games on whales
resource "google_compute_firewall" "allow-gow" {
  name    = "allow-gow"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["47989", "47990"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# allow wireguard
resource "google_compute_firewall" "allow-wg" {
  name    = "allow-wg"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["51820", "51821", "51823", "51824"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# allow grafaa stack
resource "google_compute_firewall" "allow-monitoring" {
  name    = "allow-monitoring"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["3000", "9090", "9100", "3100", "9096"]
  }

  source_ranges = ["0.0.0.0/0"]
}
