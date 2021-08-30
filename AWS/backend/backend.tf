# this file holds the credentuals for the state file living in a bucket in the cloud.
terraform{
  backend "s3"{
    key = "terraform/tfstate.tfstate"  #<-- folder path where state file is stored on bucket
    bucket = "bucket name here"
    region = "retion here"
    access_key = ""
    secret_key = ""
  }

  
  }



}
