variable "accesskey" {
    type = "string"  
}
variable "secrectkey" {
    type = "string"  
}
variable "instancecount" {
    default = "2"  
}
provider "aws" {
    access_key = "${var.accesskey}"
    secret_key = "${var.secrectkey}"
    region = "us-east-1"
} 
resource "aws_instance" "ubuntu" {
    count = "${var.instancecount}"
    ami = "ami-0f9cf087c1f27d9b1"
    instance_type = "t2.micro"
    key_name = "chef"
    
    tags = {
        Name = "MSR-test-Instance-${count.index+1}"
    }
}
