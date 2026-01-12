variable "ami" {
  default = "ami-045a533d19c34eeb6"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_security_group_ids" {
  default = [ "sg-09663d91a4fca31c9" ]
}

variable "zone_id" {
  default = "Z057881017RC0RRKVUX8E"
}

variable "components" {
  default = {
    frontend = {
      ports         = { ssh = 22, nginx = 80 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
    mongodb = {
      ports         = { ssh = 22, mongodb = 27017 }
      instance_type = "t3.small"
    }
    mysql = {
      ports         = { ssh = 22, mysql = 3306 }
      instance_type = "t3.small"
    }
    rabbitmq = {
      ports         = { ssh = 22, rabbitmq = 5672 }
      instance_type = "t3.small"
    }
    redis = {
      ports         = { ssh = 22, redis = 6379 }
      instance_type = "t3.small"
    }
    catalogue = {
      ports         = { ssh = 22, app = 8080 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
    cart = {
      ports         = { ssh = 22, app = 8080 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
    user = {
      ports         = { ssh = 22, app = 8080 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
    shipping = {
      ports         = { ssh = 22, app = 8080 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
    payment = {
      ports         = { ssh = 22, app = 8080 }
      instance_type = "t3.small"
      root_volume_size = 25
    }
  }
}

