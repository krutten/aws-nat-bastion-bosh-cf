# README

Set up a best practices Cloud Foundry with just a few commands.

## Setup

1. Change to your projects folder, and clone the repo.

    <pre class="terminal">
    git clone https://github.com/cloudfoundry-community/aws-nat-bastion-bosh-cf.git
    cd aws-nat-bastion-bosh-cf
    </pre>

1. Install [Homebrew](http://brew.sh/).

    <pre class="terminal">
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    </pre>

1. Our project can direct Homebrew to install dependencies (`direnv`,`jq`,`terraform`).

    <pre class="terminal">
    make install-dependencies
    </pre>

1. Add Infrastructure CLI tools, for example AWS CLI tools is available via Homebrew.

    <pre class="terminal">
    homebrew install awscli
    </pre>

### SSH Key

Both BOSH and Cloud Foundry expect to find the key named `sshkeys/bosh.pem`.  Rename your private key to match this and copy it to the `sshkeys` folder.

### Configure Terraform

Terraform creates a `plan`.  Then users `apply` the `plan` and the infrastructure is allocated for the given provider.

Configure the `terraform/aws/terraform.tfvars` file and Terraform will know who you are on AWS and where to create it's resources.

TODO Find location somewhere to state the region names us-west-1 since the EC2 displays (North California)
Cpy the example file to the `terraform.tfvars` file:

```sh
cp terraform/aws/terraform.tfvars.example terraform/aws/terraform.tfvars
```

Follow the instructions in the example file about any changes that need to be made.

### Make It Go

```sh
make all
```

## Additional Commands

### Connect to Bastion Server

Connecting to the Bastion host to control the BOSH Director run BOSH cli or Cloud Foundry cli commands run:

```sh
make ssh
```

When running longer running tasks like `make provision-cf` or `make provision-bosh` it can be useful to see progress by running `tail -f /home/centos/provision.log` on the bastion server.

### Destroy Environment

To tear down the BOSH Director, Bastion server, NAT server and remove the Amazon Virtual Private Cloud definitions defined by Terraform you can run `make destroy`.

```sh
make destroy
```

## Further Reading

More information about this project is available in the [docs](docs) folder.

## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
