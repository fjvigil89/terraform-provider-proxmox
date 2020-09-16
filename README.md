# Título del Proyecto

Configurar Terraform para Proxmox

## Link 🚀

https://github.com/Telmate/terraform-provider-proxmox

https://github.com/Telmate/terraform-provider-proxmox/blob/master/docs/index.md

### Pre-requisitos 📋

1. instalacion de GO en tu equipo
   https://golang.org/doc/install#install

2. instalar terraform en tu equipo
   https://www.terraform.io/downloads.html


## Descargar 🛠️
go get github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provider-proxmox

go get github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provisioner-proxmox

## Instalar 🛠️
go install github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provider-proxmox
go install github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provisioner-proxmox

## Plugins 📦
mkdir -p ~/.terraform.d/plugins/registry.terraform.io/telmate/proxmox/0.13/linux_amd64

cp $GOPATH/bin/terraform-provider-proxmox ~/.terraform.d/plugins/registry.terraform.io/telmate/proxmox/0.13/linux_amd64
cp $GOPATH/bin/terraform-provisioner-proxmox ~/.terraform.d/plugins/registry.terraform.io/telmate/proxmox/0.13/linux_amd64

## Proyecto Terraform 🖇️
 ### main.tf
```
 provider  "proxmox" {
    pm_api_url =  "https://dominio:8006/api2/json" 
    pm_user =  "root@pve" 
    pm_password ="*xxxxxx"
    pm_tls_insecure = true
    pm_parallel = 2
}
```
 ### versions.tf

terraform {
  required_providers {
    proxmox = {
      source  = "registry.terraform.io/telmate/proxmox"
    }
  }
  required_version = ">= 0.13"
}


## Inicializar Terraform 🔩

terraform init
