provider  "proxmox" {
    pm_api_url =  "https://devops1.upr.edu.cu:8006/api2/json" 
    pm_user =  "root@pve" 
    pm_password ="*$upr.cuba*$"
    pm_tls_insecure = true
    pm_parallel = 2
}
