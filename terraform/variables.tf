variable "project_name" {
    type = string
    default = "expense"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = true
        Component = "backend"
    }
}

variable "zone_name" {
    type = string
    default = "avinexpense.online"
}

variable "app_version" {

}