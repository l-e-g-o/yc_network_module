### --- below vars needs for local.required_tags creation ---
project_name = "main"
environment  = "prod"
### --- end of vars for local.required_tags creation ---
resource_tags = {
  author = "your_mail@your_domain.com"
}

### default create_folder = false
# create_folder = true
create_vpc = true
# vpc_id     = ""
### subnet variables
networks = {
  private = {
    base_cidr_block = "10.10.0.0/20"
  }
  public = {
    base_cidr_block = "10.20.0.0/20"
  }
}
subnets = {
  ru-central1-a = {
    number = 1
  }
  ru-central1-b = {
    number = 2
  }
  ru-central1-c = {
    number = 3
  }
}





