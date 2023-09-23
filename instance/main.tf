resource "google_compute_instance" "vm_instance" {
    name = "${var.instance_name}"
    zone = "${var.instance_zone}"
    machine_type = "${var.instance_type}"

    boot_disk {
        initialize_params {
            image = "${var.instance_image}"
        }
    }

    network_interface {
        subnetwork = "${var.instance_subnetwork}"
        access_config {}
    }

    # scheduling {
    #     preemptible = true
    #     automatic_restart = false
    # }

    metadata = {
        # ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
        startup-script = file("startup_script.sh")
    }
}
