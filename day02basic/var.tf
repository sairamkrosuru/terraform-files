variable "ami_id" {
    type = string
    default = "ami-013e83f579886baeb"
    description = "my ami id"

}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "firstkeypair"
}