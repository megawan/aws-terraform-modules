variable "application_name" {
  description = "Name to be used on application"
  type        = string  
}

variable "description" {
  description = "Description of application"
  type        = string   
}

variable "environment_name" {
  description = "Name to be used on environment"
  type        = string   
}

variable "solution_stack_name" {
  description = "to be used on stack name"
  type        = string   
}

variable "tier" {
  description = ""
  type        = string   
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "settings" {
  type = list(map(string))
}
