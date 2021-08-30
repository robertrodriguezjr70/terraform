provider "aws"{
  regioin = "region name here"
}

module "db"{
  source = "./db"
  server_names = ["mariadb","mysql", "mssql"]
}
  
output "private_ips"{
  "PrivateIP"
}

