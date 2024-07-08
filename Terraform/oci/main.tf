data "oci_identity_availability_domain" "ad" {
    compartment_id = var.tenancy_ocid
    ad_number = 1
  
}

data "oci_objectstorage_namespace" "ns" {}

output namespace {
    value = data.oci_objectstorage_namespace.ns.namespace
}

resource "oci_core_volume" "testeTF" {
    availability_domain = data.oci_identity_availability_domain.ad.name
    compartment_id = var.compartment_ubqt_ocid
    display_name = "testeTF"
    size_in_gbs = "30"
}

resource "oci_core_instance" "UbuntuTerraform" {
    availability_domain = data.oci_identity_availability_domain.ad.name
    compartment_id = var.compartment_ubqt_ocid
    display_name = "UbuntuTerraform"
    shape = "VM.Standard.E2.1.Micro"

    create_vnic_details {
      subnet_id = var.subnet_ubqt_ocid
      assign_public_ip = true
    }

    source_details {
      source_type = "image"
      source_id = var.ubuntu_22_04_ocid[0]
    }

    metadata = {
        ssh_authorized_keys = var.ssh_public_key
    }
}