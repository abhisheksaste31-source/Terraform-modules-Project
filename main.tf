module "vpc" {
  source            = "./modules/vpc"
  cidr_block        = var.cidr_block
  cidr_blocks       = var.cidr_blocks
  availability_zone = var.availability_zone
}

module "ec2" {
  source        = "./modules/ec2-instances"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
}

module "s3" {
  source      = "./modules/s3-bucket"
  bucket_name = var.bucket_name
}





