# GCP-TF-VM

Create a spot-instance on GCP with optional GPU.


## Usage

```hcl
module "gcp-tf-vm" {

  source = "./gcp-tf-base"

  project_id                  = var.project_id
  location                    = var.location
  main_availability_zone      = var.main_availability_zone
  big_robot_email             = var.big_robot_email
  machine_type 		      = "n1-standard-8"
  guest_accelerator 	      = "nvidia-tesla-v100"
  guest_accelerator_count     = 1
  provisioning_model 	      = "SPOT"
  instance_termination_action = "STOP"
  os_image                    = "ubuntu-os-cloud/ubuntu-2204-lts"
  disk_type                   = "pd-ssd"
  disk_size                   = 64
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.static_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_firewall.allow-ssh](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.rules](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_instance.compute_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [random_pet.vm_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_big_robot_email"></a> [big\_robot\_email](#input\_big\_robot\_email) | n/a | `string` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | n/a | `number` | n/a | yes |
| <a name="input_disk_type"></a> [disk\_type](#input\_disk\_type) | n/a | `string` | n/a | yes |
| <a name="input_guest_accelerator"></a> [guest\_accelerator](#input\_guest\_accelerator) | n/a | `string` | n/a | yes |
| <a name="input_guest_accelerator_count"></a> [guest\_accelerator\_count](#input\_guest\_accelerator\_count) | n/a | `number` | n/a | yes |
| <a name="input_instance_termination_action"></a> [instance\_termination\_action](#input\_instance\_termination\_action) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | n/a | yes |
| <a name="input_main_availability_zone"></a> [main\_availability\_zone](#input\_main\_availability\_zone) | n/a | `string` | n/a | yes |
| <a name="input_os_image"></a> [os\_image](#input\_os\_image) | n/a | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_provisioning_model"></a> [provisioning\_model](#input\_provisioning\_model) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->