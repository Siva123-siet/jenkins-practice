variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "AMI ID of joindevops RHEL9"
  
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "EC2 instance type"
}

variable "sg_name" {
  type        = string
  default     = "allow_all"
  description = "Name of the security group"
}

variable "sg_description" {
  type        = string
  default     = "allow all traffic"
  description = "Description of the security group"
}

variable "from_port" {
  type        = number
  default     = 0
  description = "Starting port for security group rules"
}

variable "to_port" {
  type        = number
  default     = 0
  description = "Ending port for security group rules"
}

variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type        = map(string)
  default     = { Name = "allow-all" }
  description = "Tags for the security group"
}

variable "ec2_tags" {
  type        = map(string)
  default     = { Name = "jenkins" }
  description = "Tags for the EC2 instance"
}