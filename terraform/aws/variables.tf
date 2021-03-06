variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}
variable "aws_region" {
  default = "us-east-1"
}

# variable "bosh" {
#   type = "map"
#   default =  {
#     version = "256.2"
#     sha1 = "ff2f4e16e02f66b31c595196052a809100cfd5a8"
#     aws_cpi_version = "53"
#     aws_cpi_sha1 = "3a5988bd2b6e951995fe030c75b07c5b922e2d59"
#     type = "ruby"
#     director_vm_size = "m3.medium"
#     init_version = "0.0.92"
#   }
# }
variable "bosh" {
  type = "map"
  default =  {
    version = "261.4"
    sha1 = "4da9cedbcc8fbf11378ef439fb89de08300ad091"
    aws_cpi_version = "65"
    aws_cpi_sha1 = "26b3a5c43e6f82594a373309a495660d6db26254"
    type = "ruby"
    director_vm_size = "m3.medium"
    init_version = "0.0.92"
  }
}

variable "aws_centos_ami" {
  type = "map"
  default = {
  us-east-1 = "ami-6d1c2007"
  us-west-1 = "ami-af4333cf"
  us-west-2 = "ami-d2c924b2"
  ap-northeast-1 = "ami-eec1c380"
  ap-northeast-2 = "ami-c74789a9"
  ap-southeast-1 = "ami-f068a193"
  ap-southeast-2 = "ami-fedafc9d"
  eu-west-1 = "ami-7abd0209"
  sa-east-1 = "ami-26b93b4a"
  }
}

variable "centos_stemcell_version" {
  default = "3232.1"
}

variable "ubuntu_stemcell_version" {
  default = "3421"
}

# SHA1 can be found with curl stemcell-sha1s.starkandwayne.com/<stemcell>/<version>

variable "centos_stemcell_sha1" {
  default = "226d52ab60dbd62f132795213e32ac67b4a8727e"
}

variable "ubuntu_stemcell_sha1" {
  default = "3004f7bd7357e0853ef6056a7951ee6991f644c7"
}

variable "network" {
	default = "10.10"
}

variable "debug" {
  default = "false"
}


variable "install_docker_services" {
  default = "false"
}

variable "cf" {
  type = "map"
  default =  {
    admin_pass = "adminc1oudc0w"
    domain = "SSLIP"
    run_subdomain = "run"
    apps_subdomain = "apps"
    release_version = "235"
    etcd_version = "35"
    haproxy_version = "6"
    haproxy_ssl_pem = ""
    size = "tiny"
    private_domains = ""
    nats_user = "nats"
    nats_pass = "natspass"
    pass = "c1oudc0w"
  }
}

# If you get an receive an error like
# "* aws_subnet.lb: Error creating subnet: InvalidParameterValue: Value (us-east-1a) for parameter availabilityZone is invalid.
#    Subnets can currently only be created in the following availability zones: us-east-1c, us-east-1d, us-east-1b, us-east-1e."
# You may need to change one of the blocks below

variable "cf1_az" {
  type = "map"
  default = {
    us-east-1 = "us-east-1a"
    us-west-1 = "us-west-1a"
    us-west-2 = "us-west-2a"
    ap-northeast-1 = "ap-northeast-1a"
    ap-northeast-2 = "ap-northeast-2a"
    ap-southeast-1 = "ap-southeast-1a"
    ap-southeast-2 = "ap-southeast-2a"
    eu-west-1 = "eu-west-1a"
    sa-east-1 = "sa-east-1a"
  }
}

variable "cf2_az" {
  type = "map"
  default = {
    us-east-1 = "us-east-1b"
    us-west-1 = "us-west-1b"
    us-west-2 = "us-west-2b"
    ap-northeast-1 = "ap-northeast-1b"
    ap-northeast-2 = "ap-northeast-2b"
    ap-southeast-1 = "ap-southeast-1b"
    ap-southeast-2 = "ap-southeast-2b"
    eu-west-1 = "eu-west-1b"
    sa-east-1 = "sa-east-1b"
  }
}

variable "deployment_size" {
  default = "small"
}

variable backbone_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable health_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z1_count {
  type = "map"
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "3"
    }
}

variable backbone_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable health_z2_count {
  type = "map"
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z2_count {
  type = "map"
  default = {
      small  = "0"
      med    = "0"
      med-ha = "1"
      big-ha = "3"
  }
}

variable additional_cf_sg_allow_1 { default = "" }
variable additional_cf_sg_allow_2 { default = "" }
variable additional_cf_sg_allow_3 { default = "" }
variable additional_cf_sg_allow_4 { default = "" }
variable additional_cf_sg_allow_5 { default = "" }

variable "backbone_resource_pool"        { default = "large" }
variable "data_resource_pool"            { default = "large" }
variable "public_haproxy_resource_pool"  { default = "small" }
variable "private_haproxy_resource_pool" { default = "small" }
variable "api_resource_pool"             { default = "medium" }
variable "services_resource_pool"        { default = "medium" }
variable "health_resource_pool"          { default = "medium" }
variable "runner_resource_pool"          { default = "runner" }
