resource "aws_instance" "my_vm" {
 ami           = var.ami //Ubuntu AMI
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}
resource "aws_s3_bucket" "jenkinss3" {
  bucket = "my-jenkinsbuck"
versioning = true
  tags = {
    Name        = "jenkinss3"
