#this will display the ami id of the instance  
output "ami_id" {
  value = data.aws_ami.ami_id.id
}

#this will display the default vpc id 
output name {
  value       = data.aws_vpc.default.id 
}