provider "aws" {

  region = "us-west-2"

  access_key = "...."
  secret_key = "..."

}


resource "aws_instance" "db"{
    ami = "ami-083ac7c7ecf9bb9b0"
    instance_type = "t2.micro"
    count = 3                      # <-- num of instance created   
    tags {
        Name = "db"
    }
}
