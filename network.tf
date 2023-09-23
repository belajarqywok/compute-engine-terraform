resource "google_compute_network" "gce_network" {
    name = "network"
    auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "network-allow-http-ssh-rdp-icmp" {
    name    = "network-allow-http-ssh-rdp-icmp"
    network = google_compute_network.gce_network.self_link

    source_ranges = ["0.0.0.0/0"]

    allow {
        protocol = "tcp"
        ports    = ["22", "80", "443", "3389"]
    }

    allow {protocol = "icmp"}
}
