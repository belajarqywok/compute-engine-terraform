module "mynet-us-vm" {
    source              = "./instance"
    instance_name       = "mynet-us-vm"
    instance_zone       = "us-east1-d"
    instance_subnetwork = google_compute_network.gce_network.self_link

    # gce_ssh_user = "kiwog"
    # gce_ssh_pub_key_file = "./my-ssh-key.pub"
}

module "mynet-eu-vm" {
    source              = "./instance"
    instance_name       = "mynet-eu-vm"
    instance_zone       = "europe-west1-d"
    instance_subnetwork = google_compute_network.gce_network.self_link

    # gce_ssh_user = "kiwog"
    # gce_ssh_pub_key_file = "./my-ssh-key.pub"
}
